/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utilidades;

import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author ManuelAlfonso
 */
public class JavaMail {

    Properties props = new Properties();

    public Session conectar() {
        // Nombre del host de correo, es smtp.gmail.com
        props.setProperty("mail.smtp.host", "smtp.gmail.com");

        // TLS si está disponible
        props.setProperty("mail.smtp.starttls.enable", "true");

        // Puerto de gmail para envio de correos
        props.setProperty("mail.smtp.port", "587");

        // Nombre del usuario
        props.setProperty("mail.smtp.user", "lfpl47@gmail.com");

        // Si requiere o no usuario y password para conectarse.
        props.setProperty("mail.smtp.auth", "true");

        Session session = Session.getDefaultInstance(props);

        return session;
    }

    public void enviar(Session session,
            String destinatario,
            String asunto,
            String texto) {
        try {

            session.setDebug(true);

            MimeMessage message = new MimeMessage(session);

            // Quien envia el correo
            message.setFrom(new InternetAddress("Admin"));

            // A quien va dirigido
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(destinatario));

            // Asunto del mail
            message.setSubject(asunto);

            // Contenido en String codificado en UTF-8 y en formato HTML 
            message.setText(texto, "UTF-8", "html");

            Transport t = session.getTransport("smtp");

            t.connect("usuario sin @", "pass");

            t.sendMessage(message, message.getAllRecipients());

            t.close();

        } catch (MessagingException ex) {
            Logger.getLogger(utilidades.JavaMail.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static void enviarMail(
            String correo,
            String asunto,
            String cuerpo) {
        JavaMail conexion = new JavaMail();
        conexion.enviar(conexion.conectar(), correo, asunto, cuerpo);
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dtos;

/**
 *
 * @author Darkr232
 */
public class VentaDTO {
      private String Producto;
      private int Cantidad;
      private String TipodeCortina;
      private String Tela;
      private String Color;
      private String EstadodeVenta;

    /**
     * @return the Producto
     */
    public String getProducto() {
        return Producto;
    }

    /**
     * @param Producto the Producto to set
     */
    public void setProducto(String Producto) {
        this.Producto = Producto;
    }

    /**
     * @return the Cantidad
     */
    public int getCantidad() {
        return Cantidad;
    }

    /**
     * @param Cantidad the Cantidad to set
     */
    public void setCantidad(int Cantidad) {
        this.Cantidad = Cantidad;
    }

    /**
     * @return the TipodeCortina
     */
    public String getTipodeCortina() {
        return TipodeCortina;
    }

    /**
     * @param TipodeCortina the TipodeCortina to set
     */
    public void setTipodeCortina(String TipodeCortina) {
        this.TipodeCortina = TipodeCortina;
    }

    /**
     * @return the Tela
     */
    public String getTela() {
        return Tela;
    }

    /**
     * @param Tela the Tela to set
     */
    public void setTela(String Tela) {
        this.Tela = Tela;
    }

    /**
     * @return the Color
     */
    public String getColor() {
        return Color;
    }

    /**
     * @param Color the Color to set
     */
    public void setColor(String Color) {
        this.Color = Color;
    }

    /**
     * @return the EstadodeVenta
     */
    public String getEstadodeVenta() {
        return EstadodeVenta;
    }

    /**
     * @param EstadodeVenta the EstadodeVenta to set
     */
    public void setEstadodeVenta(String EstadodeVenta) {
        this.EstadodeVenta = EstadodeVenta;
    }
    
    
}

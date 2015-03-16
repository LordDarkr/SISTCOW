/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.daos;

/**
 *
 * @author House EP
 */
public class EstadoCotizacionDAO {
    
    
    private int IdCotizacion;
    private int IdEstado;
    private String FechaEstado;

    /**
     * @return the IdCotizacion
     */
    public int getIdCotizacion() {
        return IdCotizacion;
    }

    /**
     * @param IdCotizacion the IdCotizacion to set
     */
    public void setIdCotizacion(int IdCotizacion) {
        this.IdCotizacion = IdCotizacion;
    }

    /**
     * @return the IdEstado
     */
    public int getIdEstado() {
        return IdEstado;
    }

    /**
     * @param IdEstado the IdEstado to set
     */
    public void setIdEstado(int IdEstado) {
        this.IdEstado = IdEstado;
    }

    /**
     * @return the FechaEstado
     */
    public String getFechaEstado() {
        return FechaEstado;
    }

    /**
     * @param FechaEstado the FechaEstado to set
     */
    public void setFechaEstado(String FechaEstado) {
        this.FechaEstado = FechaEstado;
    }

    
}

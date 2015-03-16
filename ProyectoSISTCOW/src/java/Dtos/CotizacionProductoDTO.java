/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dtos;

/**
 *
 * @author House EP
 */
public class CotizacionProductoDTO {
    
    private int idCotizacion;
    private int idProducto;
    private String fechaNovedad;
    private int Cantidad;

    /**
     * @return the idCotizacion
     */
    public int getIdCotizacion() {
        return idCotizacion;
    }

    /**
     * @param idCotizacion the idCotizacion to set
     */
    public void setIdCotizacion(int idCotizacion) {
        this.idCotizacion = idCotizacion;
    }

    /**
     * @return the idProducto
     */
    public int getIdProducto() {
        return idProducto;
    }

    /**
     * @param idProducto the idProducto to set
     */
    public void setIdProducto(int idProducto) {
        this.idProducto = idProducto;
    }

    /**
     * @return the fechaNovedad
     */
    public String getFechaNovedad() {
        return fechaNovedad;
    }

    /**
     * @param fechaNovedad the fechaNovedad to set
     */
    public void setFechaNovedad(String fechaNovedad) {
        this.fechaNovedad = fechaNovedad;
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
}

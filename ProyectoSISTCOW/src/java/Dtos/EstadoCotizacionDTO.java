
package Dtos;

/**
 *
 * @author House EP
 */
public class EstadoCotizacionDTO {
    
    private int idCotizacion;
    private int idEstado;
    private String faechaEstado;

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
     * @return the idEstado
     */
    public int getIdEstado() {
        return idEstado;
    }

    /**
     * @param idEstado the idEstado to set
     */
    public void setIdEstado(int idEstado) {
        this.idEstado = idEstado;
    }

    /**
     * @return the faechaEstado
     */
    public String getFaechaEstado() {
        return faechaEstado;
    }

    /**
     * @param faechaEstado the faechaEstado to set
     */
    public void setFaechaEstado(String faechaEstado) {
        this.faechaEstado = faechaEstado;
    }
    
    
}

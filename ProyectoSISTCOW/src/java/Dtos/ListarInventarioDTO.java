
package Dtos;

/**
 *
 * @author House EP
 */
public class ListarInventarioDTO {
    
    private int IdProducto;
    private String NombreProducto;
    private int Cantidad;
    private String TipoCortina;
    private String TipoTela;
    private String Color;
    private String FechaIngreso;

    /**
     * @return the IdProducto
     */
    public int getIdProducto() {
        return IdProducto;
    }

    /**
     * @param IdProducto the IdProducto to set
     */
    public void setIdProducto(int IdProducto) {
        this.IdProducto = IdProducto;
    }

    /**
     * @return the NombreProducto
     */
    public String getNombreProducto() {
        return NombreProducto;
    }

    /**
     * @param NombreProducto the NombreProducto to set
     */
    public void setNombreProducto(String NombreProducto) {
        this.NombreProducto = NombreProducto;
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
     * @return the TipoCortina
     */
    public String getTipoCortina() {
        return TipoCortina;
    }

    /**
     * @param TipoCortina the TipoCortina to set
     */
    public void setTipoCortina(String TipoCortina) {
        this.TipoCortina = TipoCortina;
    }

    /**
     * @return the TipoTela
     */
    public String getTipoTela() {
        return TipoTela;
    }

    /**
     * @param TipoTela the TipoTela to set
     */
    public void setTipoTela(String TipoTela) {
        this.TipoTela = TipoTela;
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
     * @return the FechaIngreso
     */
    public String getFechaIngreso() {
        return FechaIngreso;
    }

    /**
     * @param FechaIngreso the FechaIngreso to set
     */
    public void setFechaIngreso(String FechaIngreso) {
        this.FechaIngreso = FechaIngreso;
    }
    
}

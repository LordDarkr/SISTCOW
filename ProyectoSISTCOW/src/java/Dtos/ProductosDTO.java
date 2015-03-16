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
public class ProductosDTO {
    
    private int IdProducto;
    private String NombreProducto;
    private String  TipoCortina;
    private String TipoTela;
    private String Color;
    private int ValorUnitario;

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
     * @return the ValorUnitario
     */
    public int getValorUnitario() {
        return ValorUnitario;
    }

    /**
     * @param ValorUnitario the ValorUnitario to set
     */
    public void setValorUnitario(int ValorUnitario) {
        this.ValorUnitario = ValorUnitario;
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
    
}

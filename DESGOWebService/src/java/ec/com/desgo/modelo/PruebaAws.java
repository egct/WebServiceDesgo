/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ec.com.desgo.modelo;

/**
 *
 * @author egct
 */
public class PruebaAws {
    Integer idPrueba;
    Integer hora;
    String nombre;


    public PruebaAws() {
    }
    public PruebaAws(Integer idPrueba, Integer hora, String nombre) {
        this.idPrueba = idPrueba;
        this.hora = hora;
        this.nombre = nombre;
    }
 
    
    public Integer getIdPrueba() {
        return idPrueba;
    }

    public void setIdPrueba(Integer idPrueba) {
        this.idPrueba = idPrueba;
    }

    public Integer getHora() {
        return hora;
    }

    public void setHora(Integer hora) {
        this.hora = hora;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
}

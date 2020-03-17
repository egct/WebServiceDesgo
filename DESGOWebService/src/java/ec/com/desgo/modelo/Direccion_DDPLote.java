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
public class Direccion_DDPLote {
    Integer ID_DLOTE;
    String CALLEP_DLOTE;
    String NO_DLOTE;
    String INTERSECCION_DLOTE;

    public Direccion_DDPLote() {
    }

    public Direccion_DDPLote(Integer ID_DLOTE, String CALLEP_DLOTE, String NO_DLOTE, String INTERSECCION_DLOTE) {
        this.ID_DLOTE = ID_DLOTE;
        this.CALLEP_DLOTE = CALLEP_DLOTE;
        this.NO_DLOTE = NO_DLOTE;
        this.INTERSECCION_DLOTE = INTERSECCION_DLOTE;
    }

    public Integer getID_DLOTE() {
        return ID_DLOTE;
    }

    public void setID_DLOTE(Integer ID_DLOTE) {
        this.ID_DLOTE = ID_DLOTE;
    }

    public String getCALLEP_DLOTE() {
        return CALLEP_DLOTE;
    }

    public void setCALLEP_DLOTE(String CALLEP_DLOTE) {
        this.CALLEP_DLOTE = CALLEP_DLOTE;
    }

    public String getNO_DLOTE() {
        return NO_DLOTE;
    }

    public void setNO_DLOTE(String NO_DLOTE) {
        this.NO_DLOTE = NO_DLOTE;
    }

    public String getINTERSECCION_DLOTE() {
        return INTERSECCION_DLOTE;
    }

    public void setINTERSECCION_DLOTE(String INTERSECCION_DLOTE) {
        this.INTERSECCION_DLOTE = INTERSECCION_DLOTE;
    }
    
    
}

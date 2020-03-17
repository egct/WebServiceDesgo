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
public class DDescriptivosPredio_IULote {
    Integer ID_DDPLOTE;
    Integer ID_DLOTE;
    String NOMBRESECTOR_DDPLOTE;
    String NOMBREEDIFICIO_DDPLOTE;
    String USOPREDIO_DDPLOTE;
    String TIPOPREDIO_DDPLOTE;
    String REGIMENTENECIA_DDPLOTE;

    Direccion_DDPLote dDPLote;
    public DDescriptivosPredio_IULote() {
    }

    
    public DDescriptivosPredio_IULote(Integer ID_DDPLOTE, Integer ID_DLOTE, String NOMBRESECTOR_DDPLOTE, String NOMBREEDIFICIO_DDPLOTE, String USOPREDIO_DDPLOTE, String TIPOPREDIO_DDPLOTE, String REGIMENTENECIA_DDPLOTE,Direccion_DDPLote dDPLote) {
        this.ID_DDPLOTE = ID_DDPLOTE;
        this.ID_DLOTE = ID_DLOTE;
        this.NOMBRESECTOR_DDPLOTE = NOMBRESECTOR_DDPLOTE;
        this.NOMBREEDIFICIO_DDPLOTE = NOMBREEDIFICIO_DDPLOTE;
        this.USOPREDIO_DDPLOTE = USOPREDIO_DDPLOTE;
        this.TIPOPREDIO_DDPLOTE = TIPOPREDIO_DDPLOTE;
        this.REGIMENTENECIA_DDPLOTE = REGIMENTENECIA_DDPLOTE;
        this.dDPLote=dDPLote;
    }

    public Integer getID_DDPLOTE() {
        return ID_DDPLOTE;
    }

    public void setID_DDPLOTE(Integer ID_DDPLOTE) {
        this.ID_DDPLOTE = ID_DDPLOTE;
    }

    public Integer getID_DLOTE() {
        return ID_DLOTE;
    }

    public void setID_DLOTE(Integer ID_DLOTE) {
        this.ID_DLOTE = ID_DLOTE;
    }

    public String getNOMBRESECTOR_DDPLOTE() {
        return NOMBRESECTOR_DDPLOTE;
    }

    public void setNOMBRESECTOR_DDPLOTE(String NOMBRESECTOR_DDPLOTE) {
        this.NOMBRESECTOR_DDPLOTE = NOMBRESECTOR_DDPLOTE;
    }

    public String getNOMBREEDIFICIO_DDPLOTE() {
        return NOMBREEDIFICIO_DDPLOTE;
    }

    public void setNOMBREEDIFICIO_DDPLOTE(String NOMBREEDIFICIO_DDPLOTE) {
        this.NOMBREEDIFICIO_DDPLOTE = NOMBREEDIFICIO_DDPLOTE;
    }

    public String getUSOPREDIO_DDPLOTE() {
        return USOPREDIO_DDPLOTE;
    }

    public void setUSOPREDIO_DDPLOTE(String USOPREDIO_DDPLOTE) {
        this.USOPREDIO_DDPLOTE = USOPREDIO_DDPLOTE;
    }

    public String getTIPOPREDIO_DDPLOTE() {
        return TIPOPREDIO_DDPLOTE;
    }

    public void setTIPOPREDIO_DDPLOTE(String TIPOPREDIO_DDPLOTE) {
        this.TIPOPREDIO_DDPLOTE = TIPOPREDIO_DDPLOTE;
    }

    public String getREGIMENTENECIA_DDPLOTE() {
        return REGIMENTENECIA_DDPLOTE;
    }

    public void setREGIMENTENECIA_DDPLOTE(String REGIMENTENECIA_DDPLOTE) {
        this.REGIMENTENECIA_DDPLOTE = REGIMENTENECIA_DDPLOTE;
    }

    public Direccion_DDPLote getdDPLote() {
        return dDPLote;
    }

    public void setdDPLote(Direccion_DDPLote dDPLote) {
        this.dDPLote = dDPLote;
    }

    
}

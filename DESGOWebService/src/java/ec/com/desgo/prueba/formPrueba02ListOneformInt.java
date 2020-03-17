/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ec.com.desgo.prueba;

import ec.com.desgo.modelo.*;
import ec.com.desgo.modelo.FormularioDAO;
import ec.com.desgo.servicios.WSGestionFormulario;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 *
 * @author egct
 */
public class formPrueba02ListOneformInt {
     public static void main(String[] args) { 
        FormularioIds formids=new FormularioIds();
        Formulario form=new Formulario();        
        List<FormularioIds>forms=new ArrayList();
        WSGestionFormulario wSGestionFormulario=new WSGestionFormulario();
        
        User us=new User();
        us.setID_USUARIO(1);

        forms =wSGestionFormulario.listarFormularios(us);
        System.out.println("list>");
        for (int i = 0; i <= forms.size() - 1; i++) {
            System.out.println(forms.get(i).getIdFormulario()+":"+forms.get(i).getCodigo_F());
            form =wSGestionFormulario.listarFormularioInt(forms.get(i).getIdFormulario(),forms.get(i).getIdentificacionU_F());
            System.out.println(":"+form.getIdentificacionU_F().getCLAVECATASTRALANTIGUO_IULOTE());
            System.out.println(":"+form.getIdentificacionU_F().getCLAVECATASTRALNUEVO_IULOTE());
            System.out.println(":"+form.getIdentificacionU_F().getNUMEROPREDIO_IULOTE());
            System.out.println(":"+form.getIdentificacionU_F().getdDescriptivosPredio_IULote().getNOMBREEDIFICIO_DDPLOTE());
            System.out.println(":"+form.getIdentificacionU_F().getdDescriptivosPredio_IULote().getNOMBRESECTOR_DDPLOTE());
            System.out.println(":"+form.getIdentificacionU_F().getdDescriptivosPredio_IULote().getUSOPREDIO_DDPLOTE());
            System.out.println(":"+form.getIdentificacionU_F().getdDescriptivosPredio_IULote().getdDPLote().getINTERSECCION_DLOTE());
            System.out.println(":"+form.getIdentificacionU_F().getdDescriptivosPredio_IULote().getdDPLote().getCALLEP_DLOTE());
        }
        
        
    }
}

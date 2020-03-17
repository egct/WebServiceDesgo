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
import java.util.List;

/**
 *
 * @author egct
 */
public class formPrueba00Updateform {
     public static void main(String[] args) { 
         
        FormularioIds formids=new FormularioIds();
        Formulario form=new Formulario();        
        WSGestionFormulario wSGestionFormulario=new WSGestionFormulario();
        
        //FormularioDAO fdao=new FormularioDAO();
        Direccion_DDPLote direccion_DDPLote=new Direccion_DDPLote();
        direccion_DDPLote.setID_DLOTE(1);
        direccion_DDPLote.setCALLEP_DLOTE("Av. Ilalo S/N");
        direccion_DDPLote.setNO_DLOTE("1455");
        direccion_DDPLote.setINTERSECCION_DLOTE("3 de Mayo");
        
        //fdao.actualizarDireccion_DDPLote(direccion_DDPLote);
        DDescriptivosPredio_IULote dDescriptivosPredio_IULote=new DDescriptivosPredio_IULote();
        dDescriptivosPredio_IULote.setID_DDPLOTE(1);
        dDescriptivosPredio_IULote.setNOMBRESECTOR_DDPLOTE("La Merced");
        dDescriptivosPredio_IULote.setNOMBREEDIFICIO_DDPLOTE("Familia Cuichan");
        dDescriptivosPredio_IULote.setUSOPREDIO_DDPLOTE("Vivienda");
        dDescriptivosPredio_IULote.setTIPOPREDIO_DDPLOTE("Urbano");
        dDescriptivosPredio_IULote.setREGIMENTENECIA_DDPLOTE("Unipropiedad");
//        fdao.actualizarDDescriptivosPredio_IULote(dDescriptivosPredio_IULote);

        IdentificacionU_F identificacionU_F=new IdentificacionU_F();
        identificacionU_F.setID_IULOTE(1);
        identificacionU_F.setCLAVECATASTRALANTIGUO_IULOTE("897001");
        identificacionU_F.setNUMEROPREDIO_IULOTE("8751");
        identificacionU_F.setCLAVECATASTRALNUEVO_IULOTE("3215");
        
        //fdao.actualizarIdentificacionU_F(identificacionU_F);
        form.setIdFormulario(3);
        form.setCodigo_F(1724254205);
        form.setEstado_F(1);
        form.setIdentificacionU_F(identificacionU_F);
        form.getIdentificacionU_F().setdDescriptivosPredio_IULote(dDescriptivosPredio_IULote);
        form.getIdentificacionU_F().getdDescriptivosPredio_IULote().setdDPLote(direccion_DDPLote);
        
         System.out.println(">>"+wSGestionFormulario.editarformulario(form));
     }
}

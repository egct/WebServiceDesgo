/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ec.com.desgo.prueba;

import ec.com.desgo.modelo.*;
import ec.com.desgo.modelo.FormularioDAO;
import ec.com.desgo.servicios.WSGestionFormulario;

/**
 *
 * @author egct
 */
public class formPrueba00Insertform {
     public static void main(String[] args) { 
         
        WSGestionFormulario wSGestionFormulario=new WSGestionFormulario();
         
        Direccion_DDPLote direccion_DDPLote=new Direccion_DDPLote();
        direccion_DDPLote.setCALLEP_DLOTE("Av general enriquez");
        direccion_DDPLote.setNO_DLOTE("2556");
        direccion_DDPLote.setINTERSECCION_DLOTE("Planetas");
        long re =wSGestionFormulario.insertarDireccion_DDPLote(direccion_DDPLote);
        
        DDescriptivosPredio_IULote dDescriptivosPredio_IULote=new DDescriptivosPredio_IULote(); 
        dDescriptivosPredio_IULote.setID_DLOTE((int)re);
        dDescriptivosPredio_IULote.setNOMBRESECTOR_DDPLOTE("Conocoto");
        dDescriptivosPredio_IULote.setNOMBREEDIFICIO_DDPLOTE("San Luis");
        dDescriptivosPredio_IULote.setUSOPREDIO_DDPLOTE("Comercial");
        dDescriptivosPredio_IULote.setTIPOPREDIO_DDPLOTE("Rural");
        dDescriptivosPredio_IULote.setREGIMENTENECIA_DDPLOTE("Unipropiedad");

        long re2 =wSGestionFormulario.insertarDDescriptivosPredio_IULote(dDescriptivosPredio_IULote);
        
        IdentificacionU_F identificacionU_F=new IdentificacionU_F();
        identificacionU_F.setID_DDPLOTE((int)re2);
        identificacionU_F.setCLAVECATASTRALANTIGUO_IULOTE("4655004");
        identificacionU_F.setNUMEROPREDIO_IULOTE("6005");
        identificacionU_F.setCLAVECATASTRALNUEVO_IULOTE("4004565");
        
        long re3 =wSGestionFormulario.insertarIdentificacionU_F(identificacionU_F);
        
        User us=new User();
        us.setID_USUARIO(1);
        
        FormularioIds form=new FormularioIds();
        form.setIdentificacionU_F((int)re3);
        form.setCodigo_F(1723954111);
        form.setEstado_F(0);
        
               
        Boolean result =wSGestionFormulario.registarFormulario(us,form);
        
        System.out.println("long>"+re+">"+re2+">"+re3);
        System.out.println("Form>"+result);

    }
}

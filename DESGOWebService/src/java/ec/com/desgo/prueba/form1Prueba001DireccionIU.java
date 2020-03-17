/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ec.com.desgo.prueba;

import ec.com.desgo.modelo.Direccion_DDPLote;
import ec.com.desgo.modelo.FormularioDAO;

/**
 *
 * @author egct
 */
public class form1Prueba001DireccionIU {
    public static void main(String[] args) {    
        FormularioDAO f=new FormularioDAO();
        Direccion_DDPLote direccion_DDPLote=new Direccion_DDPLote();
        direccion_DDPLote.setCALLEP_DLOTE("Av san");
        direccion_DDPLote.setNO_DLOTE("246");
        direccion_DDPLote.setINTERSECCION_DLOTE("2 mayo");
        long re =f.insertarDireccion_DDPLote(direccion_DDPLote);
        System.out.println("long>"+re);
    }
    
}

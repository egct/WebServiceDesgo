/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ec.com.desgo.prueba;

import ec.com.desgo.controlador.Seguridad;
import ec.com.desgo.modelo.*;
import ec.com.desgo.servicios.WSGestionUsuario;
/**
 *
 * @author egct
 */
public class prueba10InsertUser {
    public static void main(String[] args) {
        User us=new User();
        Persona p=new Persona();
        TipoUsuario tipouser=new TipoUsuario();
        prueba10InsertUser prueba=new prueba10InsertUser();
        WSGestionUsuario ws=new WSGestionUsuario();
        tipouser.setID_TIPOUSUARIO(1);
        p.setID_PERSONA(1);
        us.setPersona(p);
        us.setTipoUsuario(tipouser);

        us.setUSUARIO_USUARIO("edwinegct2");
        us.setCONTRASENIA_USUARIO("edwinegct");
        us.setEMPRESA_USUARIO("DESGO");
        
        System.out.println(">>"+ws.registrarUsuario(us));
        
    }

    
}

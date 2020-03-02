/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ec.com.desgo.prueba;

import ec.com.desgo.controlador.*;
import ec.com.desgo.modelo.*;
import ec.com.desgo.servicios.WSGestionUsuario;

/**
 *
 * @author egct
 */
public class prueba04IdUser {
   
        
    public static void main(String[] args) {    
        User u=new User();
        prueba04IdUser p=new prueba04IdUser();
        WSGestionUsuario ws=new WSGestionUsuario();
        
        u=ws.buscarPersona(6);   
        System.out.println("datos>"+u.getUSUARIO_USUARIO()+">"+u.getEMPRESA_USUARIO()+">"+u.getCONTRASENIA_USUARIO()+" "+u.getTipoUsuario().getNIVEL_TIPOUSUARIO());
    }
    
    
}

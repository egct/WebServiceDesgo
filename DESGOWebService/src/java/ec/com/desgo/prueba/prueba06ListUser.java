/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ec.com.desgo.prueba;

import ec.com.desgo.controlador.*;
import ec.com.desgo.modelo.*;
import ec.com.desgo.servicios.WSGestionUsuario;
import java.util.List;

/**
 *
 * @author egct
 */
public class prueba06ListUser {
   
        
    public static void main(String[] args) {    
        User u=new User();
        prueba06ListUser p=new prueba06ListUser();
        WSGestionUsuario ws=new WSGestionUsuario();
        
        List<User> listUser=ws.listarUsuarios(1);   
        System.out.println("datos>"+listUser.toString());
    }
    
    
}

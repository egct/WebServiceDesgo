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
public class prueba05ListRoles {
   
        
    public static void main(String[] args) {    
        User u=new User();
        prueba05ListRoles p=new prueba05ListRoles();
        WSGestionUsuario ws=new WSGestionUsuario();
        
        List<TipoUsuario> listRoles=ws.listarRoles();   
        System.out.println("datos>"+listRoles.toString());
    }
    
    
}

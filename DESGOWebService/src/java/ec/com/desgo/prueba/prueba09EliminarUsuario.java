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
public class prueba09EliminarUsuario {

    public static void main(String[] args) {
        User u = new User();
        prueba09EliminarUsuario p = new prueba09EliminarUsuario();
        WSGestionUsuario ws = new WSGestionUsuario();
        u.setID_USUARIO(15);
        try {
            boolean bandera = ws.eliminarUsuario(u);
            System.out.println("resultado>" + bandera);
        } catch (Exception e) {
        }
    }

}

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
public class prueba11EditarUsuario {

    public static void main(String[] args) {
        User u = new User();
        WSGestionUsuario ws = new WSGestionUsuario();
        TipoUsuario tipo=new TipoUsuario();
        u.setID_USUARIO(17);
        u.setUSUARIO_USUARIO("edwin3");
        u.setCONTRASENIA_USUARIO("edwin3");
        tipo.setID_TIPOUSUARIO(1);
        u.setTipoUsuario(tipo);
        try {
            boolean bandera = ws.editarUsuario(u);
            System.out.println("resultado>" + bandera);
        } catch (Exception e) {
        }
    }

}

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
public class prueba08EliminarPersona {

    public static void main(String[] args) {
        User u = new User();
        prueba08EliminarPersona p = new prueba08EliminarPersona();
        WSGestionUsuario ws = new WSGestionUsuario();
        Persona per = new Persona();
        per.setID_PERSONA(22);
        try {
            boolean bandera = ws.eliminarPersona(per);
            System.out.println("resultado>" + bandera);
        } catch (Exception e) {
        }
    }

}

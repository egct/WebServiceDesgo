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
public class prueba09EditarPersona {

    public static void main(String[] args) {
        User u = new User();
        WSGestionUsuario ws = new WSGestionUsuario();
        Persona p = new Persona();
        p.setID_PERSONA(21);
        p.setPNOMBRE_PERSONA("S");
        p.setSNOMBRE_PERSONA("X");
        p.setPAPELLIDO_PERSONA("C");
        p.setSAPELLIDO_PERSONA("T");
        p.setTELEFONO_PERSONA("022385593");
        p.setCORREO_PERSONA("ca@outlook.es");
        p.setCARGO_PERSONA("root");
        p.setPROFESION_PERSONA("Desarrollador");
        p.setCEDULA_PERSONA("1723953053");
        p.setFOTO_PERSONA("http://lacarpa.com.mx/wp-content/uploads/2019/06/whats-appfoto-perfil.png");
        p.setEMPRESA_PERSONA("DESGO");

        try {
            boolean bandera = ws.editarPersona(p);
            System.out.println("resultado>" + bandera);
        } catch (Exception e) {
        }
    }

}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ec.com.desgo.prueba;

import ec.com.desgo.modelo.*;
import ec.com.desgo.modelo.FormularioDAO;
import ec.com.desgo.servicios.WSGestionFormulario;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author egct
 */
public class formPrueba00Deleteform {
     public static void main(String[] args) { 
         
        WSGestionFormulario wSGestionFormulario=new WSGestionFormulario();
        User us=new User();
        us.setID_USUARIO(1);
        FormularioDAO a=new FormularioDAO();
        //System.out.println(">>"+a.eliminarIdentificacionU_F(3));
        System.out.println(">>"+wSGestionFormulario.eliminarFormulario("1723954887",us));
     }
}

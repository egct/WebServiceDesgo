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
import java.util.Iterator;
import java.util.List;

/**
 *
 * @author egct
 */
public class formPrueba02buscarCodigoyUs {
     public static void main(String[] args) { 
        WSGestionFormulario wSGestionFormulario=new WSGestionFormulario();
        FormularioIds forms;
        User us=new User();
        us.setID_USUARIO(1);
        forms =wSGestionFormulario.buscarCodigoFormulario("1723954889",us);
        
        System.out.println(forms.getIdFormulario()+":"+forms.getIdentificacionU_F());

    }
}

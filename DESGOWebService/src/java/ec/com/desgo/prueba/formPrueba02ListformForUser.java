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
public class formPrueba02ListformForUser {
     public static void main(String[] args) { 
        List<FormularioIds>forms=new ArrayList();
        WSGestionFormulario wSGestionFormulario=new WSGestionFormulario();
        
        User us=new User();
        us.setID_USUARIO(1);
        forms =wSGestionFormulario.listarFormulariosId(1);
        System.out.println(forms);
       
        System.out.println("list>");
        for (int i = 0; i <= forms.size() - 1; i++) {
            System.out.println(forms.get(i).getIdFormulario()+":"+forms.get(i).getCodigo_F()+">"+forms);
        }

    }
}

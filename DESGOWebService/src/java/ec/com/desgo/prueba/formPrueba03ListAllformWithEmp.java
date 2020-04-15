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
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/**
 *
 * @author egct
 */
public class formPrueba03ListAllformWithEmp {

    public static void main(String[] args) {
        List<HashMapClassForm> listformsUs = new ArrayList<>();

        WSGestionFormulario wSGestionFormulario = new WSGestionFormulario();
        //lista los formularios con su usuario
        listformsUs = wSGestionFormulario.listTodosFormIds("DESGO");

        System.out.println("HashMap>");
        for (HashMapClassForm i : listformsUs) {
            System.out.println("key: " + i.getForm().getIdFormulario() + " value: " +i.getUs().getUSUARIO_USUARIO());
        }

    }
}

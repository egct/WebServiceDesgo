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
public class formPruebaListAllformForexport {

    public static void main(String[] args) {
        List<Formulario> listforms = new ArrayList<>();

        WSGestionFormulario wSGestionFormulario = new WSGestionFormulario();
        //lista los formularios con su usuario
        listforms = wSGestionFormulario.listarTodosFormulariosExp("DESGO");
        int count=0;
        System.out.println("todos los formularios>");
        for (Formulario i : listforms) {
            System.out.println("*>>>>>>>>>>>"+count);
            System.out.println(": " + i.getIdFormulario() + " : " +i.getCodigo_F() + " : " +i.getEstado_F()+ " : " +i.getIdUsuario_F());
            System.out.println(":: " + i.getIdentificacionU_F().getCLAVECATASTRALANTIGUO_IULOTE());
            System.out.println(":: " + i.getIdentificacionU_F().getdDescriptivosPredio_IULote().getTIPOPREDIO_DDPLOTE());
            System.out.println(":: " + i.getIdentificacionU_F().getdDescriptivosPredio_IULote().getdDPLote().getCALLEP_DLOTE());
            count++;
        }

    }
}

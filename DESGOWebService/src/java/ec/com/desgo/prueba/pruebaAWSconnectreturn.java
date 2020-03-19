/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ec.com.desgo.prueba;

import ec.com.desgo.modelo.PruebaAws;
import ec.com.desgo.modelo.FormularioIds;
import ec.com.desgo.modelo.User;
import ec.com.desgo.servicios.WSGestionFormulario;

/**
 *
 * @author egct
 */
public class pruebaAWSconnectreturn {
    public static void main(String[] args) { 
        WSGestionFormulario wSGestionFormulario=new WSGestionFormulario();
        PruebaAws p=new PruebaAws();
        p.setIdPrueba(1);
        p.setHora(1242);
        p.setNombre("EGCT");
        String ret =wSGestionFormulario.cambiopruebaAWS(p);
        
        System.out.println(ret);

    }   
}

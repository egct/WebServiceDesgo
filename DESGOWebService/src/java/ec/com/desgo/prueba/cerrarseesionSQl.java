/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ec.com.desgo.prueba;

import com.sun.accessibility.internal.resources.accessibility_zh_TW;
import ec.com.desgo.modelo.Conexion;
import java.sql.Connection;
import java.sql.SQLException;

/**
 *
 * @author egct
 */
public class cerrarseesionSQl {

    public static void main(String[] args) {
        Connection accesoDB;

        accesoDB = Conexion.getConexion();
        
        System.out.println("1Open" + accesoDB.toString());
        accesoDB = Conexion.getConexion();
        
        System.out.println("2Open" + accesoDB.toString());
        
        Conexion.cerrarConexion();
        System.out.println("close" + accesoDB.toString());

    }
}

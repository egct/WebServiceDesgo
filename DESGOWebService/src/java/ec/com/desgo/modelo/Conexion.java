/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ec.com.desgo.modelo;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Conexion {

    private static Connection conn = null;
   
    private Conexion() {
        try {
            /* Carga|Registra el driver JDBC */
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            /* Obtener la conexion*/
            /*Local*/
//            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ebdb", "root", "");
            /*Awardspace*/
//            conn = DriverManager.getConnection("jdbc:mysql://fdb20.runhosting.com:3306/3132858_desgo","3132858_desgo","3132858_desgo");
            /*JElastic*/
//            conn = DriverManager.getConnection("jdbc:mysql://node52083-env-7669133.jl.serv.net.mx:3306/desgodb","root","SSQyye43847");
            /*Amazoneducate asportilla@*/
//            conn = DriverManager.getConnection("jdbc:mysql://aa1ga9qmu3en46x.ceriwji5vpsm.us-east-1.rds.amazonaws.com:3306/ebdb?autoReconnect=true&useSSL=false","root","rootdesgo");          
            /*Amazoneducate jtello1@*/
              conn = DriverManager.getConnection("jdbc:mysql://aa2s407d92yznm.ceb9cu7ixlch.us-east-1.rds.amazonaws.com:3306/ebdb?autoReconnect=true&useSSL=false","root","rootdesgo");          

        } catch (SQLException ex) {
        } catch (Exception e) {
        }
    }

    public static Connection getConexion() {
        if (conn == null) {
            new Conexion();
        }
        return conn;
    }

    public static void cerrarConexion(){
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException ex) {
                Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
}

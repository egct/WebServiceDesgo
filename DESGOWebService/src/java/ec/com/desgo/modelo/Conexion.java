/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package ec.com.desgo.modelo;
import java.sql.*;

public class Conexion {
    public Conexion() {
    }

    public Connection getConexion(){
        Connection con=null;
        try{
            /* Carga|Registra el driver JDBC */
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            /* Obtener la conexion*/
	    /*Local*/
            con = DriverManager.getConnection("jdbc:mysql://aarbq491hygud0.ciueb5gei9tl.us-east-1.rds.amazonaws.com:3306/desgodb?autoReconnect=true&useSSL=false","root","rootdesgo");
            /*Awardspace*/
//            con = DriverManager.getConnection("jdbc:mysql://fdb20.runhosting.com:3306/3132858_desgo","3132858_desgo","3132858_desgo");
            /*JElastic*/
//            con = DriverManager.getConnection("jdbc:mysql://node52083-env-7669133.jl.serv.net.mx:3306/desgodb","root","SSQyye43847");
               /*Amazoneducate*/
//            con = DriverManager.getConnection("jdbc:mysql://ip-172-31-83-131:3306/desgodb","root","root");          
        }catch(SQLException ex){
        }catch(Exception e){   
        }
        return con;
    } 
}


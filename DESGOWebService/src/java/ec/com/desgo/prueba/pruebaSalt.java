/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ec.com.desgo.prueba;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

/**
 *
 * @author egct
 */
public class pruebaSalt {
    
    public static void main(String[] args) {  
        Random r = new Random();
        int valorDado = r.nextInt(60000)+1;  // Entre 0 y 60000, más 1. sin fecha
        System.out.println(""+valorDado);
        Date objDate = new Date(); // Sistema actual La fecha y la hora se asignan a objDate 
 
        System.out.println(objDate); 
        String strDateFormat = "hh: mm: ss a dd-MM-YYYY"; // El formato de fecha está especificado  
        SimpleDateFormat objSDF = new SimpleDateFormat(strDateFormat); // La cadena de formato de fecha se pasa como un argumento al objeto de formato de fecha  
        System.out.println(objSDF.format(objDate)); // El formato de fecha se aplica a la fecha a

        String strDateFormatHORA = "hhmmss"; // El formato de fecha está especificado  
        objSDF = new SimpleDateFormat(strDateFormatHORA); // La cadena de formato de fecha se pasa como un argumento al objeto de formato de fecha  
        System.out.println(objSDF.format(objDate)); // El formato de fecha se aplica a la fecha a

        valorDado = r.nextInt(900000)+Integer.parseInt(objSDF.format(objDate));  // Entre 0 y 60000, más 1. con fecha
        System.out.println("CON HORAS> "+valorDado);

        String strDateFormatDIAS = "ddMMYY"; // El formato de fecha está especificado  
        objSDF = new SimpleDateFormat(strDateFormatDIAS); // La cadena de formato de fecha se pasa como un argumento al objeto de formato de fecha  
        System.out.println(objSDF.format(objDate)); // El formato de fecha se aplica a la fecha a
        
        valorDado+=Integer.parseInt(objSDF.format(objDate));  // Entre 0 y 60000, más 1. con fecha
        System.out.println("CON TODO> "+valorDado);

    }   
}

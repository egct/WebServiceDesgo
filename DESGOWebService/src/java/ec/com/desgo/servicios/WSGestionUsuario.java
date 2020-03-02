/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ec.com.desgo.servicios;

import ec.com.desgo.controlador.Login;
import ec.com.desgo.controlador.Seguridad;
import ec.com.desgo.modelo.Empleado;
import ec.com.desgo.modelo.EmpleadoDAO;
import ec.com.desgo.modelo.Formulario;
import ec.com.desgo.modelo.LoginDAO;
import ec.com.desgo.modelo.Persona;
import ec.com.desgo.modelo.TipoUsuario;
import ec.com.desgo.modelo.User;
import ec.com.desgo.modelo.UserDAO;
import java.util.List;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author egct
 */
@WebService(serviceName = "WSGestionUsuario")
public class WSGestionUsuario {

    /**
     * Web service operation
     */
    @WebMethod(operationName = "Validar")
    public Empleado Validar(@WebParam(name = "dni") String dni, @WebParam(name = "pass") String pass, @WebParam(name = "privilegio") String privilegio) {
        EmpleadoDAO emp = new EmpleadoDAO();
        Empleado empleado = emp.verificaUsuario(dni, pass, privilegio);
        return empleado;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "Registrar")
    public String Registrar(@WebParam(name = "dni") String dni, @WebParam(name = "pass") String pass, @WebParam(name = "apellidos") String apellidos, @WebParam(name = "nombres") String nombres, @WebParam(name = "privilegio") String privilegio) {
        EmpleadoDAO emp = new EmpleadoDAO();
        String respuesta = emp.registraUsuario(dni, pass, apellidos, nombres, privilegio);
        return respuesta;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "login")
    public User login(@WebParam(name = "user") String user, @WebParam(name = "pass") String pass) {

        LoginDAO loginDAO = new LoginDAO();

        int salt = loginDAO.salt(user);
        System.out.println("salt>" + salt);
        String hash = Seguridad.sha256(salt + pass);
        System.out.println("hash>" + hash);
        Login valid = loginDAO.validate(user, hash);
        System.out.println("user>" + valid.getUser() + "pass>" + valid.getPwd());
        UserDAO us = new UserDAO();
        User usuario = us.login(valid.getUser(), valid.getPwd());
        return usuario;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "buscarPersona")
    public User buscarPersona(@WebParam(name = "iduser") int iduser) {
        UserDAO us = new UserDAO();
        User usuario = us.buscarPersona(iduser);
        return usuario;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "registrarUser")
    public Boolean registrarUser(@WebParam(name = "user") User user) {
        UserDAO us = new UserDAO();

        return us.registrarUser(user);
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "registrarFormulario")
    public Boolean registrarFormulario(@WebParam(name = "form") Formulario form, @WebParam(name = "user") User user) {
        //TODO write your implementation code here:
        return true;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "listarRoles")
    public List<TipoUsuario> listarRoles() {
        UserDAO us = new UserDAO();
        List<TipoUsuario> listRoles = us.listarRoles();
        return listRoles;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "listarUsuarios")
    public List<User> listarUsuarios(@WebParam(name = "iduser") int iduser) {
        UserDAO us = new UserDAO();
        List<User> listUsuarios = us.listarUsuarios(iduser);
        return listUsuarios;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "listarPersonas")
    public List<Persona> listarPersonas(@WebParam(name = "iduser") int iduser) {
        UserDAO us = new UserDAO();
        List<Persona> listPersonas = us.listarPersonas(iduser);
        return listPersonas;
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "eliminarPersona")
    public boolean eliminarPersona(@WebParam(name = "persona") Persona persona) {
        UserDAO us = new UserDAO();
        return us.eliminarPersona(persona);
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "eliminarUsuario")
    public boolean eliminarUsuario(@WebParam(name = "usuario") User usuario) {
        UserDAO us = new UserDAO();
        return us.eliminarUsuarios(usuario);
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "editarPersona")
    public boolean editarPersona(@WebParam(name = "persona") Persona persona) {
        UserDAO us = new UserDAO();
        return us.editPersona(persona);
    }

    /**
     * Web service operation
     */
    @WebMethod(operationName = "registrarUsuario")
    public boolean registrarUsuario(@WebParam(name = "usuario") User usuario) {
        UserDAO us = new UserDAO();
        return us.registrarUsuario(usuario,usuario.getPersona().getID_PERSONA());
    }
    
     /**
     * Web service operation
     */
    @WebMethod(operationName = "editarUsuario")
    public boolean editarUsuario(@WebParam(name = "usuario") User usuario) {
        UserDAO us = new UserDAO();
        return us.editUsuarios(usuario);
    }
}

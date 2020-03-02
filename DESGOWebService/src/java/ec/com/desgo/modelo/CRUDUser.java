/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ec.com.desgo.modelo;

import java.util.List;

/**
 *
 * @author egct
 */
public interface CRUDUser {

    public String tipoUsuario(String user, String pass);

    public String tipoUsuarioId(int id);

    public User login(String user, String pass);

    public User buscarPersona(int id);

    public boolean registrarUser(User us);

    public List<TipoUsuario> listarRoles();

    public List<User> listarUsuarios(int id);

    public List<Persona> listarPersonas(int id);

    public boolean eliminarPersona(Persona persona);

    public boolean eliminarUsuarios(User us);

    public boolean editPersona(Persona persona);

    public boolean editUsuarios(User us);
    
    public boolean buscarCedulaPersona(String cedula);

    public boolean buscarNombreUsuario(String nombreUsuario);


}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ec.com.desgo.modelo;

import java.util.HashMap;
import java.util.List;

/**
 *
 * @author egct
 */
public interface CRUDFormulario {
    
    public boolean registrarFormulario(User us,FormularioIds form );
    
    /**LISTAR POR USUARIO***/
    public List<FormularioIds> listarFormularios(User us);
    public List<FormularioIds> listarFormulariosId(int idus);
    public Formulario listarFormulario(User us,FormularioIds formularioIds);
    public List<HashMapClassForm> listarTodosFormIds(String empresa);
    
    /**ACTUALIZAR POR USUARIO***/
    public boolean editarformulario(Formulario formulario);
    /**BUSCAR CODIGO Y USUARIO***/
    public FormularioIds buscarCodigoFormulario(String codigo, User us);
    /**ELIMINAR POR USUARIO***/
    public boolean eliminarFormulario(String codigo, User us);
    public boolean eliminarTodoFormulario(User us);
    /**ASIGNAR USUARIO A FORMULARIOS**/
    public boolean asiganarUserFormulario(int idUser, int idForm);
    
    /**Identificacion ubicacion**/
    /**INSETAR***/
    public long insertarDireccion_DDPLote(Direccion_DDPLote direccion_DDPLote);
    public long insertarDDescriptivosPredio_IULote(DDescriptivosPredio_IULote dDescriptivosPredio_IULote);
    public long insertarIdentificacionU_F(IdentificacionU_F identificacionU_F);
    /**LISTAR POR ID***/
    public Direccion_DDPLote listarDireccion_DDPLote(int direccion_DDPLote);
    public DDescriptivosPredio_IULote listarDDescriptivosPredio_IULote(int dDescriptivosPredio_IULote);
    public IdentificacionU_F listarIdentificacionU_F(int identificacionU_F);
    /**ACTUALIZAR***/
    public boolean actualizarDireccion_DDPLote(Direccion_DDPLote direccion_DDPLote);
    public boolean actualizarDDescriptivosPredio_IULote(DDescriptivosPredio_IULote dDescriptivosPredio_IULote);
    public boolean actualizarIdentificacionU_F(IdentificacionU_F identificacionU_F);
    /**ELIMINAR***/
    public boolean eliminarDireccion_DDPLote(int direccion_DDPLote);
    public boolean eliminarDDescriptivosPredio_IULote(int dDescriptivosPredio_IULote);
    public boolean eliminarIdentificacionU_F(int identificacionU_F);
    
    
    /***********      ***********/
    
}

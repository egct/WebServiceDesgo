/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ec.com.desgo.servicios;


import ec.com.desgo.modelo.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author egct
 */
@WebService(serviceName = "WSGestionFormulario")
public class WSGestionFormulario {

   /**
     * This is a sample web service operation
     * @param txt
     * @return 
     */
    @WebMethod(operationName = "hello")
    public String hello(@WebParam(name = "name") String txt) {
        return "Hello " + txt + " !";
    }

    /**
     * Web service operation
     * @param tipo
     * @return 
     */
    @WebMethod(operationName = "testerAcabados")
    public Acabados_EC testerAcabados(@WebParam(name = "tipo") String tipo) {
        //TODO write your implementation code here:
        Acabados_EC aec=new Acabados_EC();
        aec.setELRMINACIONEXCRETAS_AC(tipo+"1");
        aec.setENERGIAELECTRICAP_AC(tipo+"2");
        aec.setID_AC(500);
        aec.setPISO_AC(tipo+"3");
        aec.setPUERTAS_AC(tipo+"4");
        aec.setREVESTIMIENTOCUBIERTA_AC(tipo+"5");
        aec.setREVESTIMIENTOPARED_AC(tipo+"6");
        aec.setTIPOACABADO_AC(tipo+"7");
        aec.setTUMBADO_AC(tipo+"8");
        aec.setVENTANA_AC(tipo+"9");
        
        return aec;
    }

    /**
     * Web service operation
     * @param economia
     * @return 
     */
    @WebMethod(operationName = "addEconomia")
    public Boolean addEconomia(@WebParam(name = "economia") EconomiaLote economia) {
        //TODO write your implementation code here:
        EconomiaLoteDAO economiaLoteDao=new EconomiaLoteDAO();   
        return economiaLoteDao.add(economia);
    }
    
     /**
     * Web service operation
     * @param us
     * @param form
     * @return 
     */
    @WebMethod(operationName = "registarFormulario")
    public Boolean registarFormulario(@WebParam(name = "us")User us, @WebParam(name = "form") FormularioIds form) {
        //TODO write your implementation code here:
        FormularioDAO formularioDAO=new FormularioDAO();
        return formularioDAO.registrarFormulario(us, form);
    }
    
     /**
     * Web service operation
     * @param user
     * @return 
     */
    @WebMethod(operationName = "listarFormularios")
    public List<FormularioIds> listarFormularios(@WebParam(name = "user") User user) {
        FormularioDAO f = new FormularioDAO();
        List<FormularioIds> listforms = f.listarFormularios(user);
        return listforms;
    }
    
     /**
     * Web service operation
     * @param user
     * @return 
     */
    @WebMethod(operationName = "listarFormulariosId")
    public List<FormularioIds> listarFormulariosId(@WebParam(name = "user") int user) {
        FormularioDAO f = new FormularioDAO();
        List<FormularioIds> listforms = f.listarFormulariosId(user);
        return listforms;
    }
    
     /**
     * Web service operation
     * @param user
     * @param formularioIds
     * @return 
     */
    @WebMethod(operationName = "listarFormulario")
    public Formulario listarFormulario(@WebParam(name = "user") User user,@WebParam(name = "formularioIds") FormularioIds formularioIds ) {
        FormularioDAO f = new FormularioDAO();
        Formulario form = f.listarFormulario(user,formularioIds);
        return form;
    }
    /**
     * Web service operation
     * @param iulote
     * @param formularioIds
     * @return 
     */
    @WebMethod(operationName = "listarFormularioInt")
    public Formulario listarFormularioInt(@WebParam(name = "formularioIds") int formularioIds,@WebParam(name = "iulote") int iulote  ) {
        FormularioDAO f = new FormularioDAO();
        Formulario form = f.listarFormularioInt(formularioIds,iulote);
        return form;
    }
    /**
     * Web service operation
     * @param empresa
     * @return 
     */
    @WebMethod(operationName = "listTodosFormIds")
    public List<HashMapClassForm> listTodosFormIds(@WebParam(name = "empresa") String empresa ) {
          FormularioDAO f = new FormularioDAO();
          List<HashMapClassForm> response=new ArrayList<>();
          response=f.listarTodosFormIds(empresa);
        return  response;
    }
      /**
     * Web service operation
     * @param formulario
     * @return 
     */
    @WebMethod(operationName = "editarformulario")
    public boolean editarformulario(@WebParam(name = "formulario") Formulario formulario) {
        FormularioDAO f = new FormularioDAO();
        boolean form= f.editarformulario(formulario);
        return form;
    }
     /**
     * Web service operation
     * @param codigo
     * @param user
     * @return 
     */
    @WebMethod(operationName = "buscarCodigoFormulario")
    public FormularioIds buscarCodigoFormulario(@WebParam(name = "codigo") String codigo,@WebParam(name = "user") User user) {
        FormularioDAO f = new FormularioDAO();
        FormularioIds form = f.buscarCodigoFormulario(codigo,user);
        return form;
    }
     /**
     * Web service operation
     * @param codigo
     * @param user
     * @return 
     */
    @WebMethod(operationName = "eliminarFormulario")
    public boolean eliminarFormulario(@WebParam(name = "codigo") String codigo,@WebParam(name = "user") User user) {
        FormularioDAO f = new FormularioDAO();
        boolean form= f.eliminarFormulario(codigo,user);
        return form;
    }
    /**
     * Web service operation
     * @param idUser
     * @param idForm
     * @return 
     */
    @WebMethod(operationName = "asigUserFormulario")
    public boolean asigUserFormulario(@WebParam(name = "idUser") int idUser, @WebParam(name = "idForm") int idForm) {
        FormularioDAO f = new FormularioDAO();
        boolean form= f.asiganarUserFormulario(idUser,idForm);
        return form;
    }
    
    /*
    
    public boolean eliminarTodoFormulario(User us);
    */
    
    /****************Identificacion Ubicacion**********************/
    /**
     * Web service operation
     * @param direccion_DDPLote
     * @return 
     */
    @WebMethod(operationName = "insertarDireccion_DDPLote")
    public long insertarDireccion_DDPLote(@WebParam(name = "direccion_DDPLote")Direccion_DDPLote direccion_DDPLote) {
        //TODO write your implementation code here:
        FormularioDAO formularioDAO=new FormularioDAO();
        return formularioDAO.insertarDireccion_DDPLote(direccion_DDPLote);
    }
    /**
     * Web service operation
     * @param dDescriptivosPredio_IULote
     * @return 
     */
    @WebMethod(operationName = "insertarDDescriptivosPredio_IULote")
    public long insertarDDescriptivosPredio_IULote(@WebParam(name = "dDescriptivosPredio_IULote")DDescriptivosPredio_IULote dDescriptivosPredio_IULote) {
        //TODO write your implementation code here:
        FormularioDAO formularioDAO=new FormularioDAO();
        return formularioDAO.insertarDDescriptivosPredio_IULote(dDescriptivosPredio_IULote);
    }
    /**
     * Web service operation
     * @param identificacionU_F
     * @return 
     */
    @WebMethod(operationName = "insertarIdentificacionU_F")
    public long insertarIdentificacionU_F(@WebParam(name = "identificacionU_F")IdentificacionU_F identificacionU_F) {
        //TODO write your implementation code here:
        FormularioDAO formularioDAO=new FormularioDAO();
        return formularioDAO.insertarIdentificacionU_F(identificacionU_F);
    }

    /**
     * Web service operation
     * @param pruebaaws
     * @return 
     */
    @WebMethod(operationName = "cambiopruebaAWS")
    public String cambiopruebaAWS(@WebParam(name = "pruebaaws")PruebaAws pruebaaws) {
        //TODO write your implementation code here:
        Integer item1= pruebaaws.getIdPrueba();
        Integer item2=pruebaaws.getHora();
        String item3= pruebaaws.getNombre();
                
        String ret="Si llego: "+ item1 + item2 + item3 + ">AWS";
        return ret;
    }
}

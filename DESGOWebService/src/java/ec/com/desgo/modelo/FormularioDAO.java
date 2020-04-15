/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ec.com.desgo.modelo;

import ec.com.desgo.controlador.Seguridad;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/**
 *
 * @author egct
 */
public class FormularioDAO implements CRUDFormulario {

    Conexion conexion;

    public FormularioDAO() {
        conexion = new Conexion();
    }

    @Override
    public boolean registrarFormulario(User us, FormularioIds form) {
        Boolean respuesta = false;
        Connection accesoDB = conexion.getConexion();
        try {
            PreparedStatement ps = accesoDB.prepareStatement("insert into `formulario`(`ID_FORMULARIO`,`ID_IULOTE`,`CODIGO_FORMULARIO`,`ESTADO_FORMULARIO`,`ID_USUARIO`) values (null,?,?,?,?)");
            ps.setInt(1, form.getIdentificacionU_F());
            ps.setInt(2, form.getCodigo_F());
            ps.setInt(3, form.getEstado_F());
            ps.setInt(4, form.getIdUsuario_F());

            int rs = ps.executeUpdate();

            if (rs > 0) {
                respuesta = true;
            }
        } catch (Exception e) {
        }
        return respuesta;
    }

    @Override
    public List<FormularioIds> listarFormularios(User us) {
        List<FormularioIds> listforms = new ArrayList<>();
        String sql = "SELECT * FROM `formulario` WHERE `ID_USUARIO`=" + us.getID_USUARIO();
        Connection accesoDB = conexion.getConexion();
        try {
            PreparedStatement ps = accesoDB.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                FormularioIds orderDB = new FormularioIds();
                orderDB.setIdFormulario(rs.getInt("ID_FORMULARIO"));
                orderDB.setCaracterizacionL_F(rs.getInt("ID_CLOTE"));
                orderDB.setEconomica_F(rs.getInt("ID_ELOTE"));
                orderDB.setVivienda_F(rs.getInt("ID_VCLOTE"));
                orderDB.setResponsables_F(rs.getInt("ID_RLOTE"));
                orderDB.setMejora_F(rs.getInt("ID_MLOTE"));
                orderDB.setLimites_F(rs.getInt("ID_LLOTE"));
                orderDB.setIdentificacionL_F(rs.getInt("ID_ILLOTE"));
                orderDB.setGraficosP_F(rs.getInt("ID_GPLOTE"));
                orderDB.setElementosC_F(rs.getInt("ID_EC"));
                orderDB.setIdentificacionU_F(rs.getInt("ID_IULOTE"));
                orderDB.setCaracterizacionC_F(rs.getInt("ID_CCLOTE"));
                orderDB.setMapa_F(rs.getInt("ID_M"));
                orderDB.setIdUsuario_F(rs.getInt("ID_USUARIO"));
                orderDB.setCodigo_F(rs.getInt("CODIGO_FORMULARIO"));
                orderDB.setEstado_F(rs.getInt("ESTADO_FORMULARIO"));
                listforms.add(orderDB);
            }
        } catch (Exception e) {
            System.out.println("Error in listing Customers");
        }
        return listforms;
    }

    @Override
    public List<FormularioIds> listarFormulariosId(int idus) {
        List<FormularioIds> listforms = new ArrayList<>();
        FormularioIds orderDB = null;
        String sql = "SELECT * FROM `formulario` WHERE `ID_USUARIO`=" + idus;
        Connection accesoDB = conexion.getConexion();
        try {
            PreparedStatement ps = accesoDB.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                orderDB = new FormularioIds();
                orderDB.setIdFormulario(rs.getInt("ID_FORMULARIO"));
                orderDB.setCaracterizacionL_F(rs.getInt("ID_CLOTE"));
                orderDB.setEconomica_F(rs.getInt("ID_ELOTE"));
                orderDB.setVivienda_F(rs.getInt("ID_VCLOTE"));
                orderDB.setResponsables_F(rs.getInt("ID_RLOTE"));
                orderDB.setMejora_F(rs.getInt("ID_MLOTE"));
                orderDB.setLimites_F(rs.getInt("ID_LLOTE"));
                orderDB.setIdentificacionL_F(rs.getInt("ID_ILLOTE"));
                orderDB.setGraficosP_F(rs.getInt("ID_GPLOTE"));
                orderDB.setElementosC_F(rs.getInt("ID_EC"));
                orderDB.setIdentificacionU_F(rs.getInt("ID_IULOTE"));
                orderDB.setCaracterizacionC_F(rs.getInt("ID_CCLOTE"));
                orderDB.setMapa_F(rs.getInt("ID_M"));
                orderDB.setIdUsuario_F(rs.getInt("ID_USUARIO"));
                orderDB.setCodigo_F(rs.getInt("CODIGO_FORMULARIO"));
                orderDB.setEstado_F(rs.getInt("ESTADO_FORMULARIO"));
                listforms.add(orderDB);
            }
        } catch (Exception e) {
            System.out.println("Error in listing Customers");
        }
        return listforms;
    }

    @Override
    public Formulario listarFormulario(User us, FormularioIds formularioIds) {
        Formulario form = null;
        try {
            form = new Formulario();
            form.setIdFormulario(formularioIds.getIdFormulario());
            form.setIdentificacionU_F(listarIdentificacionU_F(formularioIds.getIdentificacionU_F()));
            form.getIdentificacionU_F().setdDescriptivosPredio_IULote(listarDDescriptivosPredio_IULote(form.getIdentificacionU_F().getID_DDPLOTE()));
            form.getIdentificacionU_F().getdDescriptivosPredio_IULote().setdDPLote(listarDireccion_DDPLote(form.getIdentificacionU_F().getdDescriptivosPredio_IULote().getID_DLOTE()));

            return form;
        } catch (Exception e) {
        }
        return form;
    }

    public Formulario listarFormularioInt(int formularioIds, int iulote) {
        Formulario form = null;
        try {
            form = new Formulario();
            form.setIdFormulario(formularioIds);
            form.setIdentificacionU_F(listarIdentificacionU_F(iulote));
            form.getIdentificacionU_F().setdDescriptivosPredio_IULote(listarDDescriptivosPredio_IULote(form.getIdentificacionU_F().getID_DDPLOTE()));
            form.getIdentificacionU_F().getdDescriptivosPredio_IULote().setdDPLote(listarDireccion_DDPLote(form.getIdentificacionU_F().getdDescriptivosPredio_IULote().getID_DLOTE()));

            return form;
        } catch (Exception e) {
        }
        return form;
    }

    @Override
    public boolean editarformulario(Formulario formulario) {
        Connection accesoDB = conexion.getConexion();
        String sql = "UPDATE `formulario` \n"
                + "SET `CODIGO_FORMULARIO`=?,\n"
                + "`ESTADO_FORMULARIO`=?\n"
                + "WHERE `ID_FORMULARIO`=?;";
        try {
            PreparedStatement ps = accesoDB.prepareStatement(sql);
            ps.setInt(1, formulario.getCodigo_F());
            ps.setInt(2, formulario.getEstado_F());
            ps.setInt(3, formulario.getIdFormulario());
            ps.executeUpdate();
            actualizarDireccion_DDPLote(formulario.getIdentificacionU_F().getdDescriptivosPredio_IULote().getdDPLote());
            actualizarDDescriptivosPredio_IULote(formulario.getIdentificacionU_F().getdDescriptivosPredio_IULote());
            actualizarIdentificacionU_F(formulario.getIdentificacionU_F());
            return true;
        } catch (Exception e) {
            System.out.println("Error in updating forms");
        }
        return false;
    }

    @Override
    public FormularioIds buscarCodigoFormulario(String codigo, User us) {
        FormularioIds orderDB = null;
        String sql = "SELECT * FROM `formulario` WHERE `ID_USUARIO`=" + us.getID_USUARIO() + " AND `CODIGO_FORMULARIO`='" + codigo + "';";
        Connection accesoDB = conexion.getConexion();
        try {
            PreparedStatement ps = accesoDB.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                orderDB = new FormularioIds();
                orderDB.setIdFormulario(rs.getInt("ID_FORMULARIO"));
                orderDB.setCaracterizacionL_F(rs.getInt("ID_CLOTE"));
                orderDB.setEconomica_F(rs.getInt("ID_ELOTE"));
                orderDB.setVivienda_F(rs.getInt("ID_VCLOTE"));
                orderDB.setResponsables_F(rs.getInt("ID_RLOTE"));
                orderDB.setMejora_F(rs.getInt("ID_MLOTE"));
                orderDB.setLimites_F(rs.getInt("ID_LLOTE"));
                orderDB.setIdentificacionL_F(rs.getInt("ID_ILLOTE"));
                orderDB.setGraficosP_F(rs.getInt("ID_GPLOTE"));
                orderDB.setElementosC_F(rs.getInt("ID_EC"));
                orderDB.setIdentificacionU_F(rs.getInt("ID_IULOTE"));
                orderDB.setCaracterizacionC_F(rs.getInt("ID_CCLOTE"));
                orderDB.setMapa_F(rs.getInt("ID_M"));
                orderDB.setIdUsuario_F(rs.getInt("ID_USUARIO"));
                orderDB.setCodigo_F(rs.getInt("CODIGO_FORMULARIO"));
                orderDB.setEstado_F(rs.getInt("ESTADO_FORMULARIO"));
                return orderDB;
            }
        } catch (Exception e) {
            System.out.println("Error in listing Customers");
        }
        return orderDB;
    }

    @Override
    public boolean eliminarFormulario(String codigo, User us) {
        FormularioIds formids = new FormularioIds();
        Formulario form = new Formulario();

        Connection accesoDB = conexion.getConexion();
        String sql = "DELETE FROM `formulario` WHERE `ID_USUARIO`=" + us.getID_USUARIO() + " AND `CODIGO_FORMULARIO`='" + codigo + "';";
        try {
            formids = buscarCodigoFormulario(codigo, us);
            form.setIdFormulario(formids.getIdFormulario());

            form.setIdentificacionU_F(listarIdentificacionU_F(formids.getIdentificacionU_F()));
            form.getIdentificacionU_F().setdDescriptivosPredio_IULote(listarDDescriptivosPredio_IULote(form.getIdentificacionU_F().getID_DDPLOTE()));
            form.getIdentificacionU_F().getdDescriptivosPredio_IULote().setdDPLote(listarDireccion_DDPLote(form.getIdentificacionU_F().getdDescriptivosPredio_IULote().getID_DLOTE()));

            PreparedStatement ps = accesoDB.prepareStatement(sql);
            ps.executeUpdate();
            eliminarIdentificacionU_F(form.getIdentificacionU_F().getID_IULOTE());
            eliminarDDescriptivosPredio_IULote(form.getIdentificacionU_F().getdDescriptivosPredio_IULote().getID_DDPLOTE());
            eliminarDireccion_DDPLote(form.getIdentificacionU_F().getdDescriptivosPredio_IULote().getdDPLote().getID_DLOTE());

        } catch (Exception e) {
            System.out.println("No se elimino" + e);
            return false;
        }
        return true;
    }

    @Override
    public boolean eliminarTodoFormulario(User us) {
        return true;
    }

    @Override
    public List<HashMapClassForm> listarTodosFormIds(String empresa) {
        List<HashMapClassForm> listformsUs = new ArrayList<>();
        HashMapClassForm listformU = null;
        FormularioIds orderDB = null;
        User us=null;
        String sql = "SELECT formulario.ID_FORMULARIO,\n"
                + "formulario.ID_CLOTE,\n"
                + "formulario.ID_ELOTE,\n"
                + "formulario.ID_VCLOTE,\n"
                + "formulario.ID_RLOTE,\n"
                + "formulario.ID_MLOTE,\n"
                + "formulario.ID_LLOTE,\n"
                + "formulario.ID_ILLOTE,\n"
                + "formulario.ID_GPLOTE,\n"
                + "formulario.ID_EC,\n"
                + "formulario.ID_IULOTE,\n"
                + "formulario.ID_CCLOTE,\n"
                + "formulario.ID_M,\n"
                + "formulario.ID_USUARIO,\n"
                + "formulario.CODIGO_FORMULARIO,\n"
                + "formulario.ESTADO_FORMULARIO,\n"
                + "usuario.USUARIO_USUARIO \n"
                + "FROM ebdb.formulario,ebdb.usuario \n"
                + "WHERE  formulario.ID_USUARIO=usuario.ID_USUARIO AND usuario.EMPRESA_USUARIO='"+empresa+"';";
        Connection accesoDB = conexion.getConexion();
        try {
            PreparedStatement ps = accesoDB.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                orderDB = new FormularioIds();
                us=new User();
                orderDB.setIdFormulario(rs.getInt("ID_FORMULARIO"));
                orderDB.setCaracterizacionL_F(rs.getInt("ID_CLOTE"));
                orderDB.setEconomica_F(rs.getInt("ID_ELOTE"));
                orderDB.setVivienda_F(rs.getInt("ID_VCLOTE"));
                orderDB.setResponsables_F(rs.getInt("ID_RLOTE"));
                orderDB.setMejora_F(rs.getInt("ID_MLOTE"));
                orderDB.setLimites_F(rs.getInt("ID_LLOTE"));
                orderDB.setIdentificacionL_F(rs.getInt("ID_ILLOTE"));
                orderDB.setGraficosP_F(rs.getInt("ID_GPLOTE"));
                orderDB.setElementosC_F(rs.getInt("ID_EC"));
                orderDB.setIdentificacionU_F(rs.getInt("ID_IULOTE"));
                orderDB.setCaracterizacionC_F(rs.getInt("ID_CCLOTE"));
                orderDB.setMapa_F(rs.getInt("ID_M"));
                orderDB.setIdUsuario_F(rs.getInt("ID_USUARIO"));
                orderDB.setCodigo_F(rs.getInt("CODIGO_FORMULARIO"));
                orderDB.setEstado_F(rs.getInt("ESTADO_FORMULARIO"));
                us.setUSUARIO_USUARIO(rs.getString("USUARIO_USUARIO"));
                us.setID_USUARIO(rs.getInt("ID_USUARIO"));
                listformU = new HashMapClassForm(orderDB,us);
                listformsUs.add(listformU);

            }
        } catch (Exception e) {
            System.out.println("Error in listing Customers");
        }
        return listformsUs;
    }

    @Override
    public boolean asiganarUserFormulario(int idUser, int idForm) {
        Connection accesoDB = conexion.getConexion();
        String sql = "UPDATE `formulario` \n"
                + "SET `ID_USUARIO`=? \n"
                + "WHERE `ID_FORMULARIO`=?;";
        try {
            PreparedStatement ps = accesoDB.prepareStatement(sql);
            ps.setInt(1, idUser);
            ps.setInt(2, idForm);
            ps.executeUpdate();
            return true;
        } catch (Exception e) {
            System.out.println("Error in updating forms");
        }
        return false;
    }
    /**
     * Identificacion ubicacion*
     */

    @Override
    public long insertarDireccion_DDPLote(Direccion_DDPLote direccion_DDPLote) {
        long respuesta = 0;
        Connection accesoDB = conexion.getConexion();
        try {
            PreparedStatement ps = accesoDB.prepareStatement("INSERT INTO `direccion_ddplote`(`ID_DLOTE`,`CALLEP_DLOTE`, `NO_DLOTE`, `INTERSECCION_DLOTE`) VALUES (null,?,?,?)", PreparedStatement.RETURN_GENERATED_KEYS);
            ps.setString(1, direccion_DDPLote.getCALLEP_DLOTE());
            ps.setString(2, direccion_DDPLote.getNO_DLOTE());
            ps.setString(3, direccion_DDPLote.getINTERSECCION_DLOTE());
            int rs = ps.executeUpdate();
            if (rs > 0) {
                ResultSet rs2 = ps.getGeneratedKeys();
                if (rs2 != null && rs2.next()) {
                    respuesta = rs2.getLong(1);
                }
            }
        } catch (Exception e) {
        }

        return respuesta;
    }

    @Override
    public long insertarDDescriptivosPredio_IULote(DDescriptivosPredio_IULote dDescriptivosPredio_IULote) {
        long respuesta = 0;
        Connection accesoDB = conexion.getConexion();
        try {
            PreparedStatement ps = accesoDB.prepareStatement("INSERT INTO `ddescriptivospredio_iulote`(`ID_DDPLOTE`,`ID_DLOTE`,`NOMBRESECTOR_DDPLOTE`,`NOMBREEDIFICIO_DDPLOTE`,`USOPREDIO_DDPLOTE`,`TIPOPREDIO_DDPLOTE`,`REGIMENTENECIA_DDPLOTE`) VALUES (null,?,?,?,?,?,?)", PreparedStatement.RETURN_GENERATED_KEYS);
            ps.setLong(1, dDescriptivosPredio_IULote.getID_DLOTE());
            ps.setString(2, dDescriptivosPredio_IULote.getNOMBRESECTOR_DDPLOTE());
            ps.setString(3, dDescriptivosPredio_IULote.getNOMBREEDIFICIO_DDPLOTE());
            ps.setString(4, dDescriptivosPredio_IULote.getUSOPREDIO_DDPLOTE());
            ps.setString(5, dDescriptivosPredio_IULote.getTIPOPREDIO_DDPLOTE());
            ps.setString(6, dDescriptivosPredio_IULote.getREGIMENTENECIA_DDPLOTE());

            int rs = ps.executeUpdate();
            if (rs > 0) {
                ResultSet rs2 = ps.getGeneratedKeys();
                if (rs2 != null && rs2.next()) {
                    respuesta = rs2.getLong(1);
                }
            }
        } catch (Exception e) {
        }

        return respuesta;
    }

    @Override
    public long insertarIdentificacionU_F(IdentificacionU_F identificacionU_F) {
        long respuesta = 0;
        Connection accesoDB = conexion.getConexion();
        try {
            PreparedStatement ps = accesoDB.prepareStatement("INSERT INTO `identificacionubicacionlote`(`ID_IULOTE`,`ID_DDPLOTE`,`CLAVECATASTRALANTIGUO_IULOTE`,`NUMEROPREDIO_IULOTE`,`CLAVECATASTRALNUEVO_IULOTE`) VALUES (null,?,?,?,?)", PreparedStatement.RETURN_GENERATED_KEYS);
            ps.setLong(1, identificacionU_F.getID_DDPLOTE());
            ps.setString(2, identificacionU_F.getCLAVECATASTRALANTIGUO_IULOTE());
            ps.setString(3, identificacionU_F.getNUMEROPREDIO_IULOTE());
            ps.setString(4, identificacionU_F.getCLAVECATASTRALNUEVO_IULOTE());
            int rs = ps.executeUpdate();
            if (rs > 0) {
                ResultSet rs2 = ps.getGeneratedKeys();
                if (rs2 != null && rs2.next()) {
                    respuesta = rs2.getLong(1);
                }
            }
        } catch (Exception e) {
        }

        return respuesta;

    }

    @Override
    public Direccion_DDPLote listarDireccion_DDPLote(int direccion_DDPLote) {
        Direccion_DDPLote dDPLote = null;
        Connection accesoDB = conexion.getConexion();

        try {
            PreparedStatement ps = accesoDB.prepareStatement("SELECT * FROM `direccion_ddplote` WHERE `direccion_ddplote`.`ID_DLOTE` = ? ;");
            ps.setInt(1, direccion_DDPLote);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                dDPLote = new Direccion_DDPLote();
                dDPLote.setID_DLOTE(rs.getInt(1));
                dDPLote.setCALLEP_DLOTE(rs.getString(2));
                dDPLote.setNO_DLOTE(rs.getString(3));
                dDPLote.setINTERSECCION_DLOTE(rs.getString(4));
                return dDPLote;
            }
        } catch (Exception e) {
        }
        return dDPLote;

    }

    @Override
    public DDescriptivosPredio_IULote listarDDescriptivosPredio_IULote(int dDescriptivosPredio_IULote) {
        DDescriptivosPredio_IULote ddpiul = null;
        Connection accesoDB = conexion.getConexion();

        try {
            PreparedStatement ps = accesoDB.prepareStatement("SELECT * FROM `ddescriptivospredio_iulote` WHERE `ddescriptivospredio_iulote`.`ID_DDPLOTE` = ? ;");
            ps.setInt(1, dDescriptivosPredio_IULote);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                ddpiul = new DDescriptivosPredio_IULote();
                ddpiul.setID_DDPLOTE(rs.getInt(1));
                ddpiul.setID_DLOTE(rs.getInt(2));
                ddpiul.setNOMBRESECTOR_DDPLOTE(rs.getString(3));
                ddpiul.setNOMBREEDIFICIO_DDPLOTE(rs.getString(4));
                ddpiul.setUSOPREDIO_DDPLOTE(rs.getString(5));
                ddpiul.setTIPOPREDIO_DDPLOTE(rs.getString(6));
                ddpiul.setREGIMENTENECIA_DDPLOTE(rs.getString(7));
                return ddpiul;
            }
        } catch (Exception e) {
        }
        return ddpiul;
    }

    @Override
    public IdentificacionU_F listarIdentificacionU_F(int identificacionU_F) {
        IdentificacionU_F iuf = null;
        Connection accesoDB = conexion.getConexion();

        try {
            PreparedStatement ps = accesoDB.prepareStatement("SELECT * FROM `identificacionubicacionlote` WHERE `identificacionubicacionlote`.`ID_IULOTE` = ? ;");
            ps.setInt(1, identificacionU_F);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                iuf = new IdentificacionU_F();
                iuf.setID_IULOTE(rs.getInt(1));
                iuf.setID_DDPLOTE(rs.getInt(2));
                iuf.setCLAVECATASTRALANTIGUO_IULOTE(rs.getString(3));
                iuf.setNUMEROPREDIO_IULOTE(rs.getString(4));
                iuf.setCLAVECATASTRALNUEVO_IULOTE(rs.getString(5));
                return iuf;
            }
        } catch (Exception e) {
        }
        return iuf;
    }

    @Override
    public boolean actualizarDireccion_DDPLote(Direccion_DDPLote direccion_DDPLote) {
        Connection accesoDB = conexion.getConexion();
        String sql = "UPDATE `direccion_ddplote` \n"
                + "SET `CALLEP_DLOTE`=?,\n"
                + "`NO_DLOTE`=?,\n"
                + "`INTERSECCION_DLOTE`=?\n"
                + "WHERE `ID_DLOTE`=?;";
        try {
            PreparedStatement ps = accesoDB.prepareStatement(sql);
            ps.setString(1, direccion_DDPLote.getCALLEP_DLOTE());
            ps.setString(2, direccion_DDPLote.getNO_DLOTE());
            ps.setString(3, direccion_DDPLote.getINTERSECCION_DLOTE());
            ps.setInt(4, direccion_DDPLote.getID_DLOTE());
            ps.executeUpdate();
            return true;
        } catch (Exception e) {
            System.out.println("Error in updating forms");
        }
        return false;
    }

    @Override
    public boolean actualizarDDescriptivosPredio_IULote(DDescriptivosPredio_IULote dDescriptivosPredio_IULote) {
        Connection accesoDB = conexion.getConexion();
        String sql = "UPDATE `ddescriptivospredio_iulote` \n"
                + "SET `NOMBRESECTOR_DDPLOTE`=?,\n"
                + "`NOMBREEDIFICIO_DDPLOTE`=?,\n"
                + "`USOPREDIO_DDPLOTE`=?,\n"
                + "`TIPOPREDIO_DDPLOTE`=?,\n"
                + "`REGIMENTENECIA_DDPLOTE`=?\n"
                + "WHERE `ID_DDPLOTE`=?;";
        try {
            PreparedStatement ps = accesoDB.prepareStatement(sql);
            ps.setString(1, dDescriptivosPredio_IULote.getNOMBRESECTOR_DDPLOTE());
            ps.setString(2, dDescriptivosPredio_IULote.getNOMBREEDIFICIO_DDPLOTE());
            ps.setString(3, dDescriptivosPredio_IULote.getUSOPREDIO_DDPLOTE());
            ps.setString(4, dDescriptivosPredio_IULote.getTIPOPREDIO_DDPLOTE());
            ps.setString(5, dDescriptivosPredio_IULote.getREGIMENTENECIA_DDPLOTE());
            ps.setInt(6, dDescriptivosPredio_IULote.getID_DDPLOTE());
            ps.executeUpdate();
            return true;
        } catch (Exception e) {
            System.out.println("Error in updating forms");
        }
        return false;
    }

    @Override
    public boolean actualizarIdentificacionU_F(IdentificacionU_F identificacionU_F) {
        Connection accesoDB = conexion.getConexion();
        String sql = "UPDATE `identificacionubicacionlote` \n"
                + "SET `CLAVECATASTRALANTIGUO_IULOTE`=?,\n"
                + "`NUMEROPREDIO_IULOTE`=?,\n"
                + "`CLAVECATASTRALNUEVO_IULOTE`=?\n"
                + "WHERE `ID_IULOTE`=?;";
        try {
            PreparedStatement ps = accesoDB.prepareStatement(sql);
            ps.setString(1, identificacionU_F.getCLAVECATASTRALANTIGUO_IULOTE());
            ps.setString(2, identificacionU_F.getNUMEROPREDIO_IULOTE());
            ps.setString(3, identificacionU_F.getCLAVECATASTRALNUEVO_IULOTE());
            ps.setInt(4, identificacionU_F.getID_IULOTE());
            ps.executeUpdate();
            return true;
        } catch (Exception e) {
            System.out.println("Error in updating forms");
        }
        return false;
    }

    @Override
    public boolean eliminarDireccion_DDPLote(int direccion_DDPLote) {
        Connection accesoDB = conexion.getConexion();
        String sql = "DELETE FROM `direccion_ddplote` WHERE `ID_DLOTE`=" + direccion_DDPLote;
        try {

            PreparedStatement ps = accesoDB.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("No se elimino" + e);
            return false;
        }
        return true;
    }

    @Override
    public boolean eliminarDDescriptivosPredio_IULote(int dDescriptivosPredio_IULote) {
        Connection accesoDB = conexion.getConexion();
        String sql = "DELETE FROM `ddescriptivospredio_iulote` WHERE `ID_DDPLOTE`=" + dDescriptivosPredio_IULote;
        try {

            PreparedStatement ps = accesoDB.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("No se elimino" + e);
            return false;
        }
        return true;
    }

    @Override
    public boolean eliminarIdentificacionU_F(int identificacionU_F) {
        Connection accesoDB = conexion.getConexion();
        String sql = "DELETE FROM `identificacionubicacionlote` WHERE `ID_IULOTE`=" + identificacionU_F;
        try {

            PreparedStatement ps = accesoDB.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("No se elimino" + e);
            return false;
        }
        return true;
    }

   

}

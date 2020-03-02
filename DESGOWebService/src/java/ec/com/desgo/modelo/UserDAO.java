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
import java.util.List;

/**
 *
 * @author egct
 */
public class UserDAO implements CRUDUser {

    Conexion conexion;

    public UserDAO() {
        conexion = new Conexion();
    }

    @Override
    public User login(String user, String pass) {
        User usuario = null;
        Persona persona = null;
        TipoUsuario tipoUsuario = null;
        String tipoU = tipoUsuario(user, pass);
        System.out.println("tipo usuario>" + tipoU);
        Connection accesoDB = conexion.getConexion();

        try {
            PreparedStatement ps = accesoDB.prepareStatement("SELECT DISTINCT * FROM `usuario`,`persona`,`tipousuario` WHERE `USUARIO_USUARIO` = ? AND `CONTRASENIA_USUARIO`=? AND `tipousuario`.`NIVEL_TIPOUSUARIO`=? and `persona`.`ID_PERSONA`=`usuario`.`ID_PERSONA`;");
            ps.setString(1, user);
            ps.setString(2, pass);
            ps.setString(3, tipoU);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                usuario = new User();
                persona = new Persona();
                tipoUsuario = new TipoUsuario();
                usuario.setID_USUARIO(rs.getInt(1));
                usuario.setID_TIPOUSUARIO(rs.getInt(2));
                usuario.setID_PERSONA(rs.getInt(3));
                usuario.setUSUARIO_USUARIO(rs.getString(4));
                usuario.setCONTRASENIA_USUARIO(rs.getString(5));
                usuario.setEMPRESA_USUARIO(rs.getString(6));
                usuario.setSALT_USUARIO(rs.getInt(7));//*****
                persona.setID_PERSONA(rs.getInt(8));
                persona.setPNOMBRE_PERSONA(rs.getString(9));
                persona.setSNOMBRE_PERSONA(rs.getString(10));
                persona.setPAPELLIDO_PERSONA(rs.getString(11));
                persona.setSAPELLIDO_PERSONA(rs.getString(12));
                persona.setTELEFONO_PERSONA(rs.getString(13));
                persona.setCORREO_PERSONA(rs.getString(14));
                persona.setCARGO_PERSONA(rs.getString(15));
                persona.setPROFESION_PERSONA(rs.getString(16));
                persona.setCEDULA_PERSONA(rs.getString(17));
                persona.setFOTO_PERSONA(rs.getString(18));
                persona.setEMPRESA_PERSONA(rs.getString(19));
                usuario.setPersona(persona);
                tipoUsuario.setID_TIPOUSUARIO(rs.getInt(20));
                tipoUsuario.setNIVEL_TIPOUSUARIO(rs.getString(21));
                usuario.setTipoUsuario(tipoUsuario);
                return usuario;
            }
        } catch (Exception e) {
        }
        return usuario;

    }

    @Override //para registrar personas
    public boolean registrarUser(User us) {
        boolean respuesta = false;
        TipoUsuario tp = new TipoUsuario();
        UserDAO userDao = new UserDAO();

        Connection accesoDB = conexion.getConexion();
        if (userDao.buscarCedulaPersona(us.getPersona().getCEDULA_PERSONA())) {
            try {
                PreparedStatement ps = accesoDB.prepareStatement("insert into persona(ID_PERSONA,PNOMBRE_PERSONA,"
                        + "SNOMBRE_PERSONA,PAPELLIDO_PERSONA,SAPELLIDO_PERSONA,"
                        + "TELEFONO_PERSONA,CORREO_PERSONA,CARGO_PERSONA,PROFESION_PERSONA,CEDULA_PERSONA,FOTO_PERSONA,EMPRESA_PERSONA"
                        + ") values (null,?,?,?,?,?,?,?,?,?,?,?)");
                ps.setString(1, us.getPersona().getPNOMBRE_PERSONA());
                ps.setString(2, us.getPersona().getSNOMBRE_PERSONA());
                ps.setString(3, us.getPersona().getPAPELLIDO_PERSONA());
                ps.setString(4, us.getPersona().getSAPELLIDO_PERSONA());
                ps.setString(5, us.getPersona().getTELEFONO_PERSONA());
                ps.setString(6, us.getPersona().getCORREO_PERSONA());
                ps.setString(7, us.getPersona().getCARGO_PERSONA());
                ps.setString(8, us.getPersona().getPROFESION_PERSONA());
                ps.setString(9, us.getPersona().getCEDULA_PERSONA());
                ps.setString(10, us.getPersona().getFOTO_PERSONA());
                ps.setString(11, us.getPersona().getEMPRESA_PERSONA());
                int rs = ps.executeUpdate();
                /*
            if (rs > 0) {
                int idpersona = buscarIdPersona(us.getPersona().getCORREO_PERSONA());
                System.out.println("US-idtipopersona>" + us.getTipoUsuario().getID_TIPOUSUARIO());
                System.out.println("US-tipo>" + us.getTipoUsuario().getNIVEL_TIPOUSUARIO());

                tp.setNIVEL_TIPOUSUARIO(us.getTipoUsuario().getNIVEL_TIPOUSUARIO());
                tp.setID_TIPOUSUARIO(tipoUsuario(tp.getNIVEL_TIPOUSUARIO()));
                System.out.println("tp-idtipopersona>" + tp.getID_TIPOUSUARIO());
                System.out.println("tp-tipo>" + tp.getNIVEL_TIPOUSUARIO());

                us.setTipoUsuario(tp);
                System.out.println("idpersona>" + idpersona);
                System.out.println("final-idtipopersona>" + us.getTipoUsuario().getID_TIPOUSUARIO());
                System.out.println("final-tipo>" + us.getTipoUsuario().getNIVEL_TIPOUSUARIO());

                int aux = registrarUsuario(us, idpersona);

                if (aux > 0) {
                    respuesta = true;
                }
            }*/
                if (rs > 0) {
                    respuesta = true;
                }

            } catch (Exception e) {
            }
        }

        return respuesta;
    }

    public boolean registrarUsuario(User us, int idpersona) {
        boolean respuesta = false;
        Connection accesoDB = conexion.getConexion();
        UserDAO userDao = new UserDAO();
        if (userDao.buscarNombreUsuario(us.getUSUARIO_USUARIO())) {
            int salt = Seguridad.randomico();
            us.setSALT_USUARIO(salt);
            us.setCONTRASENIA_USUARIO(Seguridad.sha256(us.getSALT_USUARIO() + us.getCONTRASENIA_USUARIO()));
            try {
                PreparedStatement ps = accesoDB.prepareStatement("INSERT INTO `usuario`(`ID_USUARIO`, `ID_TIPOUSUARIO`, `ID_PERSONA`, `USUARIO_USUARIO`, `CONTRASENIA_USUARIO`, `EMPRESA_USUARIO`,`SALT_USUARIO`) VALUES (null,?,?,?,?,?,?)");
                ps.setInt(1, us.getTipoUsuario().getID_TIPOUSUARIO());
                ps.setInt(2, idpersona);
                ps.setString(3, us.getUSUARIO_USUARIO());
                ps.setString(4, us.getCONTRASENIA_USUARIO());
                ps.setString(5, us.getEMPRESA_USUARIO());
                ps.setInt(6, us.getSALT_USUARIO());

                int rs = ps.executeUpdate();

                if (rs > 0) {
                    respuesta = true;
                }
            } catch (Exception e) {
            }
        }
        return respuesta;
    }

    public int buscarIdPersona(String correo) {
        int idpersona = -1;
        Connection accesoDB = conexion.getConexion();
        try {
            PreparedStatement ps = accesoDB.prepareStatement("SELECT ID_PERSONA FROM persona WHERE CORREO_PERSONA = ?");
            ps.setString(1, correo);

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                idpersona = rs.getInt(1);
                return idpersona;
            }
        } catch (Exception e) {
        }
        return idpersona;
    }

    @Override
    public String tipoUsuario(String user, String pass) {
        TipoUsuario tipoU = null;
        Connection accesoDB = conexion.getConexion();
        try {
            PreparedStatement ps = accesoDB.prepareStatement("SELECT `tipousuario`.`NIVEL_TIPOUSUARIO` FROM `usuario`,`tipousuario`WHERE `USUARIO_USUARIO` = ? AND `CONTRASENIA_USUARIO`=? AND `tipousuario`.`ID_TIPOUSUARIO`=`usuario`.`ID_TIPOUSUARIO`");
            ps.setString(1, user);
            ps.setString(2, pass);

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                tipoU = new TipoUsuario();
                tipoU.setNIVEL_TIPOUSUARIO(rs.getString(1));
                return tipoU.getNIVEL_TIPOUSUARIO();
            }
        } catch (Exception e) {
        }
        return tipoU.getNIVEL_TIPOUSUARIO();
    }

    public int tipoUsuario(String tipoUsuario) {
        int tipou = -1;
        Connection accesoDB = conexion.getConexion();
        try {
            PreparedStatement ps = accesoDB.prepareStatement("SELECT `ID_TIPOUSUARIO` FROM `tipousuario`WHERE `NIVEL_TIPOUSUARIO`=?");
            ps.setString(1, tipoUsuario);

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                tipou = rs.getInt(1);
                return tipou;
            }
        } catch (Exception e) {
        }
        return tipou;
    }

    @Override
    public String tipoUsuarioId(int id) {
        return "";
    }

    @Override
    public User buscarPersona(int id) {
        User usuario = null;
        Persona persona = null;
        TipoUsuario tipoUsuario = null;
        Connection accesoDB = conexion.getConexion();

        try {
            PreparedStatement ps = accesoDB.prepareStatement("SELECT DISTINCT * FROM `usuario`,`persona`,`tipousuario` WHERE `usuario`.`ID_USUARIO` = ? AND `usuario`.`ID_PERSONA`=`persona`.`ID_PERSONA` AND `usuario`.`ID_TIPOUSUARIO`=`tipousuario`.`ID_TIPOUSUARIO`;");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                usuario = new User();
                persona = new Persona();
                tipoUsuario = new TipoUsuario();
                usuario.setID_USUARIO(rs.getInt(1));
                usuario.setID_TIPOUSUARIO(rs.getInt(2));
                usuario.setID_PERSONA(rs.getInt(3));
                usuario.setUSUARIO_USUARIO(rs.getString(4));
                usuario.setCONTRASENIA_USUARIO(rs.getString(5));
                usuario.setEMPRESA_USUARIO(rs.getString(6));
                usuario.setSALT_USUARIO(rs.getInt(7));//*****
                persona.setID_PERSONA(rs.getInt(8));
                persona.setPNOMBRE_PERSONA(rs.getString(9));
                persona.setSNOMBRE_PERSONA(rs.getString(10));
                persona.setPAPELLIDO_PERSONA(rs.getString(11));
                persona.setSAPELLIDO_PERSONA(rs.getString(12));
                persona.setTELEFONO_PERSONA(rs.getString(13));
                persona.setCORREO_PERSONA(rs.getString(14));
                persona.setCARGO_PERSONA(rs.getString(15));
                persona.setPROFESION_PERSONA(rs.getString(16));
                persona.setCEDULA_PERSONA(rs.getString(17));
                persona.setFOTO_PERSONA(rs.getString(18));
                persona.setEMPRESA_PERSONA(rs.getString(19));
                usuario.setPersona(persona);
                tipoUsuario.setID_TIPOUSUARIO(rs.getInt(20));
                tipoUsuario.setNIVEL_TIPOUSUARIO(rs.getString(21));
                usuario.setTipoUsuario(tipoUsuario);
                return usuario;
            }
        } catch (Exception e) {
        }
        return usuario;

    }

    @Override
    public List<TipoUsuario> listarRoles() {
        List<TipoUsuario> listRoles = new ArrayList<>();
        String sql = "SELECT * FROM `tipousuario`";
        Connection accesoDB = conexion.getConexion();
        try {
            PreparedStatement ps = accesoDB.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                TipoUsuario orderDB = new TipoUsuario();
                orderDB.setID_TIPOUSUARIO(rs.getInt("ID_TIPOUSUARIO"));
                orderDB.setNIVEL_TIPOUSUARIO(rs.getString("NIVEL_TIPOUSUARIO"));
                listRoles.add(orderDB);
            }
        } catch (Exception e) {
            System.out.println("Error in listing Customers");
        }
        return listRoles;
    }

    @Override
    public List<Persona> listarPersonas(int id) {
        List<Persona> listPersonas = new ArrayList<>();
        Persona persona = null;
        Connection accesoDB = conexion.getConexion();

        try {
            PreparedStatement ps = accesoDB.prepareStatement("SELECT DISTINCT * FROM `persona` \n"
                    + "WHERE `persona`.`EMPRESA_PERSONA`=(SELECT `usuario`.`EMPRESA_USUARIO` FROM `usuario` WHERE `usuario`.`ID_USUARIO` = ?);");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                persona = new Persona();
                persona.setID_PERSONA(rs.getInt(1));
                persona.setPNOMBRE_PERSONA(rs.getString(2));
                persona.setSNOMBRE_PERSONA(rs.getString(3));
                persona.setPAPELLIDO_PERSONA(rs.getString(4));
                persona.setSAPELLIDO_PERSONA(rs.getString(5));
                persona.setTELEFONO_PERSONA(rs.getString(6));
                persona.setCORREO_PERSONA(rs.getString(7));
                persona.setCARGO_PERSONA(rs.getString(8));
                persona.setPROFESION_PERSONA(rs.getString(9));
                persona.setCEDULA_PERSONA(rs.getString(10));
                persona.setFOTO_PERSONA(rs.getString(11));
                persona.setEMPRESA_PERSONA(rs.getString(12));
                listPersonas.add(persona);
            }
        } catch (Exception e) {
        }
        return listPersonas;

    }

    @Override
    public List<User> listarUsuarios(int id) {
        List<User> listUsuarios = new ArrayList<>();
        User usuario = null;
        Persona persona = null;
        TipoUsuario tipoUsuario = null;
        Connection accesoDB = conexion.getConexion();

        try {
            PreparedStatement ps = accesoDB.prepareStatement("SELECT DISTINCT * FROM `usuario`,`persona`,`tipousuario` \n"
                    + "WHERE `persona`.`EMPRESA_PERSONA`=(SELECT `usuario`.`EMPRESA_USUARIO` FROM `usuario` WHERE `usuario`.`ID_USUARIO` = ?) \n"
                    + "AND `usuario`.`ID_PERSONA`=`persona`.`ID_PERSONA` \n"
                    + "AND `usuario`.`ID_TIPOUSUARIO`=`tipousuario`.`ID_TIPOUSUARIO`;");
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                usuario = new User();
                persona = new Persona();
                tipoUsuario = new TipoUsuario();
                usuario.setID_USUARIO(rs.getInt(1));
                usuario.setID_TIPOUSUARIO(rs.getInt(2));
                usuario.setID_PERSONA(rs.getInt(3));
                usuario.setUSUARIO_USUARIO(rs.getString(4));
                usuario.setCONTRASENIA_USUARIO(rs.getString(5));
                usuario.setEMPRESA_USUARIO(rs.getString(6));
                usuario.setSALT_USUARIO(rs.getInt(7));//*****
                persona.setID_PERSONA(rs.getInt(8));
                persona.setPNOMBRE_PERSONA(rs.getString(9));
                persona.setSNOMBRE_PERSONA(rs.getString(10));
                persona.setPAPELLIDO_PERSONA(rs.getString(11));
                persona.setSAPELLIDO_PERSONA(rs.getString(12));
                persona.setTELEFONO_PERSONA(rs.getString(13));
                persona.setCORREO_PERSONA(rs.getString(14));
                persona.setCARGO_PERSONA(rs.getString(15));
                persona.setPROFESION_PERSONA(rs.getString(16));
                persona.setCEDULA_PERSONA(rs.getString(17));
                persona.setFOTO_PERSONA(rs.getString(18));
                persona.setEMPRESA_PERSONA(rs.getString(19));
                usuario.setPersona(persona);
                tipoUsuario.setID_TIPOUSUARIO(rs.getInt(20));
                tipoUsuario.setNIVEL_TIPOUSUARIO(rs.getString(21));
                usuario.setTipoUsuario(tipoUsuario);
                listUsuarios.add(usuario);
            }
        } catch (Exception e) {
        }
        return listUsuarios;

    }

    @Override
    public boolean eliminarPersona(Persona persona) {
        Connection accesoDB = conexion.getConexion();
        String sql = "DELETE FROM `persona` WHERE `ID_PERSONA`=" + persona.getID_PERSONA();
        try {
            PreparedStatement ps = accesoDB.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("No se elimino, existen usuarios relacionados a esta persona, eliminelos primero>>>>>>>" + e);
            return false;
        }
        return true;
    }

    @Override
    public boolean eliminarUsuarios(User us) {
        Connection accesoDB = conexion.getConexion();
        String sql = "DELETE FROM `usuario` WHERE `ID_USUARIO`=" + us.getID_USUARIO();
        try {
            PreparedStatement ps = accesoDB.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("No se elimino el usuario>>>>" + e);
            return false;
        }
        return true;
    }

    @Override
    public boolean editPersona(Persona persona) {
        Connection accesoDB = conexion.getConexion();
        String sql = "UPDATE `persona` \n"
                + "SET `PNOMBRE_PERSONA`=?,\n"
                + "`SNOMBRE_PERSONA`=?,\n"
                + "`PAPELLIDO_PERSONA`=?,\n"
                + "`SAPELLIDO_PERSONA`=?,\n"
                + "`TELEFONO_PERSONA`=?,\n"
                + "`CORREO_PERSONA`=?,\n"
                + "`CARGO_PERSONA`=?,\n"
                + "`PROFESION_PERSONA`=?,\n"
                + "`CEDULA_PERSONA`=?,\n"
                + "`FOTO_PERSONA`=?\n"
                + "WHERE `ID_PERSONA`=?";
        try {

            PreparedStatement ps = accesoDB.prepareStatement(sql);
            ps.setString(1, persona.getPNOMBRE_PERSONA());
            ps.setString(2, persona.getSNOMBRE_PERSONA());
            ps.setString(3, persona.getPAPELLIDO_PERSONA());
            ps.setString(4, persona.getSAPELLIDO_PERSONA());
            ps.setString(5, persona.getTELEFONO_PERSONA());
            ps.setString(6, persona.getCORREO_PERSONA());
            ps.setString(7, persona.getCARGO_PERSONA());
            ps.setString(8, persona.getPROFESION_PERSONA());
            ps.setString(9, persona.getCEDULA_PERSONA());
            ps.setString(10, persona.getFOTO_PERSONA());
            ps.setInt(11, persona.getID_PERSONA());
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error in deleting Customers");
        }
        return true;
    }

    @Override
    public boolean editUsuarios(User us) {
        Connection accesoDB = conexion.getConexion();
        int salt = Seguridad.randomico();
        us.setSALT_USUARIO(salt);
        us.setCONTRASENIA_USUARIO(Seguridad.sha256(us.getSALT_USUARIO() + us.getCONTRASENIA_USUARIO()));

        String sql = "UPDATE `usuario` \n"
                + "SET `USUARIO_USUARIO`=?,\n"
                + "`CONTRASENIA_USUARIO`=?,\n"
                + "`SALT_USUARIO`=?,\n"
                + "`ID_TIPOUSUARIO`=? \n"
                + "WHERE `ID_USUARIO`=?;";
        try {
            System.out.println(">" + us.getUSUARIO_USUARIO() + ">" + us.getCONTRASENIA_USUARIO() + ">" + us.getSALT_USUARIO() + ">" + us.getTipoUsuario().getID_TIPOUSUARIO() + ">" + us.getID_USUARIO());
            PreparedStatement ps = accesoDB.prepareStatement(sql);
            ps.setString(1, us.getUSUARIO_USUARIO());
            ps.setString(2, us.getCONTRASENIA_USUARIO());
            ps.setInt(3, us.getSALT_USUARIO());
            ps.setInt(4, us.getTipoUsuario().getID_TIPOUSUARIO());
            ps.setInt(5, us.getID_USUARIO());
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error in deleting Customers");
        }
        return true;

    }

    @Override
    public boolean buscarCedulaPersona(String cedula) {
        Connection accesoDB = conexion.getConexion();
        try {
            PreparedStatement ps = accesoDB.prepareStatement("SELECT * FROM `persona` WHERE `CEDULA_PERSONA`= ?;");
            ps.setString(1, cedula);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return false;
            }
        } catch (Exception e) {
        }
        return true;
    }

    @Override
    public boolean buscarNombreUsuario(String nombreUsuario) {
        Connection accesoDB = conexion.getConexion();
        try {
            PreparedStatement ps = accesoDB.prepareStatement("SELECT * FROM `usuario` WHERE `USUARIO_USUARIO`=?");
            ps.setString(1, nombreUsuario);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return false;
            }
        } catch (Exception e) {
        }
        return true;
    }

}

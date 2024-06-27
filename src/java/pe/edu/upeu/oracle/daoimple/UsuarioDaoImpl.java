/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package pe.com.daoimple;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import pe.com.config.Conexion;
import pe.com.dao.UsuarioDao;
import pe.com.dto.UsuarioLogin;

/**
 *
 * @author User
 */
public class UsuarioDaoImpl implements UsuarioDao{
    
    private PreparedStatement ps;
    private ResultSet rs;
    private Connection cx= null;

    @Override
    public List<UsuarioLogin> login(String username, String clave) {
        List<UsuarioLogin> lista = new ArrayList<>();
        String SQL= "SELECT idusuario, username, estado " +
             "FROM usuario " +
             "WHERE username = ? AND clave = ?";
        try {
            cx = Conexion.getConexion();
            ps = cx.prepareStatement(SQL);
            ps.setString(1, username);
            ps.setString(2, clave);
            rs = ps.executeQuery();
            
            while(rs.next()){
                UsuarioLogin login = new UsuarioLogin();
                login.setIdusuario(rs.getInt("idusuario"));
                login.setUsername(rs.getString("username"));
                login.setEstado(rs.getString("estado"));
               
                lista.add(login);
            }
        } catch (Exception e) {
            System.out.println("Errorrrrrrrrrrrr: "+e);
        } 
        return lista; 

    }
    
}

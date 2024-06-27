/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package pe.com.dao;

import java.util.List;
import pe.com.dto.UsuarioLogin;

/**
 *
 * @author User
 */
public interface UsuarioDao {
  
    public List<UsuarioLogin> login(String username, String clave);
}

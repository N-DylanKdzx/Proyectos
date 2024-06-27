/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package pe.com.tes;

import com.google.gson.Gson;
import pe.com.config.Conexion;
import pe.com.dao.UsuarioDao;
import pe.com.daoimple.UsuarioDaoImpl;


/**
 *
 * @author User
 */
public class TES {
    


static UsuarioDao udao = new UsuarioDaoImpl();
static Gson g = new Gson();


    
    
    public static void main(String[] args) {
        // TODO code application logic here
        if(Conexion.getConexion()!=null){
            System.out.println("Conectado");
        }else{
            System.out.println("no conectado");
        }
        
       System.out.println(g.toJson(udao.login("josue", "123")));
    }
    
}

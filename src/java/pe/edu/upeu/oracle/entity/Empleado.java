/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package pe.com.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 *
 * @author User
 */
@Data
@AllArgsConstructor
@NoArgsConstructor

public class Empleado {
    
     private int idempleado;
    private String nonbre; 
    private String apellido; 
    private String correo; 
    private String telefono; 
    
}

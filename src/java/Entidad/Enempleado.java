/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entidad;

/**
 *
 * @author iFiXiT
 */
public class Enempleado
{
    private int dni;
    private String nom;
    private String ape;
    private String dir;
    private int cel;
    private String email;
    private String clave;
    private String est;

    public int getDni() {
        return dni;
    }

    public void setDni(int dni) {
        this.dni = dni;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getApe() {
        return ape;
    }

    public void setApe(String ape) {
        this.ape = ape;
    }
    
    public String getDir() {
        return dir;
    }

    public void setDir(String dir) {
        this.dir = dir;
    }
    
    public int getCel() {
        return cel;
    }

    public void setCel(int cel) {
        this.cel = cel;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public String getEst() {
        return est;
    }

    public void setEst(String est) {
        this.est = est;
    }

    public Enempleado() {
    }

    public Enempleado(int dni, String nom, String ape, String dir, int cel, String email, String clave, String est) {
        this.dni = dni;
        this.nom = nom;
        this.ape = ape;
        this.dir = dir;
        this.cel = cel;
        this.email = email;
        this.clave = clave;
        this.est = est;
    }
    
    
}

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */


/**
 *
 * @author susan
 */
public class Marca {
    private String modelo;
    private String size;
    private String ram;
    private String almacenamiento;
    private String sistema;
    private int editorial;
    private String descrip;

    public Marca(String modelo, String size, String ram, String almacenamiento, String sistema, int editorial) {
        this.modelo = modelo;
        this.size = size;
        this.ram = ram;
        this.almacenamiento = almacenamiento;
        this.sistema = sistema;
        this.editorial = editorial;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getRam() {
        return ram;
    }

    public void setRam(String ram) {
        this.ram = ram;
    }

    public String getAlmacenamiento() {
        return almacenamiento;
    }

    public void setAlmacenamiento(String almacenamiento) {
        this.almacenamiento = almacenamiento;
    }

    public String getSistema() {
        return sistema;
    }

    public void setSistema(String sistema) {
        this.sistema = sistema;
    }

    public int getEditorial() {
        return editorial;
    }

    public void setEditorial(int editorial) {
        this.editorial = editorial;
    }


    
}
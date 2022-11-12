/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author susan
 */
public class LibroVec {
   Libro[] tabLibro;
    int ind;
    private LinkStart linkBD;
    private Connection conexion;
    private PreparedStatement statement = null;
    private ResultSet result = null; 
    
    public LibroVec(){
        this.tabLibro = new Libro[100];
        this.ind=0;
    }
    
     public void saveCli(Libro libro){
        this.tabLibro[this.ind]=libro;  
        this.ind=this.ind+1;
    }
    
    public Libro[] gimmeCli(){
        return this.tabLibro;
    }
   
    public void starConex(){
        linkBD= new LinkStart();
        conexion=linkBD.conectar();
    }
    
    public boolean saveCliBD(Libro libro){        
        String sql = "INSERT INTO final_progra.computadora(modelo, tamaño_pantalla, cantidad_ram, almacenamiento, sistema_operativo, marca_codigo)";
             sql += " VALUES( ?,?,?,?,?,?)"; 
        try{
            starConex();
            statement = conexion.prepareStatement(sql); 
            
            statement.setString(1, libro.getModelo());
            statement.setString(2, libro.getSize());
            statement.setString(3, libro.getRam());
            statement.setString(4, libro.getAlmacenamiento());
            statement.setString(5, libro.getSistema());
            statement.setInt(6, libro.getMarca());
             int resultado = statement.executeUpdate(); 
                if(resultado > 0){
                    return true;
                }else{
                    return false;
                }
        }catch(SQLException e){
            String error = e.getMessage();  
            return false;
        }    
    }
    
    public void bdView(StringBuffer out){   
        String sql="select * from final_progra.computadora";
        try{
        starConex();
        out.setLength(0);
        statement= conexion.prepareStatement(sql);                        
        result = statement.executeQuery();            
            if (result!=null){
                while (result.next()){
                out.append("<tr>");
                out.append("<td >").append(result.getString("modelo")).append("</td>");
                out.append("<td >").append(result.getString("tamaño_pantalla")).append("</td>");
                out.append("<td >").append(result.getString("cantidad_ram")).append("</td>");
                out.append("<td >").append(result.getString("almacenamiento")).append("</td>");
                out.append("<td >").append(result.getString("sistema_operativo")).append("</td>");
                out.append("<td >").append(result.getString("marca_codigo")).append("</td>");
                out.append("<td id=\"").append(result.getString("marca_codigo"))
                        .append("\"  onclick=\"eliminarLibro(this.id);\">") 
                        .append(" <a class=\"btn btn-danger\"'> <i class=\"bi bi-trash\"></i> </a>"
                                + " <td></tr>");
                }
            }else{
                out.append("error al consultar");
            }
        }
        catch(SQLException ex){
            ex.printStackTrace();
        }
    }
    
     public String eliminarlibroBd(int codi){        
        String sql = "DELETE FROM computadora WHERE marca_codigo="+codi;              
       try{     
            starConex();
            statement = conexion.prepareStatement(sql); 
            int resultado = statement.executeUpdate();
            if(resultado > 0){
                return String.valueOf(resultado);
            }else{
                return String.valueOf(resultado);
            }
        }catch(SQLException e){ 
            return e.getMessage();
        }
    }
    
    
}

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
public class UsuarioVec {
      UsuarioModell[] tabUsr;
    int ind;
    private LinkStart linkBD;
    private Connection conexion;
    private PreparedStatement statement = null;
    private ResultSet result = null; 
    
    public UsuarioVec(){
        this.tabUsr = new UsuarioModell[100];
        this.ind=0;
    }
    
     public void saveUsr(UsuarioModell usuarios){
        this.tabUsr[this.ind]=usuarios;  
        this.ind=this.ind+1;
    }
    
    public UsuarioModell[] gimmeUsr(){
        return this.tabUsr;
    }
   
    public void starConex(){
        linkBD= new LinkStart();
        conexion=linkBD.conectar();
    }
    
    public boolean saveuserBD(UsuarioModell usuarios){        
        String sql = "INSERT INTO prueba.usuario(usuario, password)";
             sql += " VALUES(?,?)"; 
        try{
            starConex();
            statement = conexion.prepareStatement(sql); 
            statement.setString(1, usuarios.getUser());
            statement.setString(2, usuarios.getPass());
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
        String sql="select * from prueba.usuario";
        try{
        starConex();
        out.setLength(0);
        statement= conexion.prepareStatement(sql);                        
        result = statement.executeQuery();            
            if (result!=null){
                while (result.next()){
                out.append("<tr>");
                out.append("<td >").append(result.getString("usuario")).append("</td>");
                out.append("<td >").append(result.getString("password")).append("</td>");
                out.append("<td id=\"").append(result.getString("usuario"))
                        .append("\"  onclick=\"eliminaruser(this.id);\">") 
                        .append(" <a class=\"btn btn-danger\"'> <i class=\"bi bi-trash\"></i> </a>"
                                + " <td></tr>");
                }
            }else{out.append("error al consultar");}
        }catch(SQLException ex){ex.printStackTrace();}
    }
    
        public void bdViewEditorial(StringBuffer out){   
        String sql="SELECT COUNT(*) FROM prueba.usuario";
        try{
        starConex();
        out.setLength(0);
        statement= conexion.prepareStatement(sql);                        
        result = statement.executeQuery();            
            if (result!=null){
                while (result.next()){
                out.append("<td >").append(result).append("</td>");

                }
            }else{out.append("0");}
        }catch(SQLException ex){ex.printStackTrace();}
    }
    
    
    
     public String eliminaruserBd(int codi){        
        String sql = "DELETE FROM usuario WHERE usuario="+codi;              
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

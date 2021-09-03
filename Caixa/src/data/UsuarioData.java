/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Usuario;

/**
 *
 * @author juanaleixob
 */

public class UsuarioData extends Conexao{
    
    public UsuarioData() throws Exception{}
    
    public boolean incluir(Usuario obj) throws Exception {
        String sql = ("Insert into usuario (nome,cpf,senha) values (?,?,?)");
        PreparedStatement ps = getConexao().prepareStatement(sql);
        ps.setString(1, obj.getNome());
        ps.setString(2, obj.getCpf());
        ps.setString(3, obj.getSenha());
        return ps.executeUpdate() > 0;
    }
public void closeConnection() throws SQLException{
            closeConnection1();
};



    public ArrayList<Usuario> pesquisar(String pesq) throws Exception {
        ArrayList<Usuario> listausuarios = new ArrayList<>();
        String sql = "SELECT * FROM usuario WHERE nome LIKE '" + pesq + "%'order by nome";
        PreparedStatement ps = getConexao().prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            Usuario obj = new Usuario(rs.getString("nome"), rs.getString("cpf"), rs.getString("senha"));
            listausuarios.add(obj);
        }
        return listausuarios;
        }

    public boolean editar(Usuario obj) throws Exception {
        String sql = "Update usuario set nome=?,cpf=?,senha=? where cpf=?";
        PreparedStatement ps = getConexao().prepareStatement(sql);
        ps.setString(1, obj.getNome());
        ps.setString(2, obj.getCpf());
        ps.setString(3, obj.getSenha());
        ps.setString(4, obj.getCpf());
        return ps.executeUpdate() > 0;
    }

    public boolean logar (Usuario obj) throws Exception{
// Manda como parametro para ele duas variaveis para ele procurar no banco de dados!
    
            boolean autenticado = false;
            String sql;
            try {
            sql = "select cpf, senha from usuario where cpf = ? and senha = ?";
            PreparedStatement ps = getConexao().prepareStatement(sql);
            ps.setString(1, obj.getCpf());
            ps.setString(2, obj.getSenha());
 
            ResultSet rs;
            rs = ps.executeQuery();
 
            if (rs.next()) {
                String login = rs.getString("cpf");
                String senhab = rs.getString("senha");
                autenticado = true;
            }
            
            
 }catch (Exception e){
        System.out.println(e);
    }
     return autenticado;   
        }

 public void atualizar(Usuario obj) throws Exception {
        ArrayList<Usuario> listausuarios = new ArrayList<>();
        String sql = "SELECT * FROM usuario WHERE cpf=?";
        PreparedStatement ps = getConexao().prepareStatement(sql);
        ps.setString(1, obj.getCpf());
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            obj.setNome(rs.getString("nome"));
            listausuarios.add(obj);
        }
}
}

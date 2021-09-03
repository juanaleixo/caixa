/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;
import static java.lang.Integer.parseInt;
import model.Conta;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import model.Usuario;
/**
 *
 * @author juan
 */
public class ContaData extends Conexao{
    
    public ContaData() throws Exception{}
    
         Conta conta = new Conta();
         Usuario usuario = new Usuario();
     
        public void atualizar(Conta conta) throws Exception {
        String sql = "SELECT * FROM conta WHERE conta=?";
        PreparedStatement ps = getConexao().prepareStatement(sql);
        ps.setInt(1, conta.getConta());
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            conta.setSaldo(rs.getFloat("saldo"));   
        }
         this.conta = conta;
         }
         
         
         public void atualizarSaldo(int conta, float valor) throws Exception {
        String sql1 = "SELECT saldo FROM conta WHERE conta=?";
        PreparedStatement ps1 = getConexao().prepareStatement(sql1);
        ps1.setInt(1, conta);
        float saldo=0;
        ResultSet rs1 = ps1.executeQuery();
        while(rs1.next()){
            saldo = rs1.getFloat("saldo");
        }
        saldo = saldo + valor;
        rs1.close();
        ps1.close();
             
        String sql2 = "Update conta set saldo=? WHERE conta=?";
        PreparedStatement ps2 = getConexao().prepareStatement(sql2);
        ps2.setFloat(1, saldo);
        ps2.setInt(2, conta);
        ps2.executeUpdate();
        ps2.close();
         }

        public ArrayList<Conta> listar(Usuario usuario) throws Exception {
        ArrayList<Conta> listacontas = new ArrayList<>();
        String cpf = usuario.getCpf();
        String sql1 = "SELECT conta FROM contas_usuario WHERE cpf LIKE '" + cpf + "'order by conta";
        PreparedStatement ps = getConexao().prepareStatement(sql1);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            Conta conta = new Conta(rs.getInt("conta"), 0);
            this.atualizar(conta);
            conta = this.conta;
            listacontas.add(conta);
        }
        rs.close();
        return listacontas;
    }
  

    public boolean reivindicar(String conta, Usuario usuario) throws Exception {
        String sql = ("Insert into contas_usuario (cpf,conta) values (?,?)");
        PreparedStatement ps = getConexao().prepareStatement(sql);
        ps.setString(1, usuario.getCpf());
        ps.setInt(2, Integer.parseInt(conta));
        return ps.executeUpdate() > 0;
    }
   

     public boolean gerar(Usuario usuario) throws Exception {
        int idconta = 0;
        String sql1 = ("Insert into conta (saldo) values (?)");
        PreparedStatement ps1 = getConexao().prepareStatement(sql1, Statement.RETURN_GENERATED_KEYS);
        ps1.setFloat(1, 0);
        ps1.executeUpdate();
        ResultSet rs=ps1.getGeneratedKeys();
        if(rs.next()){
        idconta=rs.getInt(1);
}
        String sql2 = ("Insert into contas_usuario (cpf,conta) values (?,?)");
        PreparedStatement ps2 = getConexao().prepareStatement(sql2);
        ps2.setString(1, usuario.getCpf());
        ps2.setInt(2, idconta);
        return ps2.executeUpdate() > 0;
        
        
    }

//Transações

     public boolean transacao(Conta conta, float valor, int conta_destino) throws Exception {
        //Origem 
         String sql1 = ("INSERT INTO transacao (data, hora, valor, conta_origem, conta_destino, conta) VALUES (CURRENT_DATE, CURRENT_TIME, ?, ?, ?, ?)");
         PreparedStatement ps1 = getConexao().prepareStatement(sql1);
         ps1.setFloat(1, valor*-1);
         ps1.setInt(2, conta.getConta());
         ps1.setInt(3, conta_destino);
         ps1.setInt(4, conta.getConta());
         int i = ps1.executeUpdate();
         //Destino
         String sql2 = ("INSERT INTO transacao (data, hora, valor, conta_origem, conta_destino, conta) VALUES (CURRENT_DATE, CURRENT_TIME, ?, ?, ?, ?)");
         PreparedStatement ps2 = getConexao().prepareStatement(sql2);
         ps2.setFloat(1, valor);
         ps2.setInt(2, conta.getConta());
         ps2.setInt(3, conta_destino);
         ps2.setInt(4, conta_destino);
         
         
         
         return ps2.executeUpdate() > 0;
     } 


 public boolean deposito(Conta conta, float valor) throws Exception {
       
         //Destino
         String sql2 = ("INSERT INTO transacao (data, hora, valor, conta_origem, conta_destino, conta) VALUES (CURRENT_DATE, CURRENT_TIME, ?, ?, ?, ?)");
         PreparedStatement ps2 = getConexao().prepareStatement(sql2);
         ps2.setFloat(1, valor);
         ps2.setInt(2, 0);
         ps2.setInt(3, conta.getConta());
         ps2.setInt(4, conta.getConta());
         
         
         
         return ps2.executeUpdate() > 0;
     } 





}




//





//       public ArrayList<Conta> pesquisar(String pesq, Usuario usuario) throws Exception {
//        ArrayList<Conta> listacontas = new ArrayList<>();
//        String sql1 = "SELECT * FROM contas_usuario WHERE cpf LIKE '"+ usuario.getCpf() +"'";
//        String sql2 = "SELECT * FROM conta WHERE nome LIKE '" + pesq + "%'order by nome";
//        PreparedStatement ps = getConexao().prepareStatement(sql);
//        ResultSet rs = ps.executeQuery();
//        while (rs.next()) {
//            Conta obj = new Conta(rs.getString("Conta"), rs.getString("Saldo"));
//            listacontas.add(obj);
//        }
//        return listacontas;
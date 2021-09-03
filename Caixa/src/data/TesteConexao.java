/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

/**
 *
 * @author juanaleixo
 */
public class TesteConexao {
    public static void main(String[] args) {
        try{
            Conexao c = new Conexao();
            System.out.println("Ok");
            
        } catch (Exception ex) {
            System.out.println("Erro: "+ex.getMessage());
        }
    }
    
}


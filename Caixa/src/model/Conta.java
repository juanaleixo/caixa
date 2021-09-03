/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author juan
 */
public class Conta {
        
    private int conta;
    private float saldo;



    public int getConta() {
        return conta;
    }

    public void setConta(int conta) {
        this.conta = conta;
    }

    public float getSaldo() {
        return saldo;
    }

    public void setSaldo(float saldo) {
        this.saldo = saldo;
    }


 public Conta(int conta, float saldo) {
        this.conta = conta;
        this.saldo = saldo;
    }

  public Conta() {
        conta=0;
        saldo=0;
    }



}

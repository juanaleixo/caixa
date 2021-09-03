/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import data.dbinfofile;
/**
 *
 * @author juanaleixo
 */
public class Conexao {

    dbinfofile file = new dbinfofile();
   

    private int a;
    Connection con;

    public Connection getConexao() {
        return con;
    }

    public void closeConnection1() throws SQLException {
        this.con.close();
    }

    public Conexao() throws SQLException, ClassNotFoundException, IOException {
        String url = file.url();
        String login = file.login();
        String password = file.password();
        String driver = "org.postgresql.Driver";
        Class.forName(driver);
        con = DriverManager.getConnection(url, login, password);
    }
}

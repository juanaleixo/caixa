/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

/**
 *
 * @author juanaleixo
 */
public class dbinfofile {
        
    
    private String file = "conexao.properties";
    
    public String url() throws FileNotFoundException, IOException {
        FileInputStream fis = new FileInputStream(file);
        Properties dbProperties = new Properties();
        dbProperties.load(fis);
        String url = dbProperties.getProperty("url");
        return url;
    }
        public String login() throws FileNotFoundException, IOException {
        FileInputStream fis = new FileInputStream(file);
        Properties dbProperties = new Properties();
        dbProperties.load(fis);
        String login = dbProperties.getProperty("login");
        return login;
    }
            public String password() throws FileNotFoundException, IOException {
        FileInputStream fis = new FileInputStream(file);
        Properties dbProperties = new Properties();
        dbProperties.load(fis);
        String password = dbProperties.getProperty("password");
        return password;
       }
}

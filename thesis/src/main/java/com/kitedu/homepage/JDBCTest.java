package com.kitedu.homepage;

import static org.junit.Assert.fail;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;


public class JDBCTest {

	

    static { 
        try { 
            Class.forName("com.mysql.cj.jdbc.Driver"); 
        } catch(Exception e) { 
            e.printStackTrace(); 
        } 
    } 
    	
    @Test 
    public void testConnection() { 
        try(Connection con = DriverManager.getConnection( 
                "jdbc:mysql://localhost:3306/mysql?serverTimezone=Asia/Seoul", 
                "root", 
                "chunjae3412!")){ 
            System.out.println(con); 
        } catch (Exception e) { 
            fail(e.getMessage()); 
        } 
    
    }    
    
    
}
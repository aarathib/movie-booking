/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booking.bookingmanager;
import java.sql.Connection;
import java.sql.*;

/**
 *
 * @author AARATHI
 */
public class Database {
    public static Connection getConnection(){
		Connection con=null;
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/theatresystem","root","password");
		}catch(Exception e){System.out.println(e);}
		return con;
	}
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booking.bookingmanager;
import java.sql.*;

/**
 *
 * @author AARATHI
 */
public class UserDao {
    public static String presentid;
    public static boolean validate(String name,String password){
        boolean status=false;
            try {
                Connection con = Database.getConnection();
                PreparedStatement ps=con.prepareStatement("select * from user where username=? and pswd=?");
                ps.setString(1,name);
                ps.setString(2,password);
                ResultSet rs=ps.executeQuery();
                status=rs.next();
            presentid = rs.getString("username");
            }catch(Exception e){System.out.println(e);}
        return status;
    }
}

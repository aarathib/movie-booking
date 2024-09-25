/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booking.bookingmanager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author AARATHI
 */
public class ShowDao {
    public static String getTname(String tname){
        String name="";
        try{
            Connection conn=Database.getConnection();
            PreparedStatement st=conn.prepareStatement("SELECT TNAME FROM THEATRE WHERE THEATRENAME=?;");
            st.setString(1, tname);
            ResultSet rs=st.executeQuery();
            rs.next();
            name = rs.getString("tname");
        }catch(Exception e){
            e.printStackTrace();
        }
        return name;
    }
    
    public static int getMovie(String title){
        int id=0;
        try{
            Connection conn=Database.getConnection();
            PreparedStatement st=conn.prepareStatement("SELECT movieid FROM movie WHERE title=?;");
            st.setString(1, title);
            ResultSet rs=st.executeQuery();
            rs.next();
            id=rs.getInt("movieid");
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return id;
    }
    
}

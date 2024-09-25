/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.booking.bookingmanager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Time;
import java.text.SimpleDateFormat;
import java.util.Calendar;

/**
 *
 * @author AARATHI
 */
public class TheatreDao {
    public static String presentid;
    public static boolean validate(String name,String password){
        boolean status=false;
            try {
                Connection con = Database.getConnection();
                PreparedStatement ps=con.prepareStatement("select * from theatre where tname=? and pswd=?");
                ps.setString(1,name);
                ps.setString(2,password);
                ResultSet rs=ps.executeQuery();
                status=rs.next();
            presentid = rs.getString("tname");
            }catch(Exception e){System.out.println(e);}
        return status;
    }
    
    public static int delete(int id){
		int status=0;
		try{
			Connection con = Database.getConnection();
			PreparedStatement ps = con.prepareStatement("DELETE FROM theatresystem.showt WHERE SHOWID=? AND TNAME=?;");
			ps.setInt(1,id);
			ps.setString(2,presentid);
			status = ps.executeUpdate();
			con.close();
		}catch(Exception e){System.out.println(e);}
		return status;
    }
    
    public static int addTheatre(int n,String date,Time t,int id,int price,int capacity){
		int status=0;
                String destDate;
		try{
			Connection con = Database.getConnection();
                        for(int i=0;i<n;i++){
                            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                            Calendar calendar = Calendar.getInstance();
                            calendar.setTime(sdf.parse(date)); 
                            calendar.add(Calendar.DATE, i); 
                            destDate = sdf.format(calendar.getTime());
                            String sql="INSERT INTO theatresystem.showt(date,movieid,tname,time,price,rseats,tseats) VALUES(?,?,?,?,?,?,?);";
                            PreparedStatement ps = con.prepareStatement(sql);
                            ps.setString(1,destDate);
                            ps.setInt(2,id);
                            ps.setString(3,presentid);
                            ps.setTime(4, t);
                            ps.setInt(5,price);
                            ps.setInt(6,capacity);
                            ps.setInt(7,capacity);
                            status = ps.executeUpdate();
                        }
			con.close();
		}catch(Exception e){System.out.println(e);}
		return status;
        
    }
    public static int add(String uname,String pswd){
        int status=0;
	try{
            Connection con = Database.getConnection();
            String sql="INSERT INTO theatresystem.theatre(tname,pswd) VALUES(?,?);";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1,uname);
            ps.setString(2,pswd);
            status = ps.executeUpdate();
            con.close();
	}catch(Exception e){
            System.out.println(e);
        }
        return status;
    }
}

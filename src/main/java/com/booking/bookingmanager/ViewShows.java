package com.booking.bookingmanager;

import java.awt.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;

import javax.swing.*;
import javax.swing.border.EmptyBorder;

public class ViewShows extends JFrame {

    private JPanel contentPane;
    private JTable table;

    public static void main(String[] args) {
	EventQueue.invokeLater(new Runnable() {
	public void run() {
            try {
		ViewShows frame = new ViewShows();
		frame.setVisible(true);
		frame.setTitle("Your Shows");
		frame.getContentPane().setBackground(Color.WHITE);
            } catch (Exception e) {
		e.printStackTrace();
                }
            }		
	});
    }

	/**
	 * Create the frame.
	 */
    public ViewShows() {
	setDefaultCloseOperation(JFrame.HIDE_ON_CLOSE);
	setBounds(100, 100, 450, 300);
	contentPane = new JPanel();
	contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
	contentPane.setLayout(new BorderLayout(0, 0));
	setContentPane(contentPane);
		
	String data[][]=null;
	String column[]=null;
	try{
            Connection con=Database.getConnection();
            String sql="SELECT M.TITLE,S.DATE,S.TIME,S.RSEATS,S.PRICE FROM (SELECT DATE,TIME,PRICE,RSEATS,MOVIEID FROM theatresystem.SHOWT WHERE TNAME=?)AS S JOIN (SELECT TITLE,MOVIEID FROM theatresystem.movie)AS M ON(S.MOVIEID=M.MOVIEID);";
            PreparedStatement ps=con.prepareStatement(sql,ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
            ps.setString(1, TheatreDao.presentid);
            ResultSet rs=ps.executeQuery();
			
            ResultSetMetaData rsmd=rs.getMetaData();
            int cols=rsmd.getColumnCount();
            column=new String[cols];
            for(int i=1;i<=cols;i++)
		column[i-1]=rsmd.getColumnName(i);
            
            rs.last();
            int rows=rs.getRow();
            rs.beforeFirst();

            data=new String[rows][cols];
            int count=0;
            while(rs.next()){
                for(int i=1;i<=cols;i++)
                    data[count][i-1]=rs.getString(i);
                count++;
                        
            }
            con.close();
        }catch(Exception e){
                System.out.println(e);
            }
		
        table = new JTable(data,column);
	JScrollPane sp=new JScrollPane(table);
		
	contentPane.add(sp, BorderLayout.CENTER);
	}
}

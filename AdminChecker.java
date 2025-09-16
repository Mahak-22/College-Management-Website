/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import db.DBConnection;
import dto.AdminDto;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author mahak
 */
public class AdminChecker 
{
    public boolean isAdminLogin(AdminDto admin)
    {
        String id = admin.getID();
        String password = admin.getPassword();
        
        String tablePass ="";
        
        try
        {
            Statement st = DBConnection.getStatement();
            String query = "SELECT admin_password FROM admin WHERE admin_id = '"+id+"'";
            
            System.out.println("Query = "+query);
            ResultSet rs = st.executeQuery(query);
            
            if(rs.next())
            {
                tablePass = rs.getString("admin_password");
                System.out.println(tablePass);
            }
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        
        if( password.equals(tablePass))
        {
            return true;
        }
        else
        {
           return false;
        }
    }
}

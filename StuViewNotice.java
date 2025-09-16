/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import db.DBConnection;
import dto.NoticeDto;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class StuViewNotice 
{
    public NoticeDto isViewNotice(String regarding)
    {
        NoticeDto dto = new NoticeDto();
        
        try
        {
            Statement st = DBConnection.getStatement();
            String query = "SELECT notice FROM notices WHERE regarding = '"+regarding+"' ";
            
            System.out.println("Query = "+query);
            
            ResultSet rs = st.executeQuery(query);
            
            if(rs.next())
            {
                dto.setNotice(rs.getString(1));
                return dto;
            }
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        return null;
    }
}

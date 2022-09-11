package com.hakim.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Hakim
 */
public class CategoryDao {
    private Connection con;
    
    public CategoryDao(Connection con){
        this.con=con;
    }
    
    public boolean deleteCategory(int cid){
        boolean deleted=false;
        try(PreparedStatement statement=con.prepareStatement("delete from categories where cid = ?");){
            statement.setObject(1, cid);
            statement.execute();
            deleted=true;
                        
        } catch (SQLException ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return deleted;
    }
}

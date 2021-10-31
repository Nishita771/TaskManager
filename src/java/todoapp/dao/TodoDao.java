/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package todoapp.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;
import todoapp.model.Todo;
import todoapp.utils.JdbcUtils;


public class TodoDao {

    private static final String INSERT_TODOS_Oracle = "insert into todos" +
        "  (username, description) values " + " (?, ?);";

    private static final String SELECT_TODO_BY_ID = "select id,title,username,description from todos where id =?";
    private static final String SELECT_ALL_TODOS = "select * from todos";
    public TodoDao() {}

    public static void insertTodo(Todo todo) throws SQLException {
       
        try
        {
            Connection conn=JdbcUtils.getConnection();
            PreparedStatement ps=conn.prepareStatement("Insert into todos values(?,?,?)");
            ps.setString(1,todo.getTitle());
            ps.setString(2,todo.getUsername());
            ps.setString(3,todo.getDescription());
            ps.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("An error has occurred.");
          System.out.println("See full details below.");
          ex.printStackTrace();
        }
    }


    public static List < Todo > selectAllTodos(String uname) {

        List < Todo > todos = new ArrayList < > ();        
        try{
            Connection connection = JdbcUtils.getConnection();
            PreparedStatement ps = connection.prepareStatement("select * from todos where username=?");
            ps.setString(1, uname);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {                
                String title = rs.getString("title");
                String username = rs.getString("username");
                String description = rs.getString("description");
                todos.add(new Todo(title, username, description));
            }
        } catch (SQLException ex) {
            System.out.println("An error has occurred.");
          System.out.println("See full details below.");
          ex.printStackTrace();
        }
        return todos;
    }

 
}

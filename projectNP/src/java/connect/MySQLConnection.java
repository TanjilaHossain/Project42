
package connect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author User
 */
public class MySQLConnection {
    public static Connection conn=null;
    public static Connection ConnectTo()
    {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver Loaded..........");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql","root","12345");
            System.out.println("Connected..........");
        
        } catch (Exception ex) {

            ex.printStackTrace();
        }
        return conn;
    }
    public static void main(String a[])
    {
        ConnectTo();
    }
}

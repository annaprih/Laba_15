import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * Created by Anna on 28.04.2017.
 */
public class ConnectionDB {
public static Connection getConnectionDB() throws SQLException, ClassNotFoundException{
    Class.forName("com.mysql.jdbc.Driver");
    return DriverManager.getConnection("jdbc:mysql://localhost/java11", "root", "80291227107");
    }
}

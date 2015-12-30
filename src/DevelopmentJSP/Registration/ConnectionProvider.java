package DevelopmentJSP.Registration;

import java.sql.*;

import static DevelopmentJSP.Registration.Provider.*;

public class ConnectionProvider {
    static Connection con = null;

    static {
        try {
            Class.forName(DRIVER);
            con = DriverManager.getConnection(CONNECTION_URL, USERNAME, PASSWORD);
        } catch (Exception e) {
        }
    }

    public static Connection getCon() {
        return con;
    }
}
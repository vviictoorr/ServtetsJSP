package DevelopmentJSP.LoginLogout;

import java.sql.*;

import static DevelopmentJSP.LoginLogout.Provider.*;

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

package models;

import java.sql.*;

public class DbConnection {
    public String driver = "com.mysql.cj.jdbc.Driver";

    public Connection getConnection() throws ClassNotFoundException{
        Connection connection = null;

        try {
            Class.forName(driver);
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/tp_integrador_codo_a_codo", "root", "1234");
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }

        return connection;
    }

    public static void main(String[] args) throws ClassNotFoundException, SQLException{
        Connection connection = null;
        DbConnection con = new DbConnection();
        connection = con.getConnection();

        PreparedStatement statement;
        ResultSet rs;

        statement = connection.prepareStatement("select * from members");
        rs=statement.executeQuery();

        while(rs.next()) {
            String name = rs.getString("memberName");
            System.out.println("el nombre es: " + name);
        }
    }
}

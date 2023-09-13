package el.dao;
import java.sql.*;

public class DAO 
	{
    Connection con;
    public DAO() {
        try {
        	Class.forName("oracle.jdbc.driver.OracleDriver");
            System.out.println("Oracle JDBC driver loaded successfully");
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "elearner", "rk");
            System.out.println("Connected to the Oracle database successfully");
            } 
            catch (ClassNotFoundException ex) {
            System.out.println("Not loaded................");
            System.out.println(ex);
            } 
            catch (SQLException ex) {
            System.out.println("Not Connected................");
            System.err.println(ex);
            }
    }

    public boolean doRegister(String username, String password,String phone,String mail,String role) {
        boolean flag = false;
        try {
            PreparedStatement pstmt = con.prepareStatement("insert into users values(?,?,?,?,?)");
            pstmt.setString(1, username);
            pstmt.setString(2, password);
            pstmt.setString(3,phone);
            pstmt.setString(4,mail);
            pstmt.setString(5, role);

            int r = pstmt.executeUpdate();
            if (r > 0) {
                flag = true;
            }
        } catch (SQLException ex) {
            System.out.println("Error while registering user................");
            System.err.println(ex);
        }
        return flag;
    }

    public String loginCheck(String username,String pwd)
	{
				String role=null;
				try {
				PreparedStatement pstmt=con.prepareStatement("select role from users where username=? and password=?");
				pstmt.setString(1,username);
				pstmt.setString(2,pwd);
				ResultSet rs= pstmt.executeQuery();
				if(rs.next())
				{
					role=rs.getString("role");
				}
				
				}catch(SQLException ex)
				{	System.err.println("Error while checking userid/pwd");
					System.out.println(ex);
				}
				return role;
	}
    public static void main(String args[]) {
        new DAO();
    }
}

package abcbook;

/*  MySQL JAVA Queries With Comments
 *  ----------------------------------------------------------------------
 */
import java.sql.*;
import javax.swing.JFrame;
import javax.swing.JOptionPane;

public class Db_Abc {

    private final String database;
    private final String username;
    private final String password;

    public String sql;
    public ResultSet rs;
    public Statement st;

    public Db_Abc() {

        this.database = "abcbook_aslam";
        this.username = "root";
        this.password = "";
    }

    public void setQuery(String q) {

        this.sql = q;
    }

    public boolean startDb() {
        JFrame frame = new JFrame("Error Database");

        boolean ok = false;
        try {

            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/" + this.database, this.username, this.password);
            System.out.println("Request DB connection from Db_Abc... ");

            conn.createStatement();
            st = conn.createStatement();
            ok = true;

        } catch (ClassNotFoundException ex) {
            System.out.println("Error StartDB 1 from Db_Abc" + ex.getMessage());
            JOptionPane.showMessageDialog(frame, "Database is error please check it", "Error", JOptionPane.ERROR_MESSAGE);
            ok = false;
        } catch (SQLException ex) {
            System.out.println("Error  StartDB 2 from Db_Abc" + ex.getMessage());
            JOptionPane.showMessageDialog(frame, "Database is error please check it", "Error", JOptionPane.ERROR_MESSAGE);
            ok = false;
        }
        return ok;
    }

    public boolean uidQuery(String qr) {
        boolean ok = false;
        setQuery(qr);
        try {

            if (st.executeUpdate(sql) == 1) {
                System.out.println("uidQuery Success");
                ok = true;
            } else {
                System.out.println("uidQuery Unsuccess");
                ok = false;
            }

        } catch (SQLException ex) {
            System.out.println("Error on UID " + ex.getMessage());
        }
        return ok;
    }

    public boolean ifDataFound(String fq) {

        boolean ok = false;
        setQuery(fq);
        try {

            rs = st.executeQuery(sql);

            while (rs.next()) {
                ok = true;
            }

        } catch (SQLException ex) {
            System.out.println("Error ifDataFound " + ex.getMessage());
            ok = false;
        }
        return ok;
    }

    public boolean ifDataFound(int fq) {

        boolean ok = false;
        setQuery("SELECT * from books WHERE id = " + fq);
        try {

            rs = st.executeQuery(sql);

            while (rs.next()) {
                ok = true;
            }

        } catch (SQLException ex) {
            System.out.println("Error ifDataFound " + ex.getMessage());
            ok = false;
        }
        return ok;
    }

}

package abcbook;

public class User_Abc {

    private final Db_Abc dbConnection = new Db_Abc();

    private String user;
    private String password;

    public User_Abc() {

        dbConnection.startDb();

    }

    public void setUser(String user) {
        this.user = user;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUser() {
        return user;
    }

    public boolean isAdmin() {

        return this.dbConnection.ifDataFound("SELECT * FROM users WHERE username = '" + this.user + "' and role = 'Admin'");

    }

    public boolean isActive() {

        return this.dbConnection.ifDataFound("SELECT * FROM users WHERE username = '" + this.user + "' and status = 'Active'");

    }

    public boolean canLogin() {

        return this.dbConnection.ifDataFound("SELECT * FROM users WHERE username = '" + this.user + "' and password = '" + this.password + "' and status = 'Active'");

    }

    public boolean isExist() {

        return this.dbConnection.ifDataFound("SELECT * FROM users WHERE username = '" + this.user + "'");

    }

    public boolean forgotAction() {

        return this.dbConnection.uidQuery("UPDATE users SET forgotpassword = 'y' WHERE username = '" + this.user + "'");

    }

}

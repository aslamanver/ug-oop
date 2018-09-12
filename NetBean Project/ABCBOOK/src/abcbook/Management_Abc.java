package abcbook;

/*  MySQL JAVA Queries With Comments
 *  ----------------------------------------------------------------------
 */

public class Management_Abc extends Db_Abc {

    private String currentUser;

    public Management_Abc() {
        super.startDb();
    }

    public void setCurrentUser(String cu) {

        this.currentUser = cu;

    }

    public String getCurrentUser() {

        return this.currentUser;

    }

    public boolean ifUserFound(String id) {

        return ifDataFound("SELECT * FROM users WHERE username = '" + id + "' OR id = '" + id + "'");

    }

    public boolean ifBookFound(String id) {

        return ifDataFound("SELECT * FROM books WHERE id = '" + id + "'");
    }

    public void getAllBooks() {

        this.sql = "SELECT * FROM books";
    }

    public void getAllCategories() {

        this.sql = "SELECT DISTINCT category FROM books";
    }

    public void getUsers() {

        this.sql = "SELECT * FROM users";
    }

    public void myProfile() {

        this.sql = "SELECT * FROM users WHERE username= '" + this.currentUser + "'";
    }

    public boolean isAdmin() {
        return ifDataFound("SELECT * FROM users WHERE role = 'Admin' and username = '" + this.currentUser + "'");
    }

    public void forgotTable() {
        this.sql = "SELECT * FROM users WHERE status = 'Active' and forgotpassword = 'y'";
    }

    public boolean updateBook(String name, String author, String category, int stock, String barcode, String whereID) {

        return uidQuery("UPDATE books SET name='" + name + "', author='" + author + "', category='" + category + "', stock='" + stock + "', barcode='" + barcode + "' WHERE id = '" + whereID + "'");

    }

    public boolean deleteUser(String id) {
        return uidQuery("DELETE FROM users WHERE id = '" + id + "'");
    }

    public boolean deleteBook(String id) {
        return uidQuery("DELETE FROM books WHERE id = '" + id + "'");
    }

    public void viewBook(String id) {
        this.sql = "SELECT * FROM books WHERE id = '" + id + "'";
    }

    public boolean updateUsers(String password, String name, String jd, String tel, String whereUsername) {
        return uidQuery("UPDATE users SET password='" + password + "', name='" + name + "', joindate='" + jd + "', tel='" + tel + "' WHERE username='" + whereUsername + "'");
    }

    public boolean solveForgotPassword(String password, String id) {
        return uidQuery("UPDATE users SET forgotpassword = 'n', password = '" + password + "' WHERE id = '" + id + "'");
    }

    public boolean updateUsers(String username, String password, String name, String status, String joindate, String tel, String role, String whereID) {
        return uidQuery("UPDATE users SET username = '" + username + "', password = '" + password + "', name = '" + name + "', status = '" + status + "', joindate = '" + joindate + "', tel = '" + tel + "', role = '" + role + "' WHERE id = '" + whereID + "'");
    }

    public void usersOrderBy(String item) {
        this.sql = "SELECT * FROM users ORDER BY " + item + " ASC";
    }

    public boolean insertBook(String name, String author, String category, int stock, String date, String addedby, String barcode) {
        return uidQuery("INSERT INTO books (name,author,category,stock,date,addedby,barcode) VALUES ('" + name + "','" + author + "','" + category + "'," + stock + ",'" + date + "','" + addedby + "'," + barcode + ")");

    }

    public boolean insertUsers(String name, String username, String password, String status, String joindate, String tel, String role) {
        return uidQuery("INSERT INTO `users`(`name`, `username`, `password`, `status`, `joindate`, `forgotpassword`, `tel`, `role`) VALUES ('" + name + "','" + username + "','" + password + "','" + status + "','" + joindate + "','n','" + tel + "','" + role + "')");
    }
}

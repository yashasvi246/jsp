import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
 
public class CategoryDAO {
    String databaseURL = "jdbc:mysql://localhost:3306/yashasvi";
    String user = "root";
    String password = "root";
     
    public List<Category> list() throws SQLException {
        List<Category> listCategory = new ArrayList<>();
         
        try (Connection connection = DriverManager.getConnection(databaseURL, user, password)) {
            String sql = "SELECT * FROM category_table ORDER BY category_name";
            Statement statement = connection.createStatement();
            ResultSet result = statement.executeQuery(sql);
             
            while (result.next()) {
                int id = result.getInt("category_id");
                String name = result.getString("category_name");
                Category category = new Category(id, name);
                     
                listCategory.add(category);
            }          
             
        } catch (SQLException ex) {
            ex.printStackTrace();
            throw ex;
        }      
         
        return listCategory;
    }
}

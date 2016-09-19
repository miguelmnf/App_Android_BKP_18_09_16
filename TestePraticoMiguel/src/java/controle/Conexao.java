/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;
    
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/*public class Conexao {
	public Connection getConexao() {
		Connection conexao = null;
		String usuario = "postgres";
		String senha = "123";
		String nomeBancoDados = "Gerenciar";
 
		try {
			Class.forName("org.postgresql.Driver");
			conexao = DriverManager.getConnection("jdbc:postgresql://localhost:5432/" + nomeBancoDados,
					 usuario, senha);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conexao;
	}
}
*/
    public final class Conexao{
    public static Connection conectar(){
        // base de dados é "test"
            String url = "jdbc:postgresql://localhost:5432/Gerenciar";  
            String usuario = "postgres";  
            String senha = "123"; 
        
        try{
           Class.forName("org.postgresql.Driver").newInstance();
           Connection conn = DriverManager.getConnection(url, usuario, senha);
           return conn;
        } 
        catch(SQLException ex){
           System.err.println("SQLException: " + ex.getMessage());
           System.err.println("SQLState: " + ex.getSQLState());
           System.err.println("VendorError: " + ex.getErrorCode());
           return null;
        }
        catch(Exception e){
           System.err.println("Problemas ao tentar conectar com o banco de dados");
           return null; 
        }
    }
   }

package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * データベース接続(PostgreSQL)
 * URL:
 * USER:
 * PASSWORD:
 * @author sunlit
 *
 */
public class DbConnect {
	public static void main(String[] args) {
		Connection conn = null;
		Statement stmt = null;
		ResultSet rset = null;

		//接続文字列
		String url = "jdbc:postgresql://123.45.67.89.5432/postgres";
		String user = "postgres";
		String password = "password";

		try {
			//PostgreSQLへの接続
			conn = DriverManager.getConnection(url, user, password);

			//自動コミットOFF
			conn.setAutoCommit(false);

			//SELECT文の実行
		}
		catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			try {
				if(rset != null)rset.close();
				if(stmt != null)stmt.close();
				if(conn != null)conn.close();
			}
			catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}

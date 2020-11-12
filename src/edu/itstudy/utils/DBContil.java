package edu.itstudy.utils;

import java.sql.DriverManager;
import java.sql.SQLException;

import java.sql.*;

public class DBContil {

	private static final String URL = "jdbc:mysql://localhost:3306/csustnet?characterEncoding=utf8&useServerPrepStmts = true&cachePrepStmts = true";
	private static final String USER = "root";
	private static final String PASSWORD = "cuiwenxuan";
	private static final String DRIVERPATH = "com.mysql.jdbc.Driver";
	private static Connection conn = null;
	static {
		try {
			Class.forName(DRIVERPATH);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 获取JDBC Connection对象
	 * 
	 * @return
	 */
	public static Connection getConn(){
		synchronized (DBContil.class) {
			try {
				if (null == conn || conn.isClosed()) {
					synchronized (DBContil.class) {
						try {
							conn = (Connection) DriverManager.getConnection(URL, USER, PASSWORD);
						} catch (SQLException e) {
							e.printStackTrace();
						}
					}
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return conn;
	}
	/**
	 * 关闭JDBC相关对象，释放资源
	 * 
	 * @param conn
	 * @param pstmt
	 * @param stmt
	 * @param rs
	 */
	public static void close(Connection conn, PreparedStatement pstmt, Statement stmt, ResultSet rs) {
		// 关闭资源
		try {
			if (null != rs)
				rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (null != stmt)
					stmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				try {
					if (null != pstmt)
						pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				} finally {
					try {
						if (null != conn)
							conn.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
				}
			}
		}
	}
}
//hello
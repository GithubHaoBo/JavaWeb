package com.hob.po;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.sql.Date;

import com.hob.po.MyUser;

public class UserDao {

	private String url = "jdbc:mysql://localhost:3306/train";
	private String user = "root";
	private String password = "123456";
	private String driverClass = "com.mysql.jdbc.Driver";

	public int addUser(MyUser myUser) throws Exception {
		String sql = "insert into user values (?,?,?,?,?) ";
		Class.forName(driverClass);
		Connection conn = DriverManager.getConnection(url, user, password);

		PreparedStatement pStatement = conn.prepareStatement(sql);

		pStatement.setInt(1, myUser.getUserId());
		pStatement.setString(2, myUser.getUsername());
		pStatement.setString(3, myUser.getPassword());
		pStatement.setString(4, myUser.getSex());
		pStatement.setDate(5, (Date) myUser.getCreateTime());

		int row = pStatement.executeUpdate();
		conn.close();
		return row;

	}

	public static void main(String[] args) throws Exception {
		Date date = new Date(System.currentTimeMillis());
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
//		String strdate = sdf.format(date);
		MyUser myUser = new MyUser(991, "yee", "123", "女", date);
		int row = new UserDao().addUser(myUser);
		System.out.println(row);
	}

}

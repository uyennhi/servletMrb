package utils;

import java.sql.Connection;
import java.sql.DriverManager;

public class dungchung {
	public Connection cn;
	public void KetNoi() throws Exception{
		//b1: xac dinh he quan tri co so du lieu
	//	Connection conn = null;
		String url = "jdbc:mysql://localhost:3306/contact";
		Class.forName ("com.mysql.cj.jdbc.Driver").newInstance ();
		cn = DriverManager.getConnection (url, "root", "uyennhi");
		System.out.print("Kết nối thành công");
	}
}

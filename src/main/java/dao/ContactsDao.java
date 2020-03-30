package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

import bean.ContactsBean;

import utils.dungchung;

public class ContactsDao {
	dungchung dc = new dungchung();
	public ArrayList<ContactsBean> getcontacs() throws Exception{
		ArrayList<ContactsBean> ds = new ArrayList<ContactsBean>();
		//B1: ket noi vao csdl
		dc.KetNoi();
		String sql = "SELECT * FROM contacts";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();
		while(rs.next()) {
			 String firstName = rs.getString("FirstName");
			 String lastName = rs.getString("LastName");
			 
			 Date birthDate = rs.getDate("BirthDate");
			 
			 ContactsBean s = new ContactsBean(firstName, lastName, birthDate);
			 ds.add(s);
		}
		rs.close();
		dc.cn.close();
		return ds;
	}
	
	public ArrayList<ContactsBean> getcontacsInfo() throws Exception{
		ArrayList<ContactsBean> ds = new ArrayList<ContactsBean>();
		//B1: ket noi vao csdl
		dc.KetNoi();
		String sql = "SELECT * FROM contacts";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();
		while(rs.next()) {
			 String firstName = rs.getString("FirstName");
			 String lastName = rs.getString("LastName");
			 
			 Date birthDate = rs.getDate("BirthDate");
			 String description = rs.getString("Description");
			 int id =  rs.getInt("id");
			 ContactsBean s = new ContactsBean(firstName, lastName, birthDate, description, id);
			 ds.add(s);
		}
		rs.close();
		dc.cn.close();
		return ds;
	}
	
	public ArrayList<ContactsBean> getcontact(String idtmp) throws Exception{
		ArrayList<ContactsBean> ds = new ArrayList<ContactsBean>();
		//B1: ket noi vao csdl
		dc.KetNoi();
		String sql = "SELECT * FROM contacts Where id =?";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		cmd.setString(1, idtmp);
		ResultSet rs = cmd.executeQuery();
		while(rs.next()) {
			 String firstName = rs.getString("FirstName");
			 String lastName = rs.getString("LastName");
			 
			 Date birthDate = rs.getDate("BirthDate");
			 String description = rs.getString("Description");
			 int id =  rs.getInt("id");
			 ContactsBean s = new ContactsBean(firstName, lastName, birthDate, description, id);
			 ds.add(s);
		}
		rs.close();
		dc.cn.close();
		return ds;
	}
	
	public int Them(String firstName,String lastName, String BirthDate, String Description)  throws Exception{
		dc.KetNoi();
		
		String sql = "INSERT INTO contacts (FirstName, LastName, BirthDate, Description)" + 
				"VALUES (?, ?, ?, ?)";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		cmd.setString(1, firstName);
		cmd.setString(2, lastName);
		cmd.setDate(3, java.sql.Date.valueOf(BirthDate));
		cmd.setString(4, Description );
		int kq = cmd.executeUpdate();
		dc.cn.close();
		//neu trung ma thi thoat
		//nguoc lai thi them vao 1 loai
		//b1: ket noi; b2: thiet lap cau lenh sql; b3: tao cau lenh
		//b4: truyen than so vao cau lenh; b5 : chay cau lenh: b6: dong ket noi
		return kq;
	}
	
	public int Sua(String firstName, String lastName, String BirthDate, String Description, int id) throws Exception {
		
		dc.KetNoi();

		String sql = "UPDATE contacts SET FirstName = ?, LastName = ?, BirthDate = ?, Description = ? WHERE id= ?";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		cmd.setString(1, firstName);
		cmd.setString(2, lastName);
		cmd.setDate(3, java.sql.Date.valueOf(BirthDate));
		cmd.setString(4, Description);
		cmd.setInt(5, id);
		int kq = cmd.executeUpdate();
		dc.cn.close();
		System.out.println("Ket qua" + kq);
		return kq;
	}
}

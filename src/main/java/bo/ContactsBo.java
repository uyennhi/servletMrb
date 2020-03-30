package bo;

import java.util.ArrayList;

import bean.ContactsBean;
import dao.ContactsDao;


public class ContactsBo {
	ContactsDao s = new ContactsDao();
	public ArrayList<ContactsBean> getcontacs() throws Exception{
		return s.getcontacs();
	}
	
	public ArrayList<ContactsBean> getcontacsInfo() throws Exception{
		return s.getcontacsInfo();
	}
	
	public ArrayList<ContactsBean> getcontact(String idtmp) throws Exception{
		return s.getcontact(idtmp);
	}
	public int Them(String firstName,String lastName, String BirthDate, String Description)  throws Exception{
		return s.Them(firstName, lastName, BirthDate, Description);
	}
	public int Sua(String firstName,String lastName, String BirthDate, String Description, int id)  throws Exception{
		return s.Sua(firstName, lastName, BirthDate, Description, id);
	}
}

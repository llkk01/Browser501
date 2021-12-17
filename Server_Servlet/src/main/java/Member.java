import java.sql.Date;

public class Member {

	private String id;
	private String password;
	private String name;
	private String address;
	private String tel;
	private Date reg_date;
	
	public Member() {

	}

	public Member(String id, String password, String name, String address, String tel, Date reg_date) {
		super();
		this.id = id;
		this.password = password;
		this.name = name;
		this.address = address;
		this.tel = tel;
		this.reg_date = reg_date;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public Date getReg_date() {
		return reg_date;
	}

	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	
}
import java.sql.Date;

public class Member {

	private String id;
	private String password;
	private String name;
	private Date reg_date;
	
	public Member() {
		// TODO Auto-generated constructor stub
	}

	public Member(String id, String password, String name, Date reg_date) {
		super();
		this.id = id;
		this.password = password;
		this.name = name;
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

	public Date getReg_date() {
		return reg_date;
	}

	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	
	
	
}

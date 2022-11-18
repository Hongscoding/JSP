package vo;

public class CustomerVO {
	private int custId;
	private String cusname;
	private String cusaddr;
	private String cushp;
	
	public int getCustId() {
		return custId;
	}
	public void setCustId(int custId) {
		this.custId = custId;
	}
	public void setCustId(String custId) {
		this.custId = Integer.parseInt(custId);
	}
	public String getCusname() {
		return cusname;
	}
	public void setCusname(String cusname) {
		this.cusname = cusname;
	}
	public String getCusaddr() {
		return cusaddr;
	}
	public void setCusaddr(String cusaddr) {
		this.cusaddr = cusaddr;
	}
	public String getCushp() {
		return cushp;
	}
	public void setCushp(String cushp) {
		this.cushp = cushp;
	}
	
	
}

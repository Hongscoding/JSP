package vo;

public class BookVO {
	private int bno;
	private String bname;
	private String bpub;
	private int bpric;
	
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public void setBno(String bno) {
		this.bno = Integer.parseInt(bno);
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public String getBpub() {
		return bpub;
	}
	public void setBpub(String bpub) {
		this.bpub = bpub;
	}
	public int getBpric() {
		return bpric;
	}
	public void setBpric(int bpric) {
		this.bpric = bpric;
	}
	public void setBpric(String bpric) {
		this.bpric = Integer.parseInt(bpric);
	}
}

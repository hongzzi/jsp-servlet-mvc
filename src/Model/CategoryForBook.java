package Model;

public class CategoryForBook {
	private int no;
	private String title;
	private String Ctitle[];
	private int cateNo;
	
	
	public String[] getCtitle() {
		return Ctitle;
	}
	public void setCtitle(String[] ctitle) {
		Ctitle = ctitle;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getCateNo() {
		return cateNo;
	}
	public void setCateNo(int cateNo) {
		this.cateNo = cateNo;
	}
	

}

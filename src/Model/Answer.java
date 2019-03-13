package Model;

import java.util.Date;

public class Answer {
	private static String name ="°ü¸®ÀÚ";
	public static String getName() {
		return name;
	}

	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	private String title, content;
	private Date regDate;
}

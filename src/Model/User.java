package Model;

public class User {
	private String id, name, pw, nick, phone, email;
	private String favorite = "";
	private int gender;
	public void setGender(int gender) {
		this.gender = gender;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public int getGender() {
		return gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getFavorite() {
		return this.favorite;
	}
	public void setFavorite(String[] favorite) {
		for(int i=0; i<favorite.length; i++){
			if(i == favorite.length-1){
				this.favorite += favorite[i];
			}else{
				this.favorite += favorite[i]+"&";
			}
			
			
		}
		
	}
	
}

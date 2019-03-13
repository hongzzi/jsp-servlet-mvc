package Model;

	private int no; // ���� �ε���
	private String name,author,publisher, p_date;
	private String img;
	private String editor;
	private String category;
	private String[] tableOfcontent;//����,����
	private String ISBN;
	private String book;
	
	 private String title;
	    private String link;
	    private String image;
	   
	    private String price;
	   
	   
	    private String pubdate;
	    private String description;
	   
	    public String getTitle() {
	        return title;
	    }
	    public void setTitle(String title) {
	        this.title = title;
	    }
	    public String getLink() {
	        return link;
	    }
	    public void setLink(String link) {
	        this.link = link;
	    }
	    public String getImage() {
	        return image;
	    }
	    public void setImage(String image) {
	        this.image = image;
	    }
	  
	    public String getPrice() {
	        return price;
	    }
	    public void setPrice(String price) {
	        this.price = price;
	    }

	
	    public String getPubdate() {
	        return pubdate;
	    }
	    public void setPubdate(String pubdate) {
	        this.pubdate = pubdate;
	    }
	    public String getDescription() {
	        return description;
	    }
	    public void setDescription(String description) {
	        this.description = description;
	    }
	    @Override
	    public String toString() {
	        return "Book [title=" + title + ", link=" + link + ", image=" + image + ", author=" + author + ", price=" + price
	                 + ", publisher=" + publisher + ", pubdate=" + pubdate
	                + ", description=" + description + "]";
	    }
	    
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public String getP_date() {
		return p_date;
	}
	public void setP_date(String p_date) {
		this.p_date = p_date;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getEditor() {
		return editor;
	}
	public void setEditor(String editor) {
		this.editor = editor;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String[] getTableOfcontent() {
		return tableOfcontent;
	}
	public void setTableOfcontent(String[] tableOfcontent) {
		this.tableOfcontent = tableOfcontent;
	}
	public String getISBN() {
		return ISBN;
	}
	public void setISBN(String iSBN) {
		ISBN = iSBN;
	}

}

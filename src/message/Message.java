package message;

public class Message {
	private String name;
	private String title;
	private String mycontent;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getMycontent() {
		return mycontent;
	}

	public void setMycontent(String mycontent) {
		this.mycontent = mycontent;
	}

	public Message(String name, String title, String mycontent) {
		this.name = name;
		this.title = title;
		this.mycontent = mycontent;
	}

	public Message() {
		super();
	}

}

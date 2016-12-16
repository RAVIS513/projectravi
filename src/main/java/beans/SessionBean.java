package beans;

import java.io.Serializable;

public class SessionBean implements Serializable{

	private static final long serialVersionUID = -124466934030612288L;

	private String ip;

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

}

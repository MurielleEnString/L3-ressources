public class Pays {
	private Format formatDate;
	
	public Pays(Format fd) {
		this.formatDate = fd;
	}
	
	public String getDate() {
		return this.formatDate.getDate();
	}
	
	public void setFormatDate(Format fd) {
		this.formatDate = fd;
	}
}

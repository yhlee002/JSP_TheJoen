package day05Ex.marvel;

import java.time.LocalDateTime;

public class MovieDto {
	private int id;
	private String title;
	private String title_eng;
	private String director;
	private String phase;
	private String state;
	private int release_date; //year데이터형
	private LocalDateTime reg_date;
	private LocalDateTime u_date;
	public MovieDto() {}
	public MovieDto(int id, String title, String title_eng, String director, String phase, String state,
			int release_date, LocalDateTime reg_date, LocalDateTime u_date) {
		super();
		this.id = id;
		this.title = title;
		this.title_eng = title_eng;
		this.director = director;
		this.phase = phase;
		this.state = state;
		this.release_date = release_date;
		this.reg_date = reg_date;
		this.u_date = u_date;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getTitle_eng() {
		return title_eng;
	}
	public void setTitle_eng(String title_eng) {
		this.title_eng = title_eng;
	}
	public String getDirector() {
		return director;
	}
	public void setDirector(String director) {
		this.director = director;
	}
	public String getPhase() {
		return phase;
	}
	public void setPhase(String phase) {
		this.phase = phase;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public int getRelease_date() {
		return release_date;
	}
	public void setRelease_date(int release_date) {
		this.release_date = release_date;
	}
	public LocalDateTime getReg_date() {
		return reg_date;
	}
	public void setReg_date(LocalDateTime reg_date) {
		this.reg_date = reg_date;
	}
	public LocalDateTime getU_date() {
		return u_date;
	}
	public void setU_date(LocalDateTime u_date) {
		this.u_date = u_date;
	}
	
	
}

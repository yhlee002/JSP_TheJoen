package day06Ex.marvel;

import java.time.LocalDateTime;

public class MarvelMovieDto {
	private int id;
	private String title;
	private String titleEng;
	private String director;
	private String phase;
	private String state;
	private int releaseDate;
	private LocalDateTime regDate;
	private LocalDateTime uDate;
	
	public MarvelMovieDto() {
		super();
	}

	public MarvelMovieDto(int id, String title,  String titleEng, String director, String phase, String state,
			int releaseDate, LocalDateTime regDate, LocalDateTime uDate) {
		this.id = id;
		this.title = title;
		this.titleEng = titleEng;
		this.director = director;
		this.phase = phase;
		this.state = state;
		this.releaseDate = releaseDate;
		this.regDate = regDate;
		this.uDate =  uDate;
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

	public String getTitleEng() {
		return titleEng;
	}

	public void setTitleEng(String titleEng) {
		this.titleEng = titleEng;
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

	public int getReleaseDate() {
		return releaseDate;
	}

	public void setReleaseDate(int releaseDate) {
		this.releaseDate = releaseDate;
	}

	public LocalDateTime getRegDate() {
		return regDate;
	}

	public void setRegDate(LocalDateTime regDate) {
		this.regDate = regDate;
	}

	public LocalDateTime getuDate() {
		return uDate;
	}

	public void setuDate(LocalDateTime uDate) {
		this.uDate = uDate;
	}
	
	
	
	
}

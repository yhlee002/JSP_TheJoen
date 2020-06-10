package day06Ex.marvel;

import java.util.List;

public class MovieListView {
	private int movieTotalCount; //총 영화 개수
	private int currentPageNumber; //현재 페이지
	private List<MarvelMovieDto> movieList; //영화 목록을 담는 리스트
	private int pageTotalCount; //총 페이지 수
	private int movieCountPerPage; //페이지 하나 당 보여질 영화 수
	private int firstRow; //페이지의 첫 로우 인덱스
	private int endRow; //페이지의 마지막 로우 인덱스
	
	public MovieListView(int movieTotalCount, int currentPageNumber, List<MarvelMovieDto> movieList,
			int movieCountPerPage, int firstRow, int endRow) {
		
		this.movieTotalCount = movieTotalCount;
		this.currentPageNumber = currentPageNumber;
		this.movieList = movieList;
		this.movieCountPerPage = movieCountPerPage;
		this.firstRow = firstRow;
		this.endRow = endRow;
		
		//pageTotalCount 계산해주기(이 값은 내부에서 처리)
		if(movieTotalCount == 0) { //영화가 하나도 없으면
			pageTotalCount = 0;
		}else { //영화가 하나라도 있다면
			pageTotalCount = movieTotalCount / movieCountPerPage;
			if(movieTotalCount % movieCountPerPage > 0) {
				pageTotalCount++;
			}
			
		}
	}
	
	public int getMovieTotalCount() {
		return movieTotalCount;
	}
	public void setMovieTotalCount(int movieTotalCount) {
		this.movieTotalCount = movieTotalCount;
	}
	public int getCurrentPageNumber() {
		return currentPageNumber;
	}
	public void setCurrentPageNumber(int currentPageNumber) {
		this.currentPageNumber = currentPageNumber;
	}
	public List<MarvelMovieDto> getMovieList() {
		return movieList;
	}
	public void setMovieList(List<MarvelMovieDto> movieList) {
		this.movieList = movieList;
	}
	public int getPageTotalCount() {
		return pageTotalCount;
	}
	public void setPageTotalCount(int pageTotalCount) {
		this.pageTotalCount = pageTotalCount;
	}
	public int getMovieCountPerPage() {
		return movieCountPerPage;
	}
	public void setMovieCountPerPage(int movieCountPerPage) {
		this.movieCountPerPage = movieCountPerPage;
	}
	public int getFirstRow() {
		return firstRow;
	}
	public void setFirstRow(int firstRow) {
		this.firstRow = firstRow;
	}
	public int getEndRow() {
		return endRow;
	}
	public void setEndRow(int endRow) {
		this.endRow = endRow;
	}
	
}

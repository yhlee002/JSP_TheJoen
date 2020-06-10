package day04Ex;

public class Score {
	private int kor;
	private int math;
	private int computer;
	
	public Score(int kor, int math, int computer) {
		super();
		this.kor = kor;
		this.math = math;
		this.computer = computer;
	}

	public Score() {
		// TODO Auto-generated constructor stub
	}

	public int getKor() {
		return kor;
	}

	public void setKor(int kor) {
		this.kor = kor;
	}

	public int getMath() {
		return math;
	}

	public void setMath(int math) {
		this.math = math;
	}

	public int getComputer() {
		return computer;
	}

	public void setComputer(int computer) {
		this.computer = computer;
	}

	
	
}

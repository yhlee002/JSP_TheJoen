package day03;

import java.time.LocalDate;

public class Student {
	private String name;
	private int age;
	private int kor;
	private int eng;
	private int math;
	private LocalDate birthDate; //Date같이 직접   넣어줘야 하는 데이터형은 html의 생일을 받는 변수와 클래스의 변수명이 같을 경우 오류
	
	public Student() {
		// TODO Auto-generated constructor stub
	}
	
	public Student(String name, int age, int kor, int eng, int math, LocalDate birthDate) {
		super();
		this.name = name;
		this.age = age;
		this.kor = kor;
		this.eng = eng;
		this.math = math;
		this.birthDate = birthDate;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public int getKor() {
		return kor;
	}
	public void setKor(int kor) {
		this.kor = kor;
	}
	public int getEng() {
		return eng;
	}
	public void setEng(int eng) {
		this.eng = eng;
	}
	public int getMath() {
		return math;
	}
	public void setMath(int math) {
		this.math = math;
	}
	public LocalDate getBirthDate() {
		return birthDate;
	}
	public void setBirthDate(LocalDate birthDate) {
		this.birthDate = birthDate;
	}
}

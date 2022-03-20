package com.adj.entity;

import java.math.BigDecimal;
import java.util.Arrays;
import java.util.List;

public class Employee {

	private Long id;
	private String firstName;
	private String lastName;
	/*
	private String email;
	private String password;
	private String comfirmPassword;
	private String gender;
	private List<String> hobbies;
	private String incomeSource;
	private BigDecimal income;
	private byte[] profilePicture;
	private int age;
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getComfirmPassword() {
		return comfirmPassword;
	}
	public void setComfirmPassword(String comfirmPassword) {
		this.comfirmPassword = comfirmPassword;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public List<String> getHobbies() {
		return hobbies;
	}
	public void setHobbies(List<String> hobbies) {
		this.hobbies = hobbies;
	}
	public String getIncomeSource() {
		return incomeSource;
	}
	public void setIncomeSource(String incomeSource) {
		this.incomeSource = incomeSource;
	}
	public BigDecimal getIncome() {
		return income;
	}
	public void setIncome(BigDecimal income) {
		this.income = income;
	}
	public byte[] getProfilePicture() {
		return profilePicture;
	}
	public void setProfilePicture(byte[] profilePicture) {
		this.profilePicture = profilePicture;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public Employee(Long id, String firstName, String lastName, String email, String password, String comfirmPassword,
			String gender, List<String> hobbies, String incomeSource, BigDecimal income, byte[] profilePicture,
			int age) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.password = password;
		this.comfirmPassword = comfirmPassword;
		this.gender = gender;
		this.hobbies = hobbies;
		this.incomeSource = incomeSource;
		this.income = income;
		this.profilePicture = profilePicture;
		this.age = age;
	}
	@Override
	public String toString() {
		return "Employee [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", email=" + email
				+ ", password=" + password + ", comfirmPassword=" + comfirmPassword + ", gender=" + gender
				+ ", hobbies=" + hobbies + ", incomeSource=" + incomeSource + ", income=" + income + ", profilePicture="
				+ Arrays.toString(profilePicture) + ", age=" + age + "]";
	}
	*/
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public Employee() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Employee(Long id, String firstName, String lastName) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
	}
	

}

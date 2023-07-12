package models;

import java.util.Date;

public class Member {
    private int memberId;
    private String name;
    private String lastName;
    private int nationalId;
    private String email;
    private boolean state;
    private Date enrollmentDate;

    public Member(int memberId, String name, String lastName, int nationalId, String email, boolean state, Date enrollmentDate) {
        this.setMemberId(memberId);
        this.setName(name);
        this.setLastName(lastName);
        this.setNationalId(nationalId);
        this.setEmail(email);
        this.setState(state);
        this.setEnrollmentDate(enrollmentDate);
    }

    public int getMemberId() {
        return memberId;
    }

    public void setMemberId(int memberId) {
        this.memberId = memberId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public int getNationalId() {
        return nationalId;
    }

    public void setNationalId(int nationalId) {
        this.nationalId = nationalId;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public boolean isState() {
        return state;
    }

    public void setState(boolean state) {
        this.state = state;
    }

    public Date getEnrollmentDate() {
        return enrollmentDate;
    }

    public void setEnrollmentDate(Date enrollmentDate) {
        this.enrollmentDate = enrollmentDate;
    }
}

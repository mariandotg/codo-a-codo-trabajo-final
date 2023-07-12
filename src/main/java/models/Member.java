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
        this.memberId = memberId;
        this.name = name;
        this.lastName = lastName;
        this.nationalId = nationalId;
        this.email = email;
        this.state = state;
        this.enrollmentDate = enrollmentDate;
    }
}

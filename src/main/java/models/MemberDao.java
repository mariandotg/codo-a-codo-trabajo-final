package models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class MemberDao {
    Connection connection = null;

    public MemberDao() throws ClassNotFoundException {
        DbConnection dbConnection = new DbConnection();
        connection = dbConnection.getConnection();
    }

    public List<Member> getMembers() {
        PreparedStatement statement;
        ResultSet resultSet;
        List<Member> membersList = new ArrayList<>();

        try {
            statement = connection.prepareStatement("SELECT * FROM members");
            resultSet = statement.executeQuery();

            while(resultSet.next()) {
                int id = resultSet.getInt("memberId");
                String name = resultSet.getString("memberName");
                String lastName = resultSet.getString("memberLastName");
                int nationalId = resultSet.getInt("nationalId");
                String email = resultSet.getString("email");
                boolean state = resultSet.getBoolean("state");
                LocalDate enrollmentDate = resultSet.getDate("enrollmentDate").toLocalDate();

                Member member = new Member(id, name, lastName, nationalId, email, state, enrollmentDate);
                membersList.add(member);
            }

            return membersList;
        } catch (SQLException e) {
            System.out.println(e.getMessage());

            return null;
        }
    }

    public boolean postMember(Member member) {
        PreparedStatement statement;

        try {
            statement = connection.prepareStatement("INSERT INTO members (memberName, memberLastName, nationalId, email, state, enrollmentDate) values(?, ?, ?, ?, ?, ?)");
            statement.setString(1, member.getName());
            statement.setString(2, member.getLastName());
            statement.setInt(3, member.getNationalId());
            statement.setString(4, member.getEmail());
            statement.setBoolean(5, true);
            statement.setObject(6, LocalDate.now());

            statement.execute();

            return true;
        } catch(SQLException e) {
            System.out.println(e.getMessage());

            return false;
        }
    }

    public boolean updateMember(Member member) {
        PreparedStatement statement;

        try {
            statement = connection.prepareStatement("UPDATE members SET memberName=?, memberLastName=?, nationalId=?, email=? WHERE memberId=?");
            statement.setString(1, member.getName());
            statement.setString(2, member.getLastName());
            statement.setInt(3, member.getNationalId());
            statement.setString(4, member.getEmail());
            statement.setInt(5, member.getMemberId());
            statement.execute();

            return true;
        } catch(SQLException e) {
            System.out.println(e.getMessage());

            return false;
        }
    }

    public boolean deleteMember(int _id) {
        PreparedStatement statement;

        try {
            statement = connection.prepareStatement("DELETE FROM members WHERE memberId=?");
            statement.setInt(1, _id);
            statement.execute();

            return true;
        } catch(SQLException e) {
            System.out.println(e.getMessage());

            return false;
        }
    }

    public Member getMember(int _id) {
        PreparedStatement statement;
        ResultSet resultSet;
        Member member = null;

        try {
            statement = connection.prepareStatement("SELECT * FROM members WHERE memberId=?");
            statement.setInt(1, _id);
            resultSet = statement.executeQuery();

            while(resultSet.next()) {
                int id = resultSet.getInt("memberId");
                String name = resultSet.getString("memberName");
                String lastName = resultSet.getString("memberLastName");
                int nationalId = resultSet.getInt("nationalId");
                String email = resultSet.getString("email");
                boolean state = resultSet.getBoolean("state");
                LocalDate enrollmentDate = resultSet.getDate("enrollmentDate").toLocalDate();

                member = new Member(id, name, lastName, nationalId, email, state, enrollmentDate);
            }

            return member;
        } catch(SQLException e) {
            System.out.println(e.getMessage());

            return null;
        }
    }
}

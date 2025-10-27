package com.school.beans;

/**
 * JavaBean class for calculating student grades.
 * This bean encapsulates the logic for computing total marks, average, and grade.
 */
public class GradeCalculatorBean {

    // Private instance variables
    private String studentName;
    private int subject1;
    private int subject2;
    private int subject3;
    private int total;
    private double average;
    private String grade;

    // No-argument constructor
    public GradeCalculatorBean() {
        // Initialize default values if needed
    }

    // Getters and Setters
    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }

    public int getSubject1() {
        return subject1;
    }

    public void setSubject1(int subject1) {
        this.subject1 = subject1;
        computeResults();
    }

    public int getSubject2() {
        return subject2;
    }

    public void setSubject2(int subject2) {
        this.subject2 = subject2;
        computeResults();
    }

    public int getSubject3() {
        return subject3;
    }

    public void setSubject3(int subject3) {
        this.subject3 = subject3;
        computeResults();
    }

    public int getTotal() {
        return total;
    }

    public double getAverage() {
        return average;
    }

    public String getGrade() {
        return grade;
    }

    // Private method to compute total, average, and grade
    private void computeResults() {
        total = subject1 + subject2 + subject3;
        average = total / 3.0;

        if (average >= 75) {
            grade = "A";
        } else if (average >= 60) {
            grade = "B";
        } else if (average >= 50) {
            grade = "C";
        } else {
            grade = "F";
        }
    }

    // Optionally, a public method to compute after setting all values
    public void calculateGrade() {
        // This can be called from JSP if needed, but compute is automatic on setter
    }
}

package kr.ac.hansung.cse.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.Entity;
import javax.validation.constraints.*;

@Getter
@Setter
@ToString(exclude = "course_code")
@NoArgsConstructor
public class Course {

    @Min(value = 2024, message = "Year must be 2024 or greater")
    private int year; // 수강년도

    @Min(value = 1, message = "Semester must be 1 or 2")
    @Max(value = 2, message = "Semester must be 1 or 2")
    private int semester; // 수강학기

    @Size(min=8, max=8, message="Code must be 8 chars")
    private String course_code; // 교과코드

    @Size(min=1, max=20, message="Title must be between 1 and 20 chars")
    private String course_title; // 교과명

    @Size(min=2, max=4, message="Type must be between 2 and 4 chars")
    private String  course_type; // 교과구분

    @Size(min=2, max=20, message="Instructor must be between 2 and 20 chars")
    private String instructor; // 담당교수

    @Min(value = 1, message = "Credit must be 1 ~ 3")
    @Max(value = 3, message = "Credit must be 1 ~ 3")
    private int credit; // 이수 학점
    private int totalCredit; // 학기별 이수 학점
}


package kr.ac.hansung.cse.dao;

import kr.ac.hansung.cse.model.Course;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class CourseDao {
    private JdbcTemplate jdbcTemplate;

    @Autowired
    public void setDataSource(DataSource dataSource){
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    // 모든 교과 정보를 데이터베이스에서 조회해 리스트로 반환
    public List<Course> getCourses(){
        String sqlStatement = "select * from Course order by year asc, semester asc";
        return jdbcTemplate.query(sqlStatement, new RowMapper<Course>(){
            @Override
            public Course mapRow(ResultSet rs, int rowNum) throws SQLException{
                Course course = new Course();

                course.setYear(rs.getInt("year"));
                course.setSemester(rs.getInt("semester"));
                course.setCourse_code(rs.getString("course_code"));
                course.setCourse_title(rs.getString("course_title"));
                course.setCourse_type(rs.getString("course_type"));
                course.setInstructor(rs.getString("instructor"));
                course.setCredit(rs.getInt("credit"));

                return course;
            }
        });
    }
    // 특정 년도와 학기에 해당하는 교과 정보를 리스트로 반환
    public List<Course> getDetailCourses(int year, int semester){
        String sqlStatement = "select * from Course where year = ? and semester = ? order by year asc, semester asc";
        return jdbcTemplate.query(sqlStatement, new Object[]{year, semester}, new RowMapper<Course>() {
            @Override
            public Course mapRow(ResultSet rs, int rowNum) throws SQLException {
                Course course = new Course();
                course.setYear(rs.getInt("year"));
                course.setSemester(rs.getInt("semester"));
                course.setCourse_title(rs.getString("course_title"));
                course.setCourse_type(rs.getString("course_type"));
                course.setInstructor(rs.getString("instructor"));
                course.setCredit(rs.getInt("credit"));
                return course;
            }
        });
    }
    // 새로운 교과 정보를 데이터베이스에 추가
    public boolean insert(Course course){
        int year = course.getYear();
        int semester = course.getSemester();
        String course_code = course.getCourse_code();
        String course_title = course.getCourse_title();
        String course_type = course.getCourse_type();
        String instructor = course.getInstructor();
        int credit = course.getCredit();

        String sqlStatement = "insert into Course(year, semester, course_code, course_title, course_type, instructor, credit) values (?, ?, ?, ?, ?, ?, ?)";
        return (jdbcTemplate.update(sqlStatement, new Object[] {year, semester, course_code, course_title, course_type, instructor, credit}) == 1);
    }

    // 학기별 이수학점을 계산해서 리스트로 반환
    public List<Course> calculateTotalCredits(){
        String sqlStatement = "select year, semester, sum(credit) as totalCredit from Course where year != 2024 or semester != 2 group by year, semester";
        return jdbcTemplate.query(sqlStatement, new RowMapper<Course>(){
            @Override
            public Course mapRow(ResultSet rs, int rowNum) throws SQLException{
                Course course = new Course();

                course.setYear(rs.getInt("year"));
                course.setSemester(rs.getInt("semester"));
                course.setTotalCredit(rs.getInt("totalCredit"));

                return course;
            }
        });
    }

}

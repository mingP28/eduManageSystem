package kr.ac.hansung.cse.service;

import kr.ac.hansung.cse.dao.CourseDao;
import kr.ac.hansung.cse.model.Course;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CourseService {

    // service -> dao
    @Autowired
    private CourseDao courseDao;

    public List<Course> getAllCourses(){
        return courseDao.getCourses();
    }

    public List<Course> getTotalCredits(){
        return courseDao.calculateTotalCredits();
    }

    public List<Course> getDetailCourses(int year, int semester){
        return courseDao.getDetailCourses(year, semester);
    }

    public int getSumTotalCredits(List<Course> totalCredits){
        int sum = 0;
        for(Course  course : totalCredits){
            sum += course.getTotalCredit();
        }
        return sum;
    }

    public List<Course> getAddCourse(){
        return courseDao.getDetailCourses(2024, 2);
    }

    public void insert(Course course) {
        courseDao.insert(course);
    }
}





class StudentCourse {

    constructor(courseId, name, grade='U', crs, professors) {
    	this.courseId = courseId; this.name = name;
    	this.grade = grade; this.crs = crs;
    	this.professors = professors;
    getGrade() {
        return this.grade;
    }

    setGrade(grade) {
        this.grade = grade;
    }
    getCrs() {
        return this.crs;
    }
    getCourseId() {
        return this.courseId;
    }

}
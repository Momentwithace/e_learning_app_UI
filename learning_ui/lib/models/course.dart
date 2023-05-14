class Course{
  String author;
  String authorImg;
  String title;
  String imageUrl;

  Course(
    this.author,
    this.authorImg,
    this.title,
    this.imageUrl,
  );
  
  static List<Course> generateCourses(){ 
    return [
      Course(
        "Tom Benneth", 
        "assets/images/avatar1.jpeg", 
        "Course 1", 
        "assets/images/course1.jpeg"
        ),
      Course(
        "Tresa May", 
        "assets/images/avatar1.jpeg", 
        "Course 1", 
        "assets/images/course3.jpeg"
        )
    ];
  }
}
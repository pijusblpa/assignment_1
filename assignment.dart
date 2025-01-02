1.Ans:
A.  Define an abstract named Role:
abstract class Role {
  void displayRole();
}


B.Create a class Person:
class Person implements Role {
  String name;
  int age;
  String address;
  Role role;

  Person({required this.name, required this.age, required this.address, required this.role});
  String get getName => name;
  int get getAge => age;
  String get getAddress => address;

  @override
  void displayRole() {
    role.displayRole(); 
  }
}

C. Create a class Student that extends Person:
class Student extends Person {
  String studentID;
  String grade;
  List<int> courseScores;
  Student({
    required String name,
    required int age,
    required String address,
    required this.studentID,
    required this.grade,
    required this.courseScores,
  }) : super(name: name, age: age, address: address, role: StudentRole());

  @override
  void displayRole() {
    print("Role: Student");
  }

  double calculateAverageScore() {
    if (courseScores.isEmpty) return 0.0;
    int total = courseScores.reduce((a, b) => a + b);
    return total / courseScores.length;
  }
}

D. Create another class Teacher that extends Person:
class Teacher extends Person {
  String teacherID;
  List<String> coursesTaught;

  Teacher({
    required String name,
    required int age,
    required String address,
    required this.teacherID,
    required this.coursesTaught,
  }) : super(name: name, age: age, address: address, role: TeacherRole());

  @override
  void displayRole() {
    print("Role: Teacher");
  }

  void displayCourses() {
    print("Courses taught: ${coursesTaught.join(', ')}");
  }

E. Create a class StudentManagementSystem:

class StudentManagementSystem {
  static void main() {
    
    Student student = Student(
      name: "Alice",
      age: 20,
      address: "123 Main St",
      studentID: "S12345",
      grade: "A",
      courseScores: [85, 90, 78, 88],
    );

    
    Teacher teacher = Teacher(
      name: "Mr. Smith",
      age: 40,
      address: "456 Elm St",
      teacherID: "T67890",
      coursesTaught: ["Math", "Science", "History"],
    );

    
    student.displayRole();
    teacher.displayRole();

   
    print("Average score of ${student.getName}: ${student.calculateAverageScore()}");

    
    teacher.displayCourses();
  }
}

void main() {
  StudentManagementSystem.main();
}

2. Ans:
class Student extends Person {
  String studentID;
  String grade;
  List<int> courseScores;

  Student({
    required String name,
    required int age,
    required String address,
    required this.studentID,
    required this.grade,
    required this.courseScores,
  }) : super(name: name, age: age, address: address, role: StudentRole());

  @override
  void displayRole() {
    print("Role: Student");
  }

  double calculateAverageScore() {
    if (courseScores.isEmpty) return 0.0;
    int total = courseScores.reduce((a, b) => a + b);
    return total / courseScores.length;
  }
}

void main() {
 
  Student student = Student(
    name: "John Doe",
    age: 20,
    address: "123 Main Street",
    studentID: "S12345",  
    grade: "A",           
    courseScores: [90, 85, 82],  
  );
  student.displayRole();

  print("Student Name: ${student.getName}");
  print("Age: ${student.getAge}");
  print("Address: ${student.getAddress}");

  print("Average Score: ${student.calculateAverageScore()}");
}

3. Ans:
abstract class Role {
  void displayRole();
}

class Person implements Role {
  String name;
  int age;
  String address;
  Role role;

  Person({required this.name, required this.age, required this.address, required this.role});

  String get getName => name;
  int get getAge => age;
  String get getAddress => address;

  @override
  void displayRole() {
    role.displayRole(); 
  }
}

class TeacherRole implements Role {
  @override
  void displayRole() {
    print("Role: Teacher");
  }
}

class Teacher extends Person {
  String teacherID;
  List<String> coursesTaught;

  Teacher({
    required String name,
    required int age,
    required String address,
    required this.teacherID,
    required this.coursesTaught,
  }) : super(name: name, age: age, address: address, role: TeacherRole());

  @override
  void displayRole() {
    print("Role: Teacher");
  }

  void displayCourses() {
    print("Courses taught: ${coursesTaught.join(', ')}");
  }
}

void main() {
  Teacher teacher = Teacher(
    name: "Mrs. Smith",
    age: 35,
    address: "456 Oak St.",
    teacherID: "T98765",  
    coursesTaught: ["Math", "English", "Bangla"],  
  );

 
  teacher.displayRole();

  print("Teacher Name: ${teacher.getName}");
  print("Age: ${teacher.getAge}");
  print("Address: ${teacher.getAddress}");

  teacher.displayCourses();
}   
  

    

  

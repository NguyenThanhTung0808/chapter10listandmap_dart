import 'dart:io';

class Student {
  late String id;
  late String name;
  late int age;
  late String course;
  late String address;
  late double mediumScore;

  Student();

  Student.tung(this.id, this.name, this.age, this.course, this.address,
      this.mediumScore);

  void inputStudent() {
    print('Enter student details:');

    stdout.write('ID: ');
    id = stdin.readLineSync()!;

    stdout.write('Name: ');
    name = stdin.readLineSync()!;

    stdout.write('Age: ');
    age = int.parse(stdin.readLineSync()!);

    stdout.write('Course: ');
    course = stdin.readLineSync()!;

    stdout.write('Address: ');
    address = stdin.readLineSync()!;

    stdout.write('Medium Score: ');
    mediumScore = double.parse(stdin.readLineSync()!);
  }

  void displayInfo() {
    if (!isInitialized()) {
      print('Student information is not initialized.');
      return;
    }

    print('\nStudent Information:');
    print('ID: $id');
    print('Name: $name');
    print('Age: $age');
    print('Course: $course');
    print('Address: $address');
    print('Medium Score: $mediumScore');
  }

  bool isInitialized() {
    return this.id != null;
  }
}

void main() {
  List<Student> inputStudentList() {
    List<Student> students = [];

    print('Enter the number of students:');
    int numberOfStudents = int.parse(stdin.readLineSync()!);

    for (int i = 0; i < numberOfStudents; i++) {
      Student student = Student();
      print('\nEnter details for Student ${i + 1}:');
      student.inputStudent();
      students.add(student);
    }

    return students;
  }

  List<Student> sortStudentsAlphabetically(List<Student> students) {
    students.sort((a, b) => a.name.compareTo(b.name));
    return students;
  }

  var student1 = Student();
  student1.inputStudent();
  student1.displayInfo();

  var studentList = inputStudentList();
  print('\nDisplaying information for entered students:');
  studentList.forEach((student) => student.displayInfo());

  var sortedStudentList = sortStudentsAlphabetically(studentList);
  print('\nDisplaying information for sorted students (by name):');
  sortedStudentList.forEach((student) => student.displayInfo());
}

class Student {
  final String firstname;
  final String lastname;
  final String city;

  Student(
      {required this.firstname, required this.lastname, required this.city});

  String get fullName => '$firstname $lastname';
}

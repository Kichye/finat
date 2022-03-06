import 'package:finat/models/student.dart';
import 'package:flutter/material.dart';

class Horizontal_listview extends StatelessWidget {
  static final students = <Student>[
    Student(firstname: 'bRAHIM', lastname: 'Aldana', city: 'Merida'),
    Student(firstname: 'Hazael', lastname: 'Poot', city: 'Inglaterra'),
    Student(firstname: 'Geovanny', lastname: 'Mengual', city: 'Barranquilla'),
    Student(firstname: 'isai', lastname: 'Vazquez', city: 'Canada'),
    Student(firstname: 'Juan', lastname: 'Cime', city: 'Egipto'),
    Student(firstname: 'Ivan', lastname: 'Canto', city: 'Montreal'),
    Student(firstname: 'Christian', lastname: 'Vazquez', city: 'Alemania'),
    Student(firstname: 'Jordy', lastname: 'Hoil', city: 'Rusia'),
    Student(firstname: 'Ada', lastname: 'Morales', city: 'California'),
    Student(firstname: 'Jimmy', lastname: 'Ak', city: 'Hawai'),
    Student(firstname: 'Rafael', lastname: 'Cauich', city: 'Huhí'),
    Student(firstname: 'Fernanda', lastname: 'Balan', city: 'USA'),
    Student(firstname: 'Daniel', lastname: 'Puch', city: 'España'),
    Student(firstname: 'Erika', lastname: 'Bojon', city: 'Puebla'),
    Student(firstname: 'Rafa', lastname: 'Salazar', city: 'España'),
    Student(firstname: 'Alejandro', lastname: 'Vazquez', city: 'Paris'),
  ];
  const Horizontal_listview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Widget'),
      ),
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          children: [
            ...students
                .map((Student) => SizedBox(
                      height: 200,
                      width: 250,
                      child: ListTile(
                        title: Text(Student.fullName),
                        subtitle:
                            Text('Solicitando visa oara: ${Student.city}'),
                        leading: const Icon(Icons.people),
                        trailing: const Icon(Icons.arrow_drop_down),
                      ),
                    ))
                .toList()
          ],
        ),
      ),
    );
  }
}

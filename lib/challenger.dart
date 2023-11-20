class Challenger {
  //! Details about the String
  //! The String is composed of 4 fields (Name|Age|Profession|State of residence)
  final patients = [
    'Paulo Oliveira|44|Lawyer|SP',
    'Roberto Silva|87|Retiree|MG',
    'Felipe Paiva|15|student|AM',
    'Fernando Caio|25|lawyer|RJ',
    'Luis Valadão|54|Engineer|MG',
    'Carla Saraiva|25|Engineer|MG',
    'Paula Silveira|24|dentist|AM',
    'João Pedro|18|Design|SP',
  ];

  //! Based on the array above, create a report where:
  //! 1 - Present patients over 20 years old and print their names
  //! 2 - Present the number of patients for each profession (developer, student, dentist, journalist)
  //! 3 - Present the number of patients who live in SP

  void firstChallenger() {
    // 1 - Present patients over 20 years old and print their names
    for (var patient in patients) {
      final data = patient.toLowerCase().split("|");
      final age = data[1];
      final name = data[0];
      try {
        int ageInt = int.tryParse(age)!;

        if (ageInt > 20) {
          print(name);
        }
      } catch (e) {
        throw Exception();
      }
    }

    // 2 - Present the number of patients for each profession

    // 3 - Present the number of patients who live in SP
  }
}

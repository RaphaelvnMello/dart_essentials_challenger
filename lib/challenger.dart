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
  //! 2 - Present the number of patients for each profession (Lawyer, student, Retiree, Engineer, Design)
  //! 3 - Present the number of patients who live in SP

  // 1 - Present patients over 20 years old and print their names
  void firstChallenger() {
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
  }

  // 2 - Present the number of patients for each profession
  void secondChallenger() {
    List<String> professions = [];
    List<String> noRepeatProfessions = [];
    for (var patient in patients) {
      final data = patient.toLowerCase().split("|");
      professions.add(data[2]);
    }
    for (var noRepeatProfession in professions) {
      if (!noRepeatProfessions.contains(noRepeatProfession)) {
        noRepeatProfessions.add(noRepeatProfession);
      }
    }
    for (var uniqueProfession in noRepeatProfessions) {
      int count = professions
          .where((profession) => profession == uniqueProfession)
          .length;

      print(
          "There ${count == 1 ? 'is' : 'are'} $count patient${count == 1 ? '' : 's'} with profession $uniqueProfession");
    }
  }
  // 3 - Present the number of patients who live in SP

  void thirdChallenger() {
    List<String> state = [];
    for (var patient in patients) {
      final data = patient.toLowerCase().split("|");
      state.add(data[3]);
    }
    int count = state.where((element) => element == "sp").length;
    print("There are $count patients living in SP");
  }
}

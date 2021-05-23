class Personal {
  String name;
  String pseudonym;

  Personal({required this.name, required this.pseudonym});
}

Personal getPersonal() {
  var personal = Personal(
    name: 'Ben',
    pseudonym: 'Alien Spaces',
  );
  return personal;
}

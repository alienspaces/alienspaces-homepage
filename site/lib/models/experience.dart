class Experience {
  final String yearStart;
  final String yearEnd;
  final String position;
  final String project;
  final List<String> description;
  final List<String> technology;
  Experience({
    required this.yearStart,
    required this.yearEnd,
    required this.position,
    required this.project,
    required this.description,
    required this.technology,
  });
}

List<Experience> getExperienceList() {
  List<Experience> experience = [
    Experience(
      yearStart: '1997',
      yearEnd: '2000',
      position: 'Engineer I',
      project: 'Online Music Store',
      description: [
        'A full service record label providing a full range of recording, producing, mixing, editing, and publishing services.',
        'The online music store provided artist and album search capabilties, categorised album listings, order and checkout capabilities.',
      ],
      technology: ['SCO Linux', 'Oracle 6', 'Perl/CGI'],
    ),
    Experience(
      yearStart: '2000',
      yearEnd: '2004',
      position: 'Engineer II',
      project: 'Online Client Portal',
      description: [''],
      technology: ['Redhat Linux', 'Oracle 8', 'Perl/CGI'],
    ),
    Experience(
      yearStart: '2004',
      yearEnd: '2012',
      position: 'Engineer III',
      project: 'Enterprise Framework',
      description: [''],
      technology: ['Redhat Linux', 'Oracle 10', 'Perl/mod_perl'],
    ),
    Experience(
      yearStart: '2012',
      yearEnd: '2013',
      position: 'Engineer III/Architect I',
      project: 'Online Marketplace',
      description: [''],
      technology: ['Ubuntu', 'Ruby on Rails', 'MySQL', 'Docker', 'Kubernetes', 'Gitlab CI'],
    ),
    Experience(
      yearStart: '2013',
      yearEnd: '2020',
      position: 'Principal Engineer/Architect II',
      project: 'Merchant Payments',
      description: [''],
      technology: ['AWS', 'Kubernetes', 'Postgres 10', 'Go', 'Quasar Framework/Vuejs', 'GitlabCI'],
    ),
    Experience(
      yearStart: '2020',
      yearEnd: '2020',
      position: 'Principal Engineer/Architect II',
      project: 'Online Customer Application',
      description: [''],
      technology: ['Quasar Framework/Vuejs', 'AWS', 'Kubernetes', 'Postgres 10', 'Go', 'GitlabCI'],
    ),
    Experience(
      yearStart: '2020',
      yearEnd: '2021',
      position: 'Principal Engineer/Architect II',
      project: 'Mobile Customer Application',
      description: [''],
      technology: ['Flutter', 'AWS', 'Kubernetes', 'Postgres 10', 'Go', 'GitlabCI'],
    ),
  ];
  return experience;
}

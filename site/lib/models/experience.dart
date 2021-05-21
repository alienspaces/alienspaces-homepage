class Experience {
  final String project;
  final String projectYearStart;
  final String projectYearEnd;
  final List<String> projectDescription;
  final String position;
  final List<String> positionDescription;
  final List<String> technology;
  Experience({
    required this.projectYearStart,
    required this.projectYearEnd,
    required this.project,
    required this.projectDescription,
    required this.position,
    required this.positionDescription,
    required this.technology,
  });
}

List<Experience> getExperienceList() {
  List<Experience> experience = [
    Experience(
      projectYearStart: '2020',
      projectYearEnd: '2021',
      project: 'Customer Mobile Application',
      projectDescription: [
        'A customer purchase approval application for iOS and Android.',
      ],
      position: 'Principal Engineer/Architect II',
      positionDescription: [
        'As the sole engineer, I was responsible for the entire software architecture and implementation.',
      ],
      technology: ['Flutter', 'AWS', 'Kubernetes', 'Postgres10', 'Go', 'GitlabCI'],
    ),
    Experience(
      projectYearStart: '2020',
      projectYearEnd: '2020',
      project: 'Online Customer Application',
      projectDescription: [
        'A web based customer application form.',
      ],
      position: 'Principal Engineer/Architect II',
      positionDescription: [
        'As the most experienced engineer in a team of two, I was responsible for the entire software architecture and was the major contributor of code to the projects implementation.',
      ],
      technology: ['Quasar Framework/Vuejs', 'AWS', 'Kubernetes', 'Postgres10', 'Go', 'GitlabCI'],
    ),
    Experience(
      projectYearStart: '2013',
      projectYearEnd: '2020',
      position: 'Delivery Lead/Principal Engineer/Architect II',
      project: 'Merchant Payment Platform',
      projectDescription: [
        'A merchant payment platform for processing authorised transactions submitted from a variety of internal and external clients.',
      ],
      positionDescription: [
        'As the delivery lead I was responsible for supporting a highly performing engineering team while working with product management on requirements and planning.',
        'As one of the most experienced engineers on the team I was also responsible for the software architecture and was a major contributor of code to the projects implementation.',
      ],
      technology: ['AWS', 'Kubernetes', 'Postgres10', 'Go', 'Quasar Framework/Vuejs', 'GitlabCI'],
    ),
    Experience(
      projectYearStart: '2012',
      projectYearEnd: '2013',
      project: 'Online Marketplace',
      projectDescription: [
        '',
      ],
      position: 'Engineer III/Architect I',
      positionDescription: [
        '',
      ],
      technology: ['Ubuntu', 'Ruby on Rails', 'MySQL', 'Docker', 'Kubernetes', 'Gitlab CI'],
    ),
    Experience(
      projectYearStart: '2004',
      projectYearEnd: '2012',
      project: 'Enterprise Framework',
      projectDescription: [
        '',
      ],
      position: 'Engineer III',
      positionDescription: [
        '',
      ],
      technology: ['Redhat Linux', 'Oracle 10', 'Perl/mod_perl'],
    ),
    Experience(
      projectYearStart: '2000',
      projectYearEnd: '2004',
      project: 'Online Client Portal',
      projectDescription: [
        '',
      ],
      position: 'Engineer II',
      positionDescription: [
        '',
      ],
      technology: ['Redhat Linux', 'Oracle 8', 'Perl/CGI'],
    ),
    Experience(
      projectYearStart: '1997',
      projectYearEnd: '2000',
      project: 'Online Music Store',
      projectDescription: [
        'A full service record label providing a full range of recording, producing, mixing, editing, and publishing services.',
        'The online music store provided artist and album search capabilties, categorised album listings, order and checkout capabilities.',
      ],
      position: 'Engineer I',
      positionDescription: [
        'A full service record label providing a full range of recording, producing, mixing, editing, and publishing services.',
        'The online music store provided artist and album search capabilties, categorised album listings, order and checkout capabilities.',
      ],
      technology: ['SCO Linux', 'Oracle 6', 'Perl/CGI'],
    ),
  ];
  return experience;
}

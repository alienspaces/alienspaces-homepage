import 'package:site/models/technology.dart';

class Experience {
  final String project;
  final String projectYearStart;
  final String projectYearEnd;
  final List<String> projectDescription;
  final String position;
  final List<String> positionDescription;
  final List<Technology> technology;

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
      technology: [
        technologyFlutter,
        technologyAWS,
        technologyKubernetes,
        technologyPostgres,
        technologyGitlab,
        technologyGo,
      ],
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
        'As the most experienced engineer in a team of two, I was responsible for the entire software architecture and was the major contributor of code during the project implementation.',
      ],
      technology: [
        technologyQuasar,
        technologyVueJS,
        technologyAWS,
        technologyDocker,
        technologyKubernetes,
        technologyPostgres,
        technologyGitlab,
        technologyGo,
      ],
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
        'As the delivery lead in a team practicing Agile project management, I was responsible for supporting a highly performing engineering team, running daily team stand ups and scheduled grooming, while working with product management on requirements and planning.',
        'As one of the most experienced engineers on the team I was also responsible for the software architecture and was a major contributor of code during the project implementation.',
      ],
      technology: [
        technologyQuasar,
        technologyVueJS,
        technologyAWS,
        technologyDocker,
        technologyKubernetes,
        technologyPostgres,
        technologyGitlab,
        technologyGo,
      ],
    ),
    Experience(
      projectYearStart: '2012',
      projectYearEnd: '2013',
      project: 'Online Marketplace',
      projectDescription: [
        'A multi seller marketplace for the disability sector.',
      ],
      position: 'Engineer III/Architect I',
      positionDescription: [
        'As an engineering team member in a team practicing Agile project management, I was responsible for attending and contributing to Agile ceremonies, taking on engineering tasks and delivering high quality solutions.',
      ],
      technology: [
        technologyUbuntu,
        technologyROR,
        technologyMySQL,
        technologyDocker,
        technologyAWS,
        technologyKubernetes,
        technologyGitlab,
      ],
    ),
    Experience(
      projectYearStart: '2004',
      projectYearEnd: '2012',
      project: 'Enterprise Framework',
      projectDescription: [
        'An enterprise application framework that provided a complete solution for engineering teams to build web and processing applications for the financial industry.',
      ],
      position: 'Engineer III/Architect I',
      positionDescription: [
        '',
      ],
      technology: [
        technologyRedhatLinux,
        technologyOracle10,
        technologyPerl,
        technologyModPerl,
      ],
    ),
    Experience(
      projectYearStart: '2000',
      projectYearEnd: '2004',
      project: 'Online Client Portal',
      projectDescription: [
        'An online client portal for a financial payments processing and billing system.',
      ],
      position: 'Engineer II',
      positionDescription: [
        'In a small team of engineers, I was responsible for the software design and was a major contributor of code during the project implementation',
      ],
      technology: [
        technologyRedhatLinux,
        technologyOracle8,
        technologyPerl,
      ],
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
      technology: [
        technologyRedhatLinux,
        technologyOracle6,
        technologyPerl,
      ],
    ),
  ];
  return experience;
}

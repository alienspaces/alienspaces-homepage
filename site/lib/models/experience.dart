import 'package:site/models/technology.dart';

class Experience {
  final String projectYearStart;
  final String projectYearEnd;
  final String project;
  final List<String> projectDescription;
  final List<String> projectFeatures;
  final String position;
  final List<String> positionDescription;
  final List<String> positionAccomplishments;
  final List<Technology> technology;

  Experience({
    required this.projectYearStart,
    required this.projectYearEnd,
    required this.project,
    required this.projectDescription,
    required this.projectFeatures,
    required this.position,
    required this.positionDescription,
    required this.positionAccomplishments,
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
      projectFeatures: [
        'iOS',
        'Android',
        'MFA sign in',
        'Biometric sign in',
        'Purchase codes',
        'Purchase approval',
        'Invoices list with details',
        'Internationalisation',
      ],
      position: 'Principal Engineer/Architect II',
      positionDescription: [
        'Responsibilities included the software architecture, design, implementation, automated testing, build and deployment CI pipelines.',
      ],
      positionAccomplishments: [
        'Developed a cross platform mobile application using Flutter',
        'Developed a backend REST API using Go',
        'Implemented CI mobile and REST API test pipelines using Gitlab CI',
        'Implemented REST API deployment to Kubernetes clutser on AWS pipelines using Gitlab CI',
        'Implemented web demo environment for QA, product management and sales teams',
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
      projectFeatures: [
        '',
      ],
      position: 'Principal Engineer/Architect II',
      positionDescription: [
        'As an experienced engineer in a team of two, I was mainly responsible for the software architecture, design and implementation.',
      ],
      positionAccomplishments: [
        '',
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
      projectFeatures: [
        '',
      ],
      positionDescription: [
        'As the delivery lead in a team practicing Agile project management, I was responsible for supporting a highly performing engineering team, running daily team stand ups and scheduled grooming, while working with product management on requirements and planning.',
        'As an experienced engineer, I was responsible for the software architecture, design and implementation.',
      ],
      positionAccomplishments: [
        '',
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
      projectFeatures: [
        '',
      ],
      position: 'Engineer III/Architect I',
      positionDescription: [
        'As a less experienced engineer in the chosen technology stack, I shared responsibility for the software design and implementation.',
      ],
      positionAccomplishments: [
        '',
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
      projectFeatures: [
        '',
      ],
      position: 'Engineer III/Architect I',
      positionDescription: [
        'As an experienced engineer, I was responsible for the software architecture, design and implementation.',
      ],
      positionAccomplishments: [
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
      projectFeatures: [
        '',
      ],
      position: 'Engineer II',
      positionDescription: [
        'As an experienced engineer, I was responsible for the software design and implementation.',
      ],
      positionAccomplishments: [
        '',
      ],
      technology: [
        technologyRedhatLinux,
        technologyOracle8,
        technologyPerl,
      ],
    ),
    Experience(
      projectYearStart: '1998',
      projectYearEnd: '2000',
      project: 'Billing and Payment Processing',
      projectDescription: [
        'A white labelled billing and and payment processing system.',
      ],
      projectFeatures: [
        '',
      ],
      position: 'Engineer II',
      positionDescription: [
        'As an engineer, I shared responsibility for the software design and implementation.',
      ],
      positionAccomplishments: [
        '',
      ],
      technology: [
        technologySCOLinux,
        technologyOracle6,
        technologyProC,
      ],
    ),
    Experience(
      projectYearStart: '1997',
      projectYearEnd: '1998',
      project: 'Online Music Store',
      projectDescription: [
        'A full service record label providing a full range of recording, producing, mixing, editing, and publishing services.',
        'The online music store provided artist and album search capabilties, categorised album listings, order and checkout capabilities.',
      ],
      projectFeatures: [
        '',
      ],
      position: 'Engineer I',
      positionDescription: [
        'As an engineer, I shared responsibility for the software design and implementation.',
      ],
      positionAccomplishments: [
        '',
      ],
      technology: [
        technologySCOLinux,
        technologyOracle6,
        technologyPerl,
      ],
    ),
  ];
  return experience;
}

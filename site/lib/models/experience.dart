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
        'iOS and Android',
        'MFA sign in',
        'Biometric sign in',
        'Purchase codes',
        'Purchase approval',
        'Invoices list with details',
        'Internationalisation',
      ],
      position: 'Principal Engineer/Architect II',
      positionDescription: [
        'Responsibilities included the software architecture, design, implementation, automated testing, build and deployment.',
      ],
      positionAccomplishments: [
        'Developed a cross platform mobile application using Flutter.',
        'Developed a backend REST API using Go.',
        'Implemented mobile application and REST API server CI test pipelines using Gitlab CI.',
        'Implemented mobile application and REST API server CI build and deployment pipelines using Gitlab CI.',
        'Configured AWS managed Kubernetes Gitlab CI runner resources.',
        'Configured AWS managed Kubernetes deployment resources.',
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
        'A web based form for customers to apply for a new account.',
      ],
      projectFeatures: [
        'Capture customer business information',
        'Capture applicant information',
        'Step by step guidance for the applicant as they progress through the application',
        'Submit application to backend underwriting platform for credit approval',
        'Present application outcome',
      ],
      position: 'Principal Engineer/Architect II',
      positionDescription: [
        'Responsibilities included the software architecture, design, implementation, automated testing, build and deployment.',
      ],
      positionAccomplishments: [
        'Developed a SPA using Quasar Framework',
        'Developed a backend REST API for managing application data using Go',
        'Developed backend server to submit applications and process results from the underwriting platform using Go',
        'Implemented SPA and REST API CI test pipelines using Gitlab CI.',
        'Implemented SPA and REST API CI build and deployment pipelines using Gitlab CI.',
        'Configured AWS managed Kubernetes Gitlab CI runner resources.',
        'Configured AWS managed Kubernetes deployment resources.',
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
        'TODO',
      ],
      positionDescription: [
        'Responsibilities included that of the team delivery and technical lead, the software architecture, design, implementation, automated testing, build and deployment.',
      ],
      positionAccomplishments: [
        'TODO',
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
        'TODO',
      ],
      position: 'Engineer III/Architect I',
      positionDescription: [
        'Responsibilities included implementing features for the marketplace software along with the software architecture, design, implementation, automated testing, build and deployment of the payment processing sub-system.',
      ],
      positionAccomplishments: [
        'TODO',
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
        'TODO',
      ],
      position: 'Engineer III/Architect I',
      positionDescription: [
        'Responsibilities included the software architecture, design, implementation, automated testing, build and deployment.',
      ],
      positionAccomplishments: [
        'TODO',
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
        'TODO',
      ],
      position: 'Engineer II',
      positionDescription: [
        'As an experienced engineer, I was responsible for the software design and implementation.',
      ],
      positionAccomplishments: [
        'TODO',
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
        'TODO',
      ],
      position: 'Engineer II',
      positionDescription: [
        'As an engineer, I shared responsibility for the software design and implementation.',
      ],
      positionAccomplishments: [
        'TODO',
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
        'TODO',
      ],
      position: 'Engineer I',
      positionDescription: [
        'As an engineer, I shared responsibility for the software design and implementation.',
      ],
      positionAccomplishments: [
        'TODO',
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

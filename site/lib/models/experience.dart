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
        'Responsibilities included the software architecture, design, development, automated testing, build and deployment.',
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
        technologyGo,
        technologyPostgres,
        technologyDocker,
        technologyKubernetes,
        technologyAWS,
        technologyGitlab,
      ],
    ),
    Experience(
      projectYearStart: '2020',
      projectYearEnd: '2020',
      project: 'Online Customer Application',
      projectDescription: [
        'A web based application for customers to apply for a new account.',
      ],
      projectFeatures: [
        'Captures applicant business information',
        'Provides step by step guidance for the applicant as they progress through the application',
        'Submits the application to the underwriting platform for real time credit approval',
        'Presents the application outcome',
      ],
      position: 'Principal Engineer/Architect II',
      positionDescription: [
        'Responsibilities included the software architecture, design, development, automated testing, build and deployment.',
      ],
      positionAccomplishments: [
        'Developed a SPA using Quasar Framework',
        'Developed a backend REST API for managing application data using Go',
        'Developed backend server to submit applications and process results from the underwriting platform using Go',
        'Implemented SPA and REST API CI test, build and deployment pipelines using Gitlab CI.',
        'Configured AWS managed Kubernetes Gitlab CI runner resources.',
        'Configured AWS managed Kubernetes deployment resources.',
      ],
      technology: [
        technologyQuasar,
        technologyVueJS,
        technologyJavascript,
        technologyCSS,
        technologyGo,
        technologyPostgres,
        technologyDocker,
        technologyKubernetes,
        technologyAWS,
        technologyGitlab,
      ],
    ),
    Experience(
      projectYearStart: '2015',
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
        'Responsibilities included that of the team delivery and technical lead, the software architecture, design, development, automated testing, build and deployment.',
      ],
      positionAccomplishments: [
        'TODO',
      ],
      technology: [
        technologyQuasar,
        technologyVueJS,
        technologyJavascript,
        technologyCSS,
        technologyGo,
        technologyPostgres,
        technologyDocker,
        technologyKubernetes,
        technologyAWS,
        technologyGitlab,
      ],
    ),
    Experience(
      projectYearStart: '2014',
      projectYearEnd: '2015',
      project: 'Online Marketplace',
      projectDescription: [
        'A multi seller marketplace for the disability sector.',
      ],
      projectFeatures: [
        'TODO',
      ],
      position: 'Engineer III/Architect I',
      positionDescription: [
        'Responsibilities included implementing features for the marketplace software along with the software architecture, design, development, automated testing, build and deployment of the payment processing sub-system.',
      ],
      positionAccomplishments: [
        'TODO',
      ],
      technology: [
        technologyUbuntu,
        technologyROR,
        technologyMySQL,
        technologyGo,
        technologyDocker,
        technologyKubernetes,
        technologyAWS,
        technologyGitlab,
      ],
    ),
    Experience(
      projectYearStart: '2004',
      projectYearEnd: '2014',
      project: 'Enterprise Application Framework',
      projectDescription: [
        'An internal enterprise application framework that provided a complete solution for engineering teams to build web and processing applications for the financial industry. Applications built on the framework are still in service today.',
      ],
      projectFeatures: [
        'Create rich interactive web applications using XML to define UI layout, components and data bindings',
        'Fast web application rendering with progressively enhanced features',
        'Customise the web application theme for white labelled solutions',
        'Standard user login, forgot password and account management screens',
        'Standard job execution and reporting screens for internal operations and financial teams',
        'Extendable component base classes for advanced control and customization',
        'Extendable report base classes for advanced control and customization',
        'Extendable job base classes for advanced control and customization',
        'Configurable scheduling of jobs and reports',
        'Complete suite of developer screens for configuring screen and component user role access, scheduling reports and jobs and managing text translations',
      ],
      position: 'Engineer III/Architect I',
      positionDescription: [
        'Responsibilities included the software architecture, design, development, automated testing, release management and training.',
      ],
      positionAccomplishments: [
        'Designed and developed the web application framework',
        'Designed and developed the web application XML configuration system',
        'Built many of the extendable component classes',
        'Rewrote the XML rendering system to implement a progressive enhancement approach to rich interactive user interfaces, speeding page renders by over 10 times',
        'Built many of the component progressive enhancements',
        'Designed and developed the developer administration screens',
        'Designed and developed the user administration screens',
        'Designed and developed an automated upgrade system for consumers adopting new framework releases',
        'Trained internal engineering teams',
      ],
      technology: [
        technologyRedhatLinux,
        technologyOracle10,
        technologyPerl,
        technologyModPerl,
        technologyJavascript,
        technologyCSS,
      ],
    ),
    Experience(
      projectYearStart: '2002',
      projectYearEnd: '2004',
      project: 'Online Customer Portal',
      projectDescription: [
        'An online customer portal for a billing and payment processing platform.',
      ],
      projectFeatures: [
        'User account management',
        'Transaction search',
        'Transaction list with details',
      ],
      position: 'Engineer II',
      positionDescription: [
        'Responsibilities included the software design and development.',
      ],
      positionAccomplishments: [
        'Developed the application as server rendered HTML pages using Perl CGI with client side enhancements using Javascript.'
      ],
      technology: [
        technologyRedhatLinux,
        technologyOracle8,
        technologyPerl,
        technologyJavascript,
        technologyCSS,
      ],
    ),
    Experience(
      projectYearStart: '2000',
      projectYearEnd: '2002',
      project: 'Transaction, Billing and Payment Processing Platform',
      projectDescription: [
        'A white labelled billing and and payment processing platform.',
      ],
      projectFeatures: [
        'Transaction issuing',
        'Transaction acquiring',
        'Transaction processing',
        'Customer billing',
        'Merchant payments',
      ],
      position: 'Engineer II',
      positionDescription: [
        'Development of new features and bug fixes',
      ],
      positionAccomplishments: [
        'Developed the customer payment application process which allocated customer payments to unpaid transactions.',
      ],
      technology: [
        technologySCOLinux,
        technologyOracle8,
        technologyProC,
      ],
    ),
    Experience(
      projectYearStart: '1999',
      projectYearEnd: '2000',
      project: 'MajorMUD',
      projectDescription: [
        '"MajorMUD - Realm of Legends" is the most popular and heroic text-based fantasy adventure game on the Web. With the promise of battling dragons and thieves and setting out on dangerous quests, the game has become an addiction for thousands of players on the WorldGroup and Major BBS platforms around the world.',
      ],
      projectFeatures: [
        'Text based multi user dungeon',
      ],
      position: 'Engineer I',
      positionDescription: [
        'Development of new features and bug fixes.',
      ],
      positionAccomplishments: [
        'Developed the gang house and gang house shop features for Module 8: A Call to Arms!',
      ],
      technology: [
        technologyC,
        technologyMajorBBS,
        technologyMajorMUD,
      ],
    ),
    Experience(
      projectYearStart: '1997',
      projectYearEnd: '1999',
      project: 'Online Music Store',
      projectDescription: [
        'A full service record label providing a full range of recording, producing, mixing, editing, and publishing services. The online music store provided artist and album search, categorised album listings and shopping cart checkout capabilities.',
      ],
      projectFeatures: [
        'Album and artist search',
        'Categorised album and artist listing',
        'Shopping cart checkout',
      ],
      position: 'Engineer I',
      positionDescription: [
        'Development of new features and bug fixes.',
      ],
      positionAccomplishments: [
        'Developed the categorised album and artist listing.',
      ],
      technology: [
        technologySCOLinux,
        technologyOracle8,
        technologyPerl,
        technologyJavascript,
      ],
    ),
  ];
  return experience;
}

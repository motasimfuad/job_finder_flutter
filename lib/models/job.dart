class Job {
  String company;
  String longUrl;
  bool isMark;
  String title;
  String location;
  String time;
  List<String> req;

  Job({
    required this.company,
    required this.longUrl,
    required this.isMark,
    required this.title,
    required this.location,
    required this.time,
    required this.req,
  });

  static List<Job> generateJobs() {
    return [
      Job(
        company: 'Google LLC',
        longUrl: 'assets/images/google_logo.png',
        isMark: false,
        title: 'Principal Product Design',
        location: 'New york',
        time: 'Full time',
        req: [
          'Creative with an eye for shape and color',
          'Understand different materials and production methods',
          'How technical adn scientific knowledge',
          'Interested in the way people choose and use product',
        ],
      ),
      Job(
        company: 'Airbnb Inc',
        longUrl: 'assets/images/airbnb_logo.png',
        isMark: true,
        title: 'VP business Design',
        location: 'Canada',
        time: 'Part time',
        req: [
          'Creative with an eye for shape and color',
          'Understand different materials and production methods',
          'How technical adn scientific knowledge',
          'Interested in the way people choose and use product',
        ],
      ),
      Job(
        company: 'LinkedIn corp.',
        longUrl: 'assets/images/linkedin_logo.png',
        isMark: true,
        title: 'Talent Acquisation Lead',
        location: 'Canada',
        time: 'Part time',
        req: [
          'Creative with an eye for shape and color',
          'Understand different materials and production methods',
          'How technical adn scientific knowledge',
          'Interested in the way people choose and use product',
        ],
      ),
    ];
  }
}

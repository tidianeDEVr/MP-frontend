class Job {
  final String title;
  final String company;
  final String location;
  final String description;
  final String imagePath;
  final String publicationDate;
  final int numberOfApplicants;

  Job({
    required this.title,
    required this.company,
    required this.location,
    required this.description,
    required this.imagePath,
    required this.publicationDate,
    required this.numberOfApplicants,
  });
}
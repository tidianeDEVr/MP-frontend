import 'package:flutter/material.dart';
import 'package:mouridepro/widgets/job/job_widget.dart';

import '../../type/job_type.dart';


class JobsScreen extends StatelessWidget {
  final List<Job> jobs = [
    Job(
      title: "Software Engineer",
      company: "ABC Company",
      location: "New York",
      description:
          "We are looking for a talented software engineer with experience in Flutter and Dart.",
      imagePath: "assets/images/wave.png",
      publicationDate: "July 1, 2023",
      numberOfApplicants: 50,
    ),
     Job(
      title: "Software Engineer",
      company: "ABC Company",
      location: "New York",
      description:
          "We are looking for a talented software engineer with experience in Flutter and Dart.",
      imagePath: "assets/images/wave.png",
      publicationDate: "July 1, 2023",
      numberOfApplicants: 50,
    ),
      Job(
      title: "Software Engineer",
      company: "ABC Company",
      location: "New York",
      description:
          "We are looking for a talented software engineer with experience in Flutter and Dart.",
      imagePath: "assets/images/wave.png",
      publicationDate: "July 1, 2023",
      numberOfApplicants: 50,
    ),
      Job(
      title: "Software Engineer",
      company: "ABC Company",
      location: "New York",
      description:
          "We are looking for a talented software engineer with experience in Flutter and Dart.",
      imagePath: "assets/images/wave.png",
      publicationDate: "July 1, 2023",
      numberOfApplicants: 50,
    ),
      Job(
      title: "Software Engineer",
      company: "ABC Company",
      location: "New York",
      description:
          "We are looking for a talented software engineer with experience in Flutter and Dart.",
      imagePath: "assets/images/wave.png",
      publicationDate: "July 1, 2023",
      numberOfApplicants: 50,
    ),
      Job(
      title: "Software Engineer",
      company: "ABC Company",
      location: "New York",
      description:
          "We are looking for a talented software engineer with experience in Flutter and Dart.",
      imagePath: "assets/images/wave.png",
      publicationDate: "July 1, 2023",
      numberOfApplicants: 50,
    ),
      Job(
      title: "Software Engineer",
      company: "ABC Company",
      location: "New York",
      description:
          "We are looking for a talented software engineer with experience in Flutter and Dart.",
      imagePath: "assets/images/wave.png",
      publicationDate: "July 1, 2023",
      numberOfApplicants: 50,
    ),
      Job(
      title: "Software Engineer",
      company: "ABC Company",
      location: "New York",
      description:
          "We are looking for a talented software engineer with experience in Flutter and Dart.",
      imagePath: "assets/images/wave.png",
      publicationDate: "July 1, 2023",
      numberOfApplicants: 50,
    ),
    // Ajoutez d'autres emplois ici
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: JobsWidget(jobs: jobs)
        )
    );
  }
}


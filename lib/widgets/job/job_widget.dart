import 'package:flutter/material.dart';
import 'package:mouridepro/screens/jobs/detail_job.dart';
import 'package:mouridepro/widgets/job/job_detail_widget.dart';

import '../../type/job_type.dart';

class JobsWidget extends StatelessWidget {
  final List<Job> jobs;

  JobsWidget({required this.jobs});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: jobs.length,
      itemBuilder: (context, index) {
        final job = jobs[index];
        return ListTile(
          leading: Image.asset(
            job.imagePath,
            width: 48,
            height: 48,
          ),
          title: Text(job.title),
          subtitle: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(job.company),
                    Text(job.location),
                  ],
                ),
              ),
              SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(job.publicationDate),
                  Text("${job.numberOfApplicants} applicants"),
                ],
              ),
            ],
          ),
          onTap: () {
            // Gérez l'action lorsque l'utilisateur appuie sur un emploi spécifique
            // Navigator.push(
            //     context, MaterialPageRoute(builder: (context) => DetailJob()));
          },
        );
      },
      separatorBuilder: (context, index) => Container(
        margin: EdgeInsets.symmetric(
            vertical:
                8.0), // Espacement vertical autour de la ligne de séparation
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal:
                  16.0), // Espacement horizontal autour de la ligne de séparation
          child: Container(
            height: 0.5, // Hauteur de la ligne de séparation (en pixels)
            color: Colors.grey, // Couleur de la ligne de séparation
          ),
        ),
      ),
    );
  }
}

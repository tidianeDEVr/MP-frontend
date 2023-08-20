import 'package:flutter/material.dart';
import 'package:mouridepro/widgets/job/job_detail_widget.dart';

class DetailJob extends StatefulWidget {
  const DetailJob({super.key});

  @override
  State<DetailJob> createState() => _DetailJobState();
}

class _DetailJobState extends State<DetailJob> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: JobDetailPage(applicantsCount: 12, company: 'Finetech groupe', jobTitle: 'Developer', description: 'description', location: 'fall', logoUrl: 'assets/images/pp.png', publishDate: 'date', requirements: 'jfjjjkfkkkf',)
        )
    );
  }
}
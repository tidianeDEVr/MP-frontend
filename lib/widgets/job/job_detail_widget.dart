import 'package:flutter/material.dart';

class JobDetailPage extends StatelessWidget {
  final String jobTitle;
  final String company;
  final String description;
  final String requirements;
  final String location;
  final String publishDate;
  final String logoUrl;
  final int applicantsCount;

  JobDetailPage({
    required this.jobTitle,
    required this.company,
    required this.description,
    required this.requirements,
    required this.location,
    required this.publishDate,
    required this.logoUrl,
    required this.applicantsCount,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Détails de l\'emploi'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Container(
                    width: 80.0,
                    height: 60.0,
                    child: Image.asset(
                      logoUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          company,
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4.0),
                        Text(
                          location,
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Ajoutez d'autres éléments de la page de détail de l'emploi ici
          ],
        ),
      ),
    );
  }
}

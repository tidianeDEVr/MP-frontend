import 'package:flutter/material.dart';
import 'package:mouridepro/constants.dart';
import '../../utils/provider-api-donation.dart';

class DonationWidget extends StatefulWidget {
  @override
  _DonationWidgetState createState() => _DonationWidgetState();
}

class _DonationWidgetState extends State<DonationWidget> {
  int selectedCircleIndex = -1;

  final List<ProviderData> providers = [
    ProviderData(
      name: "Orange",
      image: 'assets/images/orange.png',
      api: "https://api.orange.com",
    ),
    ProviderData(
      name: "Wave",
      image: 'assets/images/wave.png',
      api: "https://api.wave.com",
    ),
    ProviderData(
      name: "Freemoney",
      image: 'assets/images/free.png',
      api: "https://api.freemoney.com",
    ),
    ProviderData(
      name: "e-money",
      image: 'assets/images/emoney.png',
      api: "https://api.freemoney.com",
    ),
    ProviderData(
      name: "Freemoney",
      image: 'assets/images/orange.png',
      api: "https://api.freemoney.com",
    ),
    ProviderData(
      name: "Freemoney",
      image: 'assets/images/orange.png',
      api: "https://api.freemoney.com",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return
     Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GridView.builder(
              shrinkWrap: true, // Ajout de shrinkWrap pour limiter la taille du GridView
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
              ),
              itemCount: providers.length,
              itemBuilder: (context, index) {
                bool isSelected = index == selectedCircleIndex;
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedCircleIndex = index;
                      print(providers[index].name);
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: isSelected ? inputColor : Colors.transparent,
                        width: 2,
                      ),
                    ),
                    child: CircleAvatar(
                      radius: 34,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(providers[index].image),
                        radius: 50,
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      );
  }
}

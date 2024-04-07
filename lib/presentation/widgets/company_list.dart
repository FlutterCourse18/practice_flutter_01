import 'package:flutter/material.dart';
import 'package:praktika_01/presentation/widgets/company_card.dart';

class CompanyList extends StatelessWidget {
  const CompanyList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<CompanyInfo> companyInfo = [
      CompanyInfo(text: "Apple", image: "assets/png/apple_logo.png"),
      CompanyInfo(text: "Concept2", image: "assets/png/c2_logo.png"),
      CompanyInfo(text: "Eight", image: "assets/png/eight_logo.png"),
      CompanyInfo(text: "FitBit", image: "assets/png/fitbit_logo.png"),
      CompanyInfo(text: "Garmin", image: "assets/png/garmig_logo.png"),
      CompanyInfo(text: "Google Fit", image: "assets/png/googlefit_logo.png"),
      CompanyInfo(text: "Google", image: "assets/png/googlefit_logo.png"),
      CompanyInfo(text: "Goog", image: "assets/png/googlefit_logo.png"),
    ];
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
          children: companyInfo
              .map(
                (e) => CompanyCard(
                  companyText: e.text,
                  imageUrl: e.image,
                ),
              )
              .toList()),
    );
  }
}

class CompanyInfo {
  CompanyInfo({required this.text, required this.image});
  final String text;
  final String image;
}

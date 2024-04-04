import 'package:flutter/material.dart';
import 'package:praktika_01/presentation/widgets/company_card.dart';

class CompanyList extends StatelessWidget {
  const CompanyList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Map<String, String> companyInfo = {
      "Apple": "assets/png/apple_logo.png",
      "Concept2": "assets/png/c2_logo.png",
      "Eight": "assets/png/eight_logo.png",
      "FitBit": "assets/png/fitbit_logo.png",
      "Garmin": "assets/png/garmig_logo.png",
      "Google Fit": "assets/png/googlefit_logo.png",
      "Google": "assets/png/googlefit_logo.png",
      "Goog": "assets/png/googlefit_logo.png",
    
    };
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: [
          ...List.generate(
              companyInfo.length,
              (index) => GestureDetector(
                    child: CompanyCard(
                      companyText: companyInfo.keys.elementAt(index),
                      imageUrl: companyInfo.values.elementAt(index),
                    ),
                  ))
        ],
      ),
    );
  }
}

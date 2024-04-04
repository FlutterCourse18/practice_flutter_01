import 'package:flutter/material.dart';
import 'package:praktika_01/presentation/widgets/connect_button.dart';

class CompanyCard extends StatelessWidget {
  const CompanyCard({super.key, required this.companyText, required this.imageUrl, this.link});

  final String imageUrl;
  final String companyText;
  final String? link;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 15,
              offset: const Offset(0, 4),
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: Row(
            children: [
              Image.asset(imageUrl),
              const SizedBox(
                width: 14,
              ),
              Text(
                companyText,
                style: const  TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Spacer(),
              ConnectButton(
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}

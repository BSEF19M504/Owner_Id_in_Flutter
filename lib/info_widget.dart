import 'package:flutter/material.dart';
import 'info.dart';

class InfoDataWidget extends StatelessWidget {
  final InfoData infoData;
  const InfoDataWidget({super.key, required this.infoData});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16, 12, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              infoData.option,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17.5,
                  letterSpacing: 1.5,
                  color: Colors.grey[600]
              ),
            ),
            const SizedBox(
              height: 5,
            ),Text(
              infoData.answer,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22.50,
                  letterSpacing: 2,
                  color: Colors.grey[800]
              ),
            ),
          ],
        ),
      ),
    );
  }
}
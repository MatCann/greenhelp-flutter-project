import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WorkInProgressPage extends StatelessWidget {
  const WorkInProgressPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF49724d),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded,
            size: 30,
          ),
          tooltip: 'Retour',
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('A venir',
          style: GoogleFonts.nunito(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(40, 60, 40, 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Travail en cours",
              style: GoogleFonts.nunito(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Ceci est une Beta, cette page n'a pas encore été développée. Vous y aurez accès prochainement. Merci de votre compréhension.",
              style: GoogleFonts.nunito(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

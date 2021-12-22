import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF49724d),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          tooltip: 'Retour',
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Profil',
          style: GoogleFonts.nunito(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}

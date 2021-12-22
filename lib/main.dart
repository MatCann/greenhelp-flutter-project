import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greenhelp_app_plantsitting/chat_page.dart';
//import 'package:greenhelp_app_plantsitting/profil_page.dart';
import 'package:greenhelp_app_plantsitting/work_in_progress_page.dart';
import 'package:animate_do/animate_do.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Greenhelp',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Nunito',
        primaryColor: const Color(0xFF49724d),
      ),
      home: const MyHomePage(),
    );
  }
}


class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: const Color(0xFF49724d),
        title: Text('Greenhelp',
          style: GoogleFonts.nunito(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.message_rounded,
              size: 35,
              color: Color(0xFF4FFD900),
            ),
            tooltip: 'Messagerie',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ChatPage()),
              );
            },
          ),
          IconButton(

            padding: const EdgeInsets.fromLTRB(15, 0, 25, 0),
            icon: const Icon(Icons.account_circle_rounded,
              size: 35,
              color: Color(0xFF4FFD900),
            ),
            tooltip: 'Profil',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const WorkInProgressPage()),
              );
            },
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("Image/HomePage_background.png",
              ),
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Bonjour Matéo !',
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: const [
                  Icon(Icons.location_pin,
                    color: Color(0xFF89ce72),
                  ),
                  Text('Brest',
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                padding: const EdgeInsets.fromLTRB(80, 20, 20, 20),
                width: 400,
                height: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: const DecorationImage(
                    image: AssetImage("Image/Image1.png"
                    ),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 13.0,
                      offset: Offset(0.0, 6.0),
                    ),
                  ],
                ),
                child: Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text('Trouver une main verte',
                              style: GoogleFonts.nunito(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: const Color(0xFF49724d),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text('Je souhaite faire garder mes plantes par une main verte le temps de mon absence.',
                              style: GoogleFonts.nunito(
                                fontWeight: FontWeight.normal,
                                fontSize: 15,
                                color: const Color(0xFF49724d).withOpacity(0.8),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFF49724d),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: 40,
                        height: 40,
                        child: IconButton(
                          icon: const Icon(Icons.arrow_forward_rounded,
                            size: 23,
                            color: Colors.white,
                          ),
                          alignment: Alignment.center,
                          tooltip: 'Trouvez une main verte',
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const WorkInProgressPage()),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                padding: const EdgeInsets.fromLTRB(80, 20, 20, 20),
                width: 400,
                height: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: const DecorationImage(
                    image: AssetImage("Image/Image2.png"
                    ),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 13.0,
                      offset: Offset(0.0, 6.0),
                    ),
                  ],
                ),
                child: Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text('Devenir une main verte',
                              style: GoogleFonts.nunito(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: const Color(0xFF49724d),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text('Je souhaite garder les plantes des autres durant leur absence en devenant une main verte',
                              style: GoogleFonts.nunito(
                                fontWeight: FontWeight.normal,
                                fontSize: 15,
                                color: const Color(0xFF49724d).withOpacity(0.8),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFF49724d),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: 40,
                        height: 40,
                        child: IconButton(
                          icon: const Icon(Icons.arrow_forward_rounded,
                            size: 23,
                            color: Colors.white,
                          ),
                          alignment: Alignment.center,
                          tooltip: 'Devenez une main verte',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const WorkInProgressPage()),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ten_days_ui_challenge/core/constants.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios_new, color: color3),
        actions: const [Icon(Icons.more_vert, color: color3)],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                child: Image.asset('assets/images/Rectangle 7.png'),
              ),
              const SizedBox(height: 10),
              Text(
                'Mary Smithson',
                textAlign: TextAlign.center,
                style: GoogleFonts.rubik(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF334968),
                ),
              ),
              const SizedBox(height: 5),
              Text(
                '''Visual Designer and Photographer \n London UK''',
                textAlign: TextAlign.center,
                style: textStyle1,
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 40,
                width: 136,
                child: ElevatedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      backgroundColor: const Color(0xFF6976EB)),
                  child: Text(
                    'Follow',
                    style: GoogleFonts.rubik(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFFFFFFFF),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Photos',
                          textAlign: TextAlign.center,
                          style: textStyle1,
                        ),
                        Text(
                          'Followers',
                          textAlign: TextAlign.center,
                          style: textStyle1,
                        ),
                        Text(
                          'Follows',
                          textAlign: TextAlign.center,
                          style: textStyle1,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          '758',
                          textAlign: TextAlign.center,
                          style: textStyle2,
                        ),
                        Text(
                          '938',
                          textAlign: TextAlign.center,
                          style: textStyle2,
                        ),
                        Text(
                          '878',
                          textAlign: TextAlign.center,
                          style: textStyle2,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              StaggeredGrid.count(
                crossAxisCount: 2,
                children: [
                  Image.asset('assets/images/Rectangle 12.png'),
                  Image.asset('assets/images/Rectangle 13.png'),
                  Image.asset('assets/images/Rectangle 14.png'),
                  Image.asset('assets/images/Rectangle 15.png'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

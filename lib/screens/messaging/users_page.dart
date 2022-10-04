// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jiffy/jiffy.dart';
import 'package:ten_days_ui_challenge/core/chat_fake_data.dart';
import 'package:ten_days_ui_challenge/core/constants.dart';
import 'package:ten_days_ui_challenge/screens/messaging/chat_page.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color4,
        leading: const Icon(Icons.arrow_back_ios_new),
        title: Row(
          children: [
            Text(
              'Online',
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: const Color(0xFFEAEBEF),
              ),
            ),
            const SizedBox(width: 5),
            Text(
              'Buddies',
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.normal,
                color: const Color(0xFFEAEBEF),
              ),
            ),
          ],
        ),
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: color4,
            height: 80,
            child: ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                final user = userDetails.reversed.toList()[index];
                return Column(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      child: Image.asset(user.imageUrl),
                    ),
                    Text(
                      user.userName.split(' ').first,
                      style: GoogleFonts.poppins(
                        fontSize: 10,
                        fontWeight: FontWeight.normal,
                        color: const Color(0xFFEAEBEF),
                      ),
                    ),
                  ],
                );
              },
              itemCount: userDetails.length - 3,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(width: 20),
            ),
          ),
          Expanded(
              child: ListView.separated(
            itemBuilder: (context, index) {
              final user = userDetails.reversed.toList()[index];
              return GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => ChatPage(
                              userName: user.userName,
                              imageUrl: user.imageUrl,
                            ))),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    child: Image.asset(user.imageUrl),
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        user.userName,
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: const Color(0xFF0041FD),
                        ),
                      ),
                      Text(
                        user.lastMessage,
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: const Color(0xFF373737),
                        ),
                      ),
                    ],
                  ),
                  trailing: Text(
                    Jiffy(user.lastSeen).EEEE,
                    style: GoogleFonts.poppins(
                      fontSize: 10,
                      fontWeight: FontWeight.normal,
                      color: const Color(0xFFB4B4B4),
                    ),
                  ),
                ),
              );
            },
            itemCount: userDetails.length,
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
          )),
        ],
      ),
    );
  }
}

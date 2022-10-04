import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ten_days_ui_challenge/core/chat_fake_data.dart';
import 'package:ten_days_ui_challenge/core/constants.dart';
import 'package:ten_days_ui_challenge/screens/messaging/message_bubble.dart';

class ChatPage extends StatefulWidget {
  final String imageUrl;
  final String userName;
  const ChatPage({super.key, required this.imageUrl, required this.userName});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final _controller = TextEditingController();
  final _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    String msg = '';
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color4,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: const Icon(Icons.arrow_back_ios_new),
        ),
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              child: Image.asset(widget.imageUrl),
            ),
            const SizedBox(width: 10),
            Text(
              widget.userName,
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: whiteTextColor,
              ),
            ),
          ],
        ),
        elevation: 0,
        actions: const [
          CircleAvatar(
            backgroundColor: Color(0xFFE5E5E5),
            child: Icon(
              Icons.notifications_none,
              color: color4,
            ),
          ),
          SizedBox(width: 5),
          CircleAvatar(
            backgroundColor: Color(0xFFE5E5E5),
            child: Icon(
              Icons.back_hand_outlined,
              color: color4,
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
              child: ListView(
                  controller: _scrollController,
                  children: [const SizedBox(height: 10), ...chatMessages])),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: TextField(
              controller: _controller,
              onChanged: (value) => msg = value,
              decoration: chatInputDecoration(() {
                if (msg.isNotEmpty) {
                  setState(() {
                    chatMessages.add(
                      MessageBubble(text: msg, isMe: true, isRepliedMsg: false),
                    );
                    _scrollController.animateTo(
                      _scrollController.position.maxScrollExtent,
                      curve: Curves.easeOut,
                      duration: const Duration(milliseconds: 500),
                    );
                    _controller.clear();
                  });
                }
              }),
            ),
          )
        ],
      ),
    );
  }
}

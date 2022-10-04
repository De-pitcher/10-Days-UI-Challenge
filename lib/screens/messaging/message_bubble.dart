import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ten_days_ui_challenge/core/constants.dart';

class MessageBubble extends StatelessWidget {
  final String text;
  final bool isMe;
  final bool isRepliedMsg;
  const MessageBubble({
    Key? key,
    required this.text,
    required this.isMe,
    required this.isRepliedMsg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: EdgeInsets.only(
            right: isRepliedMsg
                ? 0
                : isMe
                    ? 10
                    : 70,
            left: isRepliedMsg
                ? 0
                : isMe
                    ? 70
                    : 10),
        child: isRepliedMsg
            ? _bodyBuilder(text, isMe)
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: _bodyBuilder(text, isMe)),
                      Text(
                        '11:13',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: greyTextColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
      ),
    );
  }

  Widget _bodyBuilder(String text, bool isMe) {
    return Material(
      borderRadius: BorderRadius.circular(19),
      elevation: 0.0,
      color: isMe ? const Color(0xFFEDEEF7) : color4,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        child: Text(
          text,
          style: GoogleFonts.poppins(
            fontSize: 14,
            color: isMe ? greyTextColor : whiteTextColor,
          ),
        ),
      ),
    );
  }
}

class ReplyMessageBubble extends StatelessWidget {
  final String text;
  final bool isMe;
  final MessageBubble repliedMessage;
  const ReplyMessageBubble({
    Key? key,
    required this.text,
    required this.isMe,
    required this.repliedMessage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: EdgeInsets.only(right: isMe ? 10 : 50, left: isMe ? 50 : 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Material(
              borderRadius: BorderRadius.circular(19),
              elevation: 0.0,
              color: isMe ? const Color(0xFFEDEEF7) : color4,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    repliedMessage,
                    Text(
                      text,
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: isMe ? greyTextColor : whiteTextColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Text(
              '11:13',
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: greyTextColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

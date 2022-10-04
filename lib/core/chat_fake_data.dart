import 'package:flutter/material.dart';
import 'package:ten_days_ui_challenge/screens/messaging/message_bubble.dart';

List<Widget> chatMessages = [
  const MessageBubble(
    text: 'What\'s up bro?',
    isMe: false,
    isRepliedMsg: false,
  ),
  const SizedBox(height: 10),
  const ReplyMessageBubble(
    text: 'What\'s up bro?',
    isMe: true,
    repliedMessage: MessageBubble(
      text: 'What\'s up bro?',
      isMe: false,
      isRepliedMsg: true,
    ),
  ),
  const SizedBox(height: 10),
  const MessageBubble(
    text: 'What\'s up bro? adsdfsdfsdfasfasfdfasdasdfasdfasdfasdf',
    isMe: false,
    isRepliedMsg: false,
  ),
  const MessageBubble(
    text: 'What\'s up bro?',
    isMe: false,
    isRepliedMsg: false,
  ),
];

class UserDetail {
  final String imageUrl;
  final String userName;
  final String lastMessage;
  final DateTime lastSeen;
  UserDetail(this.imageUrl, this.userName, this.lastMessage, this.lastSeen);
}

final userDetails = [
  UserDetail(
      'assets/images/Unsplash-Avatars_0004s_0007_nathan-dumlao-Ju--S80ezyU-unsplash.png',
      'Sha Shefield',
      'Can I call U back',
      DateTime(2022, 8, 22)),
  UserDetail(
      'assets/images/Unsplash-Avatars_0004s_0007_nathan-dumlao-Ju--S80ezyU-unsplash(1).png',
      'Terny Lambert',
      'Can I call U back',
      DateTime(2022, 8, 22)),
  UserDetail(
      'assets/images/Unsplash-Avatars_0004s_0007_nathan-dumlao-Ju--S80ezyU-unsplash(2).png',
      'Julia Cooper',
      'Can I call U back',
      DateTime(2022, 8, 22)),
  UserDetail(
      'assets/images/Unsplash-Avatars_0004s_0007_nathan-dumlao-Ju--S80ezyU-unsplash(3).png',
      'Lisa Shenild',
      'Can I call U back',
      DateTime(2022, 8, 22)),
  UserDetail(
      'assets/images/Unsplash-Avatars_0004s_0007_nathan-dumlao-Ju--S80ezyU-unsplash(4).png',
      'Mike Levin',
      'Can I call U back',
      DateTime(2022, 8, 22)),
  UserDetail(
      'assets/images/Unsplash-Avatars_0004s_0007_nathan-dumlao-Ju--S80ezyU-unsplash(5).png',
      'Brian Doe',
      'Can I call U back',
      DateTime(2022, 09, 21)),
  UserDetail(
      'assets/images/Unsplash-Avatars_0004s_0007_nathan-dumlao-Ju--S80ezyU-unsplash(6).png',
      'John Wick',
      'Can I call U back',
      DateTime(2022, 8, 4)),
  UserDetail(
      'assets/images/Unsplash-Avatars_0004s_0007_nathan-dumlao-Ju--S80ezyU-unsplash(7).png',
      'Rosina Pissasco',
      'Can I call U back',
      DateTime(2022, 8, 9)),
  UserDetail(
      'assets/images/Unsplash-Avatars_0004s_0007_nathan-dumlao-Ju--S80ezyU-unsplash(8).png',
      'Princess Charlse',
      'Can I call U back',
      DateTime(2022, 8, 30)),
  UserDetail(
      'assets/images/Unsplash-Avatars_0004s_0007_nathan-dumlao-Ju--S80ezyU-unsplash(9).png',
      'Michael Owen',
      'Can I call U back',
      DateTime(2022, 9, 22)),
];

part of '../tdapi.dart';

class ChatInviteLinkMember extends TdObject {
  /// Describes a chat member joined a chat by an invite link
  ChatInviteLinkMember({this.userId, this.joinedChatDate});

  /// [userId] User identifier
  int userId;

  /// [joinedChatDate] Point in time (Unix timestamp) when the user joined the chat
  int joinedChatDate;

  /// Parse from a json
  ChatInviteLinkMember.fromJson(Map<String, dynamic> json) {
    this.userId = json['user_id'];
    this.joinedChatDate = json['joined_chat_date'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": this.userId,
      "joined_chat_date": this.joinedChatDate,
    };
  }

  static const CONSTRUCTOR = 'chatInviteLinkMember';

  @override
  String getConstructor() => CONSTRUCTOR;
}

part of '../tdapi.dart';

class ChatInviteLinkCounts extends TdObject {
  /// Contains a list of chat invite link counts
  ChatInviteLinkCounts({this.inviteLinkCounts});

  /// [inviteLinkCounts] List of invite linkcounts
  List<ChatInviteLinkCount> inviteLinkCounts;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  ChatInviteLinkCounts.fromJson(Map<String, dynamic> json) {
    this.inviteLinkCounts = List<ChatInviteLinkCount>.from(
        (json['invite_link_counts'] ?? [])
            .map((item) =>
                ChatInviteLinkCount.fromJson(item ?? <String, dynamic>{}))
            .toList());
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "invite_link_counts":
          this.inviteLinkCounts.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'chatInviteLinkCounts';

  @override
  String getConstructor() => CONSTRUCTOR;
}

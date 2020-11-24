part of '../tdapi.dart';

class SetInlineGameScore extends TdFunction {
  /// Updates the game score of the specified user in a game; for bots only
  SetInlineGameScore(
      {this.inlineMessageId,
      this.editMessage,
      this.userId,
      this.score,
      this.force});

  /// [inlineMessageId] Inline message identifier
  String inlineMessageId;

  /// [editMessage] True, if the message should be edited
  bool editMessage;

  /// [userId] User identifier
  int userId;

  /// [score] The new score
  int score;

  /// [force] Pass true to update the score even if it decreases. If the score is 0, the user will be deleted from the high score table
  bool force;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  SetInlineGameScore.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "inline_message_id": this.inlineMessageId,
      "edit_message": this.editMessage,
      "user_id": this.userId,
      "score": this.score,
      "force": this.force,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setInlineGameScore';

  @override
  String getConstructor() => CONSTRUCTOR;
}

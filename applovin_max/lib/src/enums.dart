/// Represents an AdView ad position.
enum AdViewPosition {
  topCenter("top_center"),
  topRight("top_right"),
  centered("centered"),
  centerLeft("center_left"),
  centerRight("center_right"),
  bottomLeft("bottom_left"),
  bottomCenter("bottom_center"),
  bottomRight("bottom_right");

  /// @nodoc
  final String value;

  /// @nodoc
  const AdViewPosition(this.value);
}

///
/// Represents whether or not the consent dialog should be shown for this user.
///
/// The state where no such determination could be made is represented by [ConsentDialogState.unknown].
///
enum ConsentDialogState {
  ///
  /// The consent dialog state could not be determined. This is likely due to the SDK failing to initialize.
  ///
  unknown,

  ///
  /// This user should be shown a consent dialog.
  ///
  applies,

  ///
  /// This user should not be shown a consent dialog.
  ///
  doesNotApply
}

///
/// Represents content ratings for the ads shown to users.
///
/// They correspond to IQG Media Ratings.
///
enum AdContentRating {
  none(0),
  allAudiences(1),
  everyoneOverTwelve(2),
  matureAudiences(3);

  /// @nodoc
  final int value;

  /// @nodoc
  const AdContentRating(this.value);
}

///
/// Represents gender.
///
enum UserGender {
  unknown('U'),
  female('F'),
  male('M'),
  other('O');

  /// @nodoc
  final String value;

  /// @nodoc
  const UserGender(this.value);
}

///
/// This enum represents the user's geography used to determine the type of
/// consent flow shown to the user.
///
enum ConsentFlowUserGeography {
  /// User's geography is unknown.
  unknown('U'),

  /// The user is in GDPR region.
  gdpr('G'),

  /// The user is in a non-GDPR region.
  other('O');

  /// @nodoc
  final String value;

  /// @nodoc
  const ConsentFlowUserGeography(this.value);
}

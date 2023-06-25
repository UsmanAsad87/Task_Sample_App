class UserModel {
  final String displayName;
  final String email;
  final String uid;
  final DateTime createdAt;

//<editor-fold desc="Data Methods">
  const UserModel({
    required this.displayName,
    required this.email,
    required this.uid,
    required this.createdAt,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserModel &&
          runtimeType == other.runtimeType &&
          displayName == other.displayName &&
          email == other.email &&
          uid == other.uid &&
          createdAt == other.createdAt);

  @override
  int get hashCode =>
      displayName.hashCode ^
      email.hashCode ^
      uid.hashCode ^
      createdAt.hashCode;

  @override
  String toString() {
    return 'UserModel{' +
        ' displayName: $displayName,' +
        ' email: $email,' +
        ' uid: $uid,' +
        ' createdAt: $createdAt,' +
        '}';
  }

  UserModel copyWith({
    String? displayName,
    String? email,
    String? uid,
    String? country,
    String? type,
    DateTime? createdAt,
  }) {
    return UserModel(
      displayName: displayName ?? this.displayName,
      email: email ?? this.email,
      uid: uid ?? this.uid,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'displayName': this.displayName,
      'email': this.email,
      'uid': this.uid,
      'createdAt': this.createdAt.toIso8601String(),
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      displayName: map['displayName'] as String,
      email: map['email'] as String,
      uid: map['uid'] as String,
      createdAt: DateTime.parse(map['createdAt'] as String),
    );
  }

//</editor-fold>
}

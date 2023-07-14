class UserData {
  final String name;
  final String email;
  final String uid;
  final String bio;
  final String pictureUrl;
  final List follower;
  final List following;

  UserData({
    required this.name,
    required this.email,
    required this.uid,
    required this.bio,
    required this.pictureUrl,
    required this.follower,
    required this.following,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'uid': uid,
      'bio': bio,
      'pictureUrl': pictureUrl,
      'followers': [],
      'following': []
    };
  }
}

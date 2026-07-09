class Apps {
  String name;
  String description;
  String image;

  Apps(this.name, this.description, this.image);

}

class User {
  String username;
  String password;

  User(this.username, this.password);

  static List<User> users = [
    User(" ", " "),
    User("user2", "password2"),
  ];
}
class UserModel {
  String name;
  String message;
  String image;

  UserModel({
    required this.name,
    required this.message,
    required this.image,
  });

  static List < UserModel > getUsers() {
    List < UserModel > users = [];

    users.add(
      UserModel(
       name: 'Showrav',
       message: "Hello Showrav",
       image: "https://i.ibb.co/yFX3wxW/png-clipart-man-with-formal-suit-illustration-web-development-computer-icons-avatar-business-user-pr.png"
      )
    );
    users.add(
      UserModel(
       name: 'Labib',
       message: "Hello Labib",
       image: "https://i.ibb.co/gwGyZP0/5556468.png"
      )
    );
    users.add(
      UserModel(
       name: 'Sabbir',
       message: "Hello Sabbir",
       image: "https://i.ibb.co/8Pk25z7/png-transparent-avatar-male-man-portrait-avatars-xmas-giveaway-icon.png"
      )
    );
    users.add(
      UserModel(
       name: 'Zayn',
       message: "Hello Zayn",
       image: "https://i.ibb.co/yFX3wxW/png-clipart-man-with-formal-suit-illustration-web-development-computer-icons-avatar-business-user-pr.png"
      )
    );
    users.add(
      UserModel(
       name: 'Zahed',
       message: "Hello Zahed",
       image: "https://i.ibb.co/gwGyZP0/5556468.png"
      )
    );
    users.add(
      UserModel(
       name: 'Uhla',
       message: "Hello Uhla",
       image: "https://i.ibb.co/8Pk25z7/png-transparent-avatar-male-man-portrait-avatars-xmas-giveaway-icon.png"

      )
    );
    users.add(
      UserModel(
       name: 'Showrav',
       message: "Hello Showrav",
       image: "https://i.ibb.co/yFX3wxW/png-clipart-man-with-formal-suit-illustration-web-development-computer-icons-avatar-business-user-pr.png"
      )
    );
    users.add(
      UserModel(
       name: 'Labib',
       message: "Hello Labib",
       image: "https://i.ibb.co/gwGyZP0/5556468.png"
      )
    );
    users.add(
      UserModel(
       name: 'Sabbir',
       message: "Hello Sabbir",
       image: "https://i.ibb.co/8Pk25z7/png-transparent-avatar-male-man-portrait-avatars-xmas-giveaway-icon.png"
      )
    );
    users.add(
      UserModel(
       name: 'Zayn',
       message: "Hello Zayn",
       image: "https://i.ibb.co/yFX3wxW/png-clipart-man-with-formal-suit-illustration-web-development-computer-icons-avatar-business-user-pr.png"
      )
    );
    users.add(
      UserModel(
       name: 'Zahed',
       message: "Hello Zahed",
       image: "https://i.ibb.co/gwGyZP0/5556468.png"
      )
    );
    users.add(
      UserModel(
       name: 'Uhla',
       message: "Hello Uhla",
       image: "https://i.ibb.co/8Pk25z7/png-transparent-avatar-male-man-portrait-avatars-xmas-giveaway-icon.png"

      )
    );

    return users;
  }
}
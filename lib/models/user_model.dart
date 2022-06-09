class User {
  String userName;
  String userGender;
  String userBirthday;
  String userInvitationCode;
  String shopName;
  String shopCategory;
  String shopLocation;
  String shopOpenHour;
  String shopEmail;
  String shopWebSite;
  String shopPhoneNumber;
  bool isBusinessUser;
  User(
      this.userName,
      this.userGender,
      this.userBirthday,
      this.userInvitationCode,
      this.shopName,
      this.shopCategory,
      this.shopLocation,
      this.shopOpenHour,
      this.shopEmail,
      this.shopWebSite,
      this.shopPhoneNumber)
      : isBusinessUser = false;
}

// class SimpleUser extends User {
//   SimpleUser(
//     String a,
//     String b,
//     String c,
//     String d,
//   ) : super(a, b, c, d);
// }

// class BusinsessUser extends User {
//   BusinsessUser(
//     String a,
//     String b,
//     String c,
//     String d,
//   ) : super(a, b, c, d);
// }

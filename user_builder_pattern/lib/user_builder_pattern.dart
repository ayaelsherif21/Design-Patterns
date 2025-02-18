class User {
  final String firstName;
  final String lastName;
  final int? age;
  final String? phone;

  User._({
    required this.firstName,
    required this.lastName,
    this.age,
    this.phone,
  });

  factory User.fromBuilder(UserBuilder builder) {
    return User._(
      firstName: builder.firstName,
      lastName: builder.lastName,
      age: builder.age,
      phone: builder.phone,
    );
  }
}

class UserBuilder {
  final String firstName;
  final String lastName;
  int? age;
  String? phone;

  UserBuilder({required this.firstName, required this.lastName});

  UserBuilder setAge(int age) {
    this.age = age;
    return this;
  }

  UserBuilder setPhone(String phone) {
    this.phone = phone;
    return this;
  }

  User build() {
    return User.fromBuilder(this);
  }
}

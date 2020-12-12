class RundomUser {
  final String gender;
  final String title;
  final String first;
  final String last;
  final String city;
  final String country;
  final String age;
  final String phone;
  final String pictureLarge;
  final String pictureMedium;
  final String email;
  final String id;
  @override
  String toString() {
    return '$gender, $title, $first, $city, $country, $age, $phone, $pictureLarge, $email';
  }

  RundomUser.fromJson(Map<String, dynamic> json)
      : gender = json['results'][0]['gender'],
        title = json['results'][0]['name']['title'],
        first = json['results'][0]['name']['first'],
        last = json['results'][0]['name']['last'],
        city = json['results'][0]['location']['city'],
        country = json['results'][0]['location']['country'],
        age = json['results'][0]['dob']['age'].toString(),
        phone = json['results'][0]['phone'],
        pictureLarge = json['results'][0]['picture']['large'],
        pictureMedium = json['results'][0]['picture']['medium'],
        email = json['results'][0]['email'],
        id = _getId(json);
}

String _getId(json) => '${json['results'][0]['id']['name']} : ${json['results'][0]['id']['value']}';

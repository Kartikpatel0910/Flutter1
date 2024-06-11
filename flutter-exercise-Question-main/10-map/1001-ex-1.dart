void main() {
  Map<String, dynamic> v = {
    'Name': 'Rudra It Hub',
    'Mobile': 9892345678,
    'Address': 'Leela Circle,Bhavnagar',
    'Courses': ['Android', 'Ios', 'Java', 'Swift']
  };
  print(v);
  print(v['Mobile']);
  print(v.length);
  print(v.containsKey('Name'));
  v.forEach((key, value) {
    print("$key, $value");
  });

  v.remove('Address');
  print(v);
  v['Email Id'] = 'rudraithub.bhavangar@gmail.com';
  print(v);

  print(v.isEmpty);

  v['Student Name'] = 'Abhi';
  v['Student Mobile Number'] = 9988555663;
  print(v);
  List<dynamic> as = v['Courses'];
  for (var element in as) {
    if (element == 'Java') {
      print("Java Is Available");
    }
  }
}
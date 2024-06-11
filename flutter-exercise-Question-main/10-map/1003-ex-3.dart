void main() {
  Map<String, dynamic> v = {
    'Hospital Name': 'Pulse',
    'Mobile': 900099890,
    'Address': 'Top three,Bhavnagar',
    'Courses': ['Radiology','Orthopedics']
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
  v['Email Id'] = 'pulse@gmail.com';
  print(v);

  print(v.isEmpty);

  v['Doctor Name'] = 'J.B.Patel';
  v['Staff'] = 400;
  print(v);
  List<dynamic> as = v['Courses'];
  for (var element in as) {
    if (element == 'Radiology') {
      print("Radiology Is Available");
    }
  }
}
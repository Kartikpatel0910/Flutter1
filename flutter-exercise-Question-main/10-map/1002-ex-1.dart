void main() {
  Map<String, dynamic> v = {
    'Name': 'Gyanguru vidhyapith',
    'Mobile': 900099890,
    'Address': 'Sagwadi,Bhavnagar',
    'Courses': ['Commerce', 'Science', 'Arts']
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
  v['Email Id'] = 'gyanguru@gmail.com';
  print(v);

  print(v.isEmpty);

  v['Student Name'] = 'JD';
  v['Student City'] = 9988555663;
  print(v);
  List<dynamic> as = v['Courses'];
  for (var element in as) {
    if (element == 'Science') {
      print("Science Is Available");
    }
  }
}

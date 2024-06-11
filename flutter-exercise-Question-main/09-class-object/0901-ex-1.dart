void main() {
  var obj = student();
  obj.detail(40, "Mahek", "9-5-2021", 9966332255, "Bhavnagar");
}

class student {
  void detail(int a, String b, String c, int d, String e) {
    print("Roll NO:-   $a");
    print("Roll Name:- $b");
    print("DOB:- $c");
    print("Roll Mobile number:- $d");
    print("Roll City Name:- $e");
  }
}

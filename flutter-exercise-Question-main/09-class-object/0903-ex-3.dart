void main() {
  var obj = student();
  obj.detail("HDFC", 364011223387, "Avenue Road", "Banglore");
}

class student {
  void detail(String a, int b,String c, String d) {
    print("Bank Name :-   $a");
    print("Account Number:- $b");
    print("Address:- $c");
    print("City:- $d");

  }
}

void main() {
  var obj = student();
  obj.detail("Pratik Mehta", 699885533, 32255, "TechQuest");
}

class student {
  void detail(String a, int b,int c, String d) {
    print("Name :-   $a");
    print("Mobile Number:- $b");
    print("Sallary:- $c");
    print("Company:- $d");

  }
}
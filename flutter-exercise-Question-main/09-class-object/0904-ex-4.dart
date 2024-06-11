void main() {
  var obj = student();
  obj.detail("Gyanguru Vidhyapith", "Sagwadi", "Manharbhai Rathod", 20);
}

class student {
  void detail(String a, String b, String c, int d) {
    print(" $a");
    print(" $b");
    print(" $c");
    print(" $d");
  }
}

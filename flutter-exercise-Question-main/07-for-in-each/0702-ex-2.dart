void main() {
  List j = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  j.forEach(((element) => j));
  {
    print(j);
  }
}
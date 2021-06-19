bool isValid(String isbn) {
  String compactd = isbn.replaceAll('-', '');

  int sum = 0;

  for (int i = 0, mult = 10; i < 9; ++i, --mult) {
    sum += mult * int.parse(compactd[i]);
  }
  var c = compactd[9];
  sum += c == "A" ? 10 : int.parse(c);
  return (sum % 11 == 0);
}

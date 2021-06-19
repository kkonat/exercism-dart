import 'package:binary_search_tree/binary_search_tree.dart';

void main() {
  final bst = BinarySearchTree('4');
  print(bst.root!.data);
  bst.insert('5');
  print(bst.root.right!.data);
}

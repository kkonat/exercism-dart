import 'dart:core';

class Node {
  late String _data;
  Node? _left;
  Node? _right;

  Node([String d = ""]) {
    _left = null;
    _right = null;
    _data = d;
  }
  String get data => _data;
  Node? get left => _left;
  Node? get right => _right;
  set left(Node? n) {
    _left = n;
  }

  set right(Node? n) {
    _right = n;
  }
}

class BinarySearchTree {
  late Node _root;

  BinarySearchTree(String val) {
    var n = new Node(val);
    _root = n;
  }

  Node get root => _root;
  List<String> get sortedData {
    List<String> output = [];

    void traverse(Node? node) {
      if (node != null) {
        traverse(node!.left);
        output.add(node.data);
        traverse(node!.right);
      }
    }

    traverse(_root);
    return output;
  }

  void insert(String d) {
    Node? ptr = _root;
    Node? follow;
    while (ptr != null) {
      if (d.compareTo(ptr.data) < 1)
        follow = ptr.left;
      else
        follow = ptr.right;

      if (follow == null)
        follow = new Node(d);
      else
        ptr = follow;
    }
  }
}

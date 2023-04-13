import 'dart:developer';

class NoTree {
  NoTree? leftNo;
  NoTree? rigthNo;
  int value;

  NoTree({
    this.leftNo,
    this.rigthNo,
    required this.value,
  });

  void display() {
    log('${value.toString()}');
  }
}

Future<void> hello() {
  return Future.delayed(Duration(seconds: 2), () {
    print('Hello Dart');
  });
}

void main() {
  hello();
  print("Done");
}

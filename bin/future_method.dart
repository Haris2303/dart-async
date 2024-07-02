Future<String> sayHello(String name) {
  return Future.delayed(Duration(seconds: 2), () {
    // return "Hello $name";
    // throw Error();
    return Future.error(Exception("Ups"));
  });
}

void main() {
  sayHello('otong')
      .onError((error, stackTrace) => "Fallback")
      .then((value) => print(value));

  sayHello('Ucup')
      .then((value) => print(value))
      .catchError((error) => print("Error with message ${error.message}"))
      .whenComplete(() => print('Done'));
}

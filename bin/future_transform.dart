Future<String> name() {
  return Future.value("Otong Surotong Strong");
}

void main() {
  name()
      .then((value) => value.split(" ")) // Future<List<String>>
      .then((value) => value.reversed) // Future<Iterable<String>>
      .then((value) =>
          value.map((e) => e.toUpperCase())) // Future<Iterable<String>>
      .then((value) => print(value));

  print("Done");
}

void main(List<String> args) {
  String? name = null;
  // String firstName = "Fred";

  // print(name!+" "+firstName);

  // print(name?.length);

  int sizeOfName = name == null ? 0:name.length;
  
  // if (name == null) {
  //   sizeOfName = 0;
  // } else {
  //   sizeOfName = name.length;
  // }
  
  // sizeOfName = name?.length ?? 0;
  
  print(sizeOfName);
}

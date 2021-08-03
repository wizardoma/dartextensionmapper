void main() {
  Set<String> list = {
    "List",
    "Space",
  };

  print(list.elementAt(0).toSingletonList());

}

extension StringConverters on String {

 List<String> toSingletonList() {
   return [this];
 }
}
void main() {
  List<String> colors = ["Red", "Blue", "Green"];
  List<String> colors2 = ["Yellow", "Purple", "Orange"];

  List<String> list = List.from(colors);
  List<String> list2 = List.from(colors2);

  list.addAll(list2);

  list2.clear();

  print("danh sach truoc khi chuyen doi: $list");

  list = list.map((element) => element.toUpperCase()).toList();

  print("danh sach sau khi chuyen doi: $list");
}

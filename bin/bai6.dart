void main() {
  List<String> colors = ["Red", "Blue", "Green"];
  List<String> colors2 = ["Yellow", "Purple", "Orange"];

  List<String> list = List.from(colors);
  List<String> list2 = List.from(colors2);

  list.addAll(list2);
  list2.clear();

  print("danh sach truoc khi doi: $list");
  list = list.map((element) => element.toUpperCase()).toList();
  print("danh sach sau khi doi: $list");

  if (list.length >= 6) {
    list.removeRange(3, 6);
  }

  print("sau khi xoa phan tu 4 den 6: $list");
  list = list.reversed.toList();
  print("danh sach dao nguoc: $list");
}

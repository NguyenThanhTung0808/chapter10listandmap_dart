void main() {
  List<String> colors = ["Red", "Blue", "Green"];
  List<String> colors2 = ["Yellow", "Purple", "Orange"];

  List<String> list = List.from(colors);
  List<String> list2 = List.from(colors2);

  list.addAll(list2);

  list2.clear();

  print("danh sach sau khi them phan tu cua list2: $list");

  print("List2 sau khi xoa: $list2");
}

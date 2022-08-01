main(List<String> args) {
  Set<String> isimler = Set();
  isimler.add("mirac");
  isimler.add("yahya");
  isimler.add("dogukan");
  isimler.add("ümit");
  isimler.add("soner");
  isimler.add("dilan");

  bool sonucum = isimler.remove("soner");
  print("sonuc : " + sonucum.toString());

  print("*********************************");

  for (String s1 in isimler) {
    print("isim : $s1");
  }

  Set<int> numaralar = Set.from([
    1,
    2,
    3,
    4,
    2,
    1,
    5,
    2,
    1,
    4,
    1,
    1,
    1,
    1,
  ]);
  List<int> ciftSayilar = [0, 2, 4, 6, 8, 10, 8, 6, 4, 2, 0];

  for (int s1 in numaralar) {
    print("no : $s1");
  }

  numaralar.clear();
  numaralar.addAll(ciftSayilar);

  for (int s1 in numaralar) {
    print("add alldan sonra no : $s1");
  }
}

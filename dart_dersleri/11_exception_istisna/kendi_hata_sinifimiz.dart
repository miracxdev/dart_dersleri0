main(List<String> args) {
  try {
    Ogrenci mirac = Ogrenci(-5);
    print(mirac.yas);
  } on AgeException catch (e) {
    print(e.mesaj);
  } finally {
    print("Program bitti");

    try {
      Ogrenci mirac = Ogrenci(-5);
      print(mirac.yas);
    } catch (e) {
      print(e);
    }
  }
}

class AgeException implements Exception {
  String mesaj;

  AgeException({this.mesaj = 'AgeException'});

  @override
  String toString() {
    return "Hatanın tostring metotu calıstı";
  }
}

class Ogrenci {
  int yas = 0;

  Ogrenci(int yas) {
    if (yas < 0) {
      throw AgeException(mesaj: 'AgeException - Yaş negatif olamaz');
    } else
      this.yas = yas;
  }
}

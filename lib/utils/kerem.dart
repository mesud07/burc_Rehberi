
class ParaYatirmaException implements Exception {
  void hataGoster() => "Negatif sayı girdiniz";
}

main(List<String> args) {
  try {
    paraYatir(-60);
  } catch (hataGoster) {
    print(hataGoster);
  }


}

paraYatir(int miktar) {
  if (miktar < 0) {
    throw new ParaYatirmaException();
  } else
    print("Hesabınıza $miktar TL yatırıldı");
}

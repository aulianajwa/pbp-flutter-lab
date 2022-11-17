class Budget {
  String judul;
  int nominal = 0;
  String jenis;
  static List<Budget> listBudget = [];

  Budget({
    required this.judul,
    required this.nominal,
    required this.jenis,
  });
}

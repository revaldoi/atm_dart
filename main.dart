import "dart:io";

void main() {
  print("user name : ");
  var inUsername = stdin.readLineSync();
  print("password : ");
  var inPassword = stdin.readLineSync();

  var username = "revaldo";

  if (inUsername == "revaldo" && inPassword == "edo123") {
    print("Login Berhasil");
    print("\n");
    print("Hi REVALDO PRATAMA");
    int saldo = 3000000;
    transaksi(saldo);
  } else if (inUsername == "acep" && inPassword == "acep123") {
    print("Login Berhasil");
    print("\n");
    print("Hi ACEP ANDRIYAN");
    int saldo = 4000000;
    transaksi(saldo);
  } else {
    print("Login gagal");
  }
}

void transaksi(int saldo) {
  saldo = saldo;
  print("\n");
  print("TRANSAKSI");
  print("1. Tarik Tunai");
  print("2. Setor Tunai");
  print("3. Cek Saldo");
  print("4. Log Out");

  print("Pilih transaksi : ");
  int inTransaksi = int.parse(stdin.readLineSync());

  if (inTransaksi == 1) {
    print("Jumlah tarik tunai : ");
    int tarik = int.parse(stdin.readLineSync());
    saldo = saldo - tarik;
    print("Sisa saldo : ");
    print(saldo);
  } else if (inTransaksi == 2) {
    print("Jumlah setor tunai : ");
    int setor = int.parse(stdin.readLineSync());
    saldo = saldo + setor;
    print("Jumlah saldo : ");
    print(saldo);
  } else if (inTransaksi == 3) {
    print("Jumlah saldo : ");
    print(saldo);
  } else {
    main();
  }

  transaksi(saldo);
}

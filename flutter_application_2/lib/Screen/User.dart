class Nguoidung {
  String uid;
  final String hoten;
  final String tendangnhap;
  // final DateTime ngaysinh;
  final String email;
  int? xu;
  int? cap;
  int? thang;
  int? hanhtinh;

  Nguoidung({
    this.uid = "",
    required this.hoten,
    required this.tendangnhap,
    required this.email,
    this.xu,
    this.cap,
    this.thang,
    this.hanhtinh,

    //required this.ngaysinh
  });

  Nguoidung.fromJson(Map<String, dynamic> res)
      : uid = res['uid'],
        hoten = res['hoten'],
        email = res['email'],
        tendangnhap = res['tendangnhap'],
        xu = res['xu'],
        cap = res['cap'],
        thang = res['thang'],
        hanhtinh = res['hanhtinh'];

  Map<String, dynamic> toJson() => {
        'uid': uid,
        'hoten': hoten,
        'tendangnhap': tendangnhap,
        'email': email,
        'xu': xu,
        'cap': cap,
        'thang': thang,
        'hanhtinh': hanhtinh,
        //'ngaysinh': ngaysinh,
      };
}

class Nguoidung {
  String uid;
  final String hoten;
  final String tendangnhap;
  // final DateTime ngaysinh;
  final String email;

  Nguoidung({
    this.uid = "",
    required this.hoten,
    required this.tendangnhap,
    required this.email,
    //required this.ngaysinh
  });

  Nguoidung.fromJson(Map<String, dynamic> res)
      : uid = res['uid'],
        hoten = res['hoten'],
        email = res['email'],
        tendangnhap = res['tendangnhap'];

  Map<String, dynamic> toJson() => {
        'uid': uid,
        'hoten': hoten,
        'tendangnhap': tendangnhap,
        'email': email,
        //'ngaysinh': ngaysinh,
      };
}

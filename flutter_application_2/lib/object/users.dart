class User {
    User({
        required this.id,
        required this.tendangnhap,
        required this.cap,
        required this.hanhtinh,
        required this.xu,
        required this.kinhnghiem
    });

    String id;
    String tendangnhap;
    int cap;
    String hanhtinh;
    int xu;
    int kinhnghiem;

    factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        tendangnhap: json["tendangnhap"],
        cap: json["cap"],
        hanhtinh: json["hanhtinh"],
        xu:json["xu"],
        kinhnghiem: json["kinhnghiem"]
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "username": tendangnhap,
        "cap": cap,
        "hanhtinh": hanhtinh,
        "xu":xu,
        "kinhnghiem": kinhnghiem
    };
}
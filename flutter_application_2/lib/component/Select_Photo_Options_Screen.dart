import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class SelectPhotoOptionsScreen extends StatelessWidget {
  final Function(ImageSource source) onTap;
  const SelectPhotoOptionsScreen({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return Container(
    height: 100.0,
    width: MediaQuery.of(context).size.width,
    margin: EdgeInsets.symmetric(
      horizontal: 20,
      vertical: 20
    ),
    child: Column(
      children: <Widget>[
        Text('Chọn thư mục hình ảnh',style: TextStyle(fontSize: 20),),
        SizedBox(
          height: 20,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          TextButton.icon(
            onPressed: ()
            => onTap(ImageSource.camera),
            icon: Icon(Icons.camera), 
            label: Text("Camera"),
            ),
          TextButton.icon(
            onPressed: ()=> onTap(ImageSource.gallery),
            icon: Icon(Icons.image), 
            label: Text("Gallery"),
            ),
        ],)
      ],
    ),
  );
  }
}

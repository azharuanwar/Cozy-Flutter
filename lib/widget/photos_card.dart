import 'package:cozy/models/photos_models.dart';
import 'package:flutter/material.dart';

class Photos extends StatelessWidget {
  // const Photos({ Key? key }) : super(key: key);

  final PhotosModels photoModel;
  Photos(this.photoModel);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 12),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          // margin: EdgeInsets.only(right: 12),
          height: 88,
          width: 110,
          child: Image.asset(
            photoModel.imgUrl!,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

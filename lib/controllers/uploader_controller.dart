import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class UploaderController extends GetxController{
  final ImagePicker _picker = ImagePicker();

  var imageOne = Rxn<File>();
  var imageTwo = Rxn<File>();
  var imageThree = Rxn<File>();
  var imageFour = Rxn<File>();
  var logo = Rxn<File>();
  var cover = Rxn<File>();

  RxList<String> _images = <String>[].obs;

  List<String> get images => _images;

  set setImages(String newValue){
    _images.add(newValue);
  }

  RxString _imageOneUrl = ''.obs;
  RxString _imageTwoUrl = ''.obs;
  RxString _imageThreeUrl = ''.obs;
  RxString _imageFourUrl = ''.obs;
  RxString _logoUrl = ''.obs;
  RxString _coverUrl = ''.obs;

  String get imageOneUrl => _imageOneUrl.value;

  String get imageTwoUrl => _imageTwoUrl.value;

  String get imageThreeUrl => _imageThreeUrl.value;

  String get imageFourUrl => _imageFourUrl.value;

  String get logoUrl => _logoUrl.value;

  String get coverUrl => _coverUrl.value;

  set setLogoUrl(String newValue){
    _logoUrl.value = newValue;
  }

  set setCoverUrl(String newValue){
    _coverUrl.value = newValue;
  }

  set setImageOneUrl(String newValue){
    _imageOneUrl.value = newValue;
  }

  set setImageTwoUrl(String newValue){
    _imageTwoUrl.value = newValue;
  }

  set setImageThreeUrl(String newValue){
    _imageThreeUrl.value = newValue;
  }

  set setImageFourUrl(String newValue){
    _imageFourUrl.value = newValue;
  }

  Future<void> pickImage(String type) async{
    final pickedImage = await _picker.pickImage(source: ImageSource.gallery);

    if(pickedImage != null){
      if(type== 'one'){
        imageOne.value = File(pickedImage.path);
        print(imageOne.value);
        return;
      }else if (type == 'two'){
        imageTwo.value = File(pickedImage.path);
        return;
      }else if (type == 'three'){
        imageThree.value = File(pickedImage.path);
        return;
      }else if (type == 'four'){
        imageFour.value = File(pickedImage.path);
        return;
      }
    }
  }

  Future<void> uploadImageToFirebase(String type) async{
    if (type == 'one'){
      try{
        String filename = 'images/${DateTime.now().millisecondsSinceEpoch}_${imageOne.value!.path.split('/').last}';

        TaskSnapshot snapshot = await FirebaseStorage.instance
            .ref()
            .child(filename)
            .putFile(imageOne.value!);

        setImageOneUrl = await snapshot.ref.getDownloadURL();


      } catch (e){
        debugPrint(e.toString());
      }
    }
  }
}
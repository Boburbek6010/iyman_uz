import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';

import '../../../data/domain/namoz_repository.dart';

Reference get firebaseStorage => FirebaseStorage.instance.ref();

class HomeVM extends ChangeNotifier{

  NamozRepository namozRepository = NamozRepository.instance;
  String? currentTime;
  bool isLoading = false;
  String? formattedCurrentTime;
  int currentTimeInInt = 0;
  String str = "";
  String currentDay = "Today";
  DateTime now = DateTime.now();
  String? bamdodTimeInString;
  String? quyoshTimeInString;
  String? peshinTimeInString;
  String? asrTimeInString;
  String? shomTimeInString;
  String? huftonTimeInString;
  int valueOfTimeB = 0;
  int valueOfTimeQ = 0;
  int valueOfTimeP = 0;
  int valueOfTimeA = 0;
  int valueOfTimeSh = 0;
  int valueOfTimeH = 0;
  String imgRef = "";

  void onInit(){
    currentTime = DateFormat('kk:mm').format(now);
    currentDay = DateFormat(' EEE d MMM').format(now);
    formattedCurrentTime = currentTime?.substring(0, 2);
    currentTimeInInt = int.parse(formattedCurrentTime!);
    namozRepository.getAllTimes().then((value) {
      bamdodTimeInString = namozRepository.response?.times?.tongSaharlik?.substring(0, 2);
      quyoshTimeInString = namozRepository.response?.times?.quyosh?.substring(0, 2);
      peshinTimeInString = namozRepository.response?.times?.peshin?.substring(0, 2);
      asrTimeInString = namozRepository.response?.times?.asr?.substring(0, 2);
      shomTimeInString = namozRepository.response?.times?.shomIftor?.substring(0, 2);
      huftonTimeInString = namozRepository.response?.times?.hufton?.substring(0, 2);
      getImage("img_1").then((value) {
        valueOfTimeB = int.parse(bamdodTimeInString!);
        valueOfTimeQ = int.parse(quyoshTimeInString!);
        valueOfTimeP = int.parse(peshinTimeInString!);
        valueOfTimeA = int.parse(asrTimeInString!);
        valueOfTimeSh = int.parse(shomTimeInString!);
        valueOfTimeH = int.parse(huftonTimeInString!);
        notifyListeners();
      });
      notifyListeners();
    });
  }

  String namozTimes(){
    Future.delayed(Duration.zero).then((value) {
      notifyListeners();
    });
    if(currentTimeInInt > valueOfTimeH){
      str = "X";
      return "Xufton";
    }
    else if(currentTimeInInt > valueOfTimeSh){
      str = "Sh";
      return "Shom";
    }
    else if(currentTimeInInt > valueOfTimeA){
      str = "A";
      return "Asr";
    }
    else if(currentTimeInInt > valueOfTimeP){
      str = "P";
      return "Peshin";
    }
    else if(currentTimeInInt > valueOfTimeQ){
      str = "B";
      return "Bamdod";
    }
    else{
      str = "null";
      return "Bamdod";
    }
  }

  String namozTimesReal(){
    Future.delayed(Duration.zero).then((value) {
      notifyListeners();
    });
    if(str == "P"){
      return namozRepository.response?.times?.peshin ?? "";
    }
    else if(str == "A"){
      return namozRepository.response?.times?.asr ?? "";
    }
    else if(str =="Sh"){
      return namozRepository.response?.times?.shomIftor ?? "";
    }
    else if(str == "X"){
      return namozRepository.response?.times?.hufton ?? "";
    }
    else{
      return namozRepository.response?.times?.tongSaharlik ?? "";
    }
  }

  Future<String?> getImage(String? imgName)async{
    notifyListeners();
    if(imgName == null){
      print("null");
      return null;
    }
    try{
      var urlRef = firebaseStorage.child("logo").child('${imgName.toLowerCase()}.png');
      imgRef = await urlRef.getDownloadURL();
      isLoading = true;
      return imgRef;
    }catch(e){
      print(e);
      return null;
    }
  }


}
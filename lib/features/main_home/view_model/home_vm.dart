import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';

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

  void onInit()async{
    currentTime = DateFormat('kk:mm').format(now);
    currentDay = DateFormat(' EEE d MMM').format(now);
    formattedCurrentTime = currentTime?.substring(0, 2);
    currentTimeInInt = int.parse(formattedCurrentTime!);
    namozRepository.getAllTimes().then((value) {
      notifyListeners();
      bamdodTimeInString = namozRepository.response?.times?.tongSaharlik?.substring(0, 2);
      quyoshTimeInString = namozRepository.response?.times?.quyosh?.substring(0, 2);
      peshinTimeInString = namozRepository.response?.times?.peshin?.substring(0, 2);
      asrTimeInString = namozRepository.response?.times?.asr?.substring(0, 2);
      shomTimeInString = namozRepository.response?.times?.shomIftor?.substring(0, 2);
      huftonTimeInString = namozRepository.response?.times?.hufton?.substring(0, 2);
      valueOfTimeB = int.parse(bamdodTimeInString!);
      print("currentTimeInInt: $currentTimeInInt");
      print("timeB $valueOfTimeB");
      valueOfTimeQ = int.parse(quyoshTimeInString!);
      print("timeQ $valueOfTimeQ");
      valueOfTimeP = int.parse(peshinTimeInString!);
      print("timeP $valueOfTimeP");
      valueOfTimeA = int.parse(asrTimeInString!);
      print("timeA $valueOfTimeA");
      valueOfTimeSh = int.parse(shomTimeInString!);
      print("timeSh $valueOfTimeSh");
      valueOfTimeH = int.parse(huftonTimeInString!);
      print("timeH $valueOfTimeH");
    });
    await getImage("img_1");
  }

  String namozTimes(){
    Future.delayed(Duration.zero).then((value) {
      notifyListeners();
    });
    if(currentTimeInInt > valueOfTimeQ){
      str = "P";
      return "Peshin";
    }else if(currentTimeInInt > valueOfTimeP){
      str = "A";
      return "Asr";
    }else if(currentTimeInInt > valueOfTimeA){
      str = "Sh";
      return "Shom";
    }else if(currentTimeInInt > valueOfTimeSh){
      str = "X";
      return "Xufton";
    }else if(currentTimeInInt > valueOfTimeH){
      str = "B";
      return "Bamdod";
    }else{
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
    }else if(str == "A"){
      return namozRepository.response?.times?.asr ?? "";
    }else if(str =="Sh"){
      return namozRepository.response?.times?.shomIftor ?? "";
    }else if(str == "X"){
      return namozRepository.response?.times?.hufton ?? "";
    }else{
      return namozRepository.response?.times?.tongSaharlik ?? "";
    }
  }

  Future<String?> getImage(String? imgName)async{
    if(imgName == null){
      return null;
    }
    try{
      var urlRef = firebaseStorage.child("logo").child('${imgName.toLowerCase()}.png');
      imgRef = await urlRef.getDownloadURL();
      print(imgRef);
      isLoading = true;
      print(isLoading);
      return imgRef;
    }catch(e){
      print(e);
      return null;
    }
  }


}
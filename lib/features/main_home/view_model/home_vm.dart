import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:iyman_uz/data/model/namoz_hours.dart';

import '../../../data/domain/namoz_repository.dart';


class HomeVM extends ChangeNotifier{

  NamozRepository namozRepository = NamozRepository.instance;
  String? currentTime;
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

  void onInit(){
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
  }

  String namozTimes(){
    Future.delayed(Duration.zero).then((value) {
      notifyListeners();
    });
    if(currentTimeInInt > valueOfTimeQ){
      str = "P";
      // notifyListeners();
      return "Peshin";
    }else if(currentTimeInInt > valueOfTimeP){
      str = "A";
      // notifyListeners();
      return "Asr";
    }else if(currentTimeInInt > valueOfTimeA){
      str = "Sh";
      // notifyListeners();
      return "Shom";
    }else if(currentTimeInInt > valueOfTimeSh){
      str = "X";
      // notifyListeners();
      return "Xufton";
    }else if(currentTimeInInt > valueOfTimeH){
      str = "B";
      // notifyListeners();
      return "Bamdod";
    }else{
      str = "null";
      // notifyListeners();
      return "Bamdod";
    }
  }


  String namozTimesReal(){
    Future.delayed(Duration.zero).then((value) {
      notifyListeners();
    });
    if(str == "P"){
      // notifyListeners();
      return namozRepository.response?.times?.peshin ?? "";
    }else if(str == "A"){
      // notifyListeners();
      return namozRepository.response?.times?.asr ?? "";
    }else if(str =="Sh"){
      // notifyListeners();
      return namozRepository.response?.times?.shomIftor ?? "";
    }else if(str == "X"){
      // notifyListeners();
      return namozRepository.response?.times?.hufton ?? "";
    }else{
      // notifyListeners();
      return namozRepository.response?.times?.tongSaharlik ?? "";
    }
  }


}
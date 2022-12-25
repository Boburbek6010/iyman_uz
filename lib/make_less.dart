import 'package:flutter/material.dart';

import 'data/domain/namoz_repository.dart';

class StatefulWrapper extends StatefulWidget {
  final Function onInit;
  final Widget child;
  const StatefulWrapper({super.key, required this.onInit, required this.child});
  @override
  StatefulWrapperState createState() => StatefulWrapperState();
}
class StatefulWrapperState extends State<StatefulWrapper> {

  NamozRepository namozRepository = NamozRepository.instance;

  void update(){
    print("object44");
    setState(() {});
  }

  @override
  void initState() {
    Future.delayed(Duration.zero).then((value) {
      print("object55");
      if(namozRepository.isDataVisible){
        update.call();
      }
      widget.onInit();
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
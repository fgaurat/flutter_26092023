import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tp_mvvm/models/user_view_mode.dart';

class ShowUserName extends StatelessWidget {
  const ShowUserName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    log("ShowUserName build");
    UserViewModel uvm = Provider.of<UserViewModel>(context);

    return Text("ShowUserName : ${uvm.userName}");
  }
}

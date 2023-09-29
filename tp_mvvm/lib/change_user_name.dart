import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tp_mvvm/models/user_view_mode.dart';

class ChangeUserName extends StatelessWidget {
  const ChangeUserName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    log("ChangeUserName build");
    UserViewModel uvm = Provider.of<UserViewModel>(context, listen: false);

    return ElevatedButton(
      child: const Text("ChangeUserName"),
      onPressed: () {
        uvm.userName = "Flutter";
      },
    );
  }
}

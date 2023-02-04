import 'package:flutter/material.dart';

import 'package:clone/viewmodel/app_view_model.dart';

class Communities extends StatefulWidget {
  const Communities({Key? key}) : super(key: key);

  @override
  State<Communities> createState() => _CommunitiesState();
}

class _CommunitiesState extends State<Communities> {
  AppViewModel appModel = AppViewModel();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          width: double.infinity,
          height: 150,
        ),
        Text(
          'Introducing communities',
          style: TextStyle(
            color: appModel.textDark,
            fontSize: 22,
            fontWeight: FontWeight.w400
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 28.0, top: 10.0, left: 20, right: 20),
          child: Text(
            'Easily organise your related groups and send announcements. Now, your communities, like neighbourhoods or schools, can have their own space.',
            style: TextStyle(
              color: appModel.textLight,
              fontSize: 15,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: appModel.tealGreenDark,
            shape: const StadiumBorder(),
            elevation: 0,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Text(
              'Start your community',
              style: TextStyle(
                color: appModel.lightWhite,
              ),
            ),
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';

import 'package:clone/viewmodel/app_view_model.dart';

class Status extends StatefulWidget {
  const Status({Key? key}) : super(key: key);

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  AppViewModel appModel = AppViewModel();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 13.0, right: 13.0, top: 7.0, bottom: 25.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              children: [
                SizedBox(
                  height: 50,
                  width: 50,
                  child: Stack(
                      clipBehavior: Clip.none,
                      fit: StackFit.expand,
                      children: [
                        const CircleAvatar(
                          backgroundColor: Color(0xFFE1E5EC),
                          radius: 22,
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: -2,
                          child: CircleAvatar(
                            backgroundColor: appModel.lightWhite,
                            radius: 12,
                            child: Icon(
                              Icons.add_circle,
                              color: appModel.tealGreenLight,
                              size: 25,
                            ),
                          ),
                        )
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'My Status',
                        style: TextStyle(
                            fontSize: 17.0,
                            fontWeight: FontWeight.w500,
                            color: appModel.textDark),
                      ),
                      Text(
                        'Tap to add status update',
                        style: TextStyle(
                            fontSize: 12.0, color: appModel.textLight),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Recent updates',
                style: TextStyle(
                  color: appModel.textLight,
                  fontSize: 14,
                ),
              ),
            ),
          ),
          ListView.builder(
            itemCount: 2,
            shrinkWrap: true,
            itemBuilder: (context, position) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CircleAvatar(
                      backgroundColor: Color(0xFFE1E5EC),
                      radius: 22,
                      child: Icon(
                        Icons.access_time_filled_sharp,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sagar P. C. || $position',
                            style: TextStyle(
                                fontSize: 17.0,
                                fontWeight: FontWeight.w500,
                                color: appModel.textDark),
                          ),
                          Text(
                            '24 minutes ago',
                            style: TextStyle(
                                fontSize: 12.0, color: appModel.textLight),
                          ),
                        ],
                      ),
                    ),
                    // const Flexible(fit: FlexFit.tight, child: SizedBox()),
                  ],
                ),
              );
            },
          ),
          const Divider(
            color: Colors.black26,
          ),
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Icon(
                Icons.lock,
                size: 14,
                color: appModel.textLight,
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  'Your personal calls are end-to-end encrypted',
                  style: TextStyle(fontSize: 11, color: appModel.textLight),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:clone/viewmodel/app_view_model.dart';

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    AppViewModel appModel = AppViewModel();

    return Column(
      children: [
        ListView.builder(
          itemCount: 5,
          shrinkWrap: true,
          padding: const EdgeInsets.only(
              left: 13.0, right: 13.0, top: 7.0, bottom: 16.0),
          itemBuilder: (context, position) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 11.0),
              child: Row(
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
                          'Hello || $position',
                          style: TextStyle(
                              fontSize: 12.0, color: appModel.textLight),
                        ),
                      ],
                    ),
                  ),
                  // SizedBox(width: 40,),
                  // Spacer(),
                  const Expanded(child: SizedBox()),
                  // Flexible(fit: FlexFit.tight, child: SizedBox()),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '10/01/23',
                        style: TextStyle(
                            fontSize: 10.0, color: appModel.lightGreen),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: CircleAvatar(
                          backgroundColor: appModel.lightGreen,
                          radius: 9,
                          child: Text(
                            2.toString(),
                            style: const TextStyle(
                                color: Colors.white, fontSize: 12),
                          ),
                        ),
                      ),
                    ],
                  ),
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
    );
  }
}

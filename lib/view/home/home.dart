import 'package:flutter/material.dart';
import 'package:clone/view/chat/chats.dart';
import 'package:clone/view/communities/communities.dart';
import 'package:clone/view/status/status.dart';
import 'package:clone/view/calls/calls.dart';

import 'package:clone/viewmodel/app_view_model.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final _tabsPage = <Widget>[
    const Communities(),
    const Chats(),
    const Status(),
    const Calls(),
  ];

  final _tabs = <Tab>[
    const Tab(
        iconMargin: EdgeInsets.all(240),
        icon: Icon(Icons.groups)), //Icon(CupertinoIcons.group_solid)
    const Tab(text: 'Chats'),
    const Tab(text: 'Status'),
    const Tab(text: 'Calls'),
  ];

  @override
  Widget build(BuildContext context) {
    AppViewModel appModel = AppViewModel();

    return DefaultTabController(
      length: _tabs.length,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('WhatsApp'),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.photo_camera_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search_outlined),
            ),
            PopupMenuButton(itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                    child: TextButton(
                        onPressed: () {}, child: const Text('New group'))),
                PopupMenuItem(
                    child: TextButton(
                        onPressed: () {}, child: const Text('New broadcast'))),
                PopupMenuItem(
                    child: TextButton(
                        onPressed: () {}, child: const Text('Linked devices'))),
                PopupMenuItem(
                    child: TextButton(
                        onPressed: () {},
                        child: const Text('Starred messages'))),
                PopupMenuItem(
                    child: TextButton(
                        onPressed: () {}, child: const Text('Payments'))),
                PopupMenuItem(
                    child: TextButton(
                        onPressed: () {}, child: const Text('Settings'))),
              ];
            })
          ],
          bottom: TabBar(
            indicatorColor: const Color(0xFFEDF8F5),
            // indicatorSize: TabBarIndicatorSize.tab,
            unselectedLabelColor: appModel.tealGreenLighting,
            tabs: _tabs,

            indicatorWeight: 3,
            // labelColor: const Color(0xFF77D7C8),
          ),
        ),
        body: TabBarView(
          children: _tabsPage,
        ),
      ),
    );
  }
}

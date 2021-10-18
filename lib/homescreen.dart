import 'package:flutter/material.dart';
import 'package:whatsappclone/Pages/callsscreen.dart';
import 'package:whatsappclone/Pages/camerascreen.dart';
import 'package:whatsappclone/Pages/chatscreen.dart';
import 'package:whatsappclone/Pages/statusscreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121b22),
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 0.7,
        backgroundColor: const Color(0xff1f2c34),
        title: const Text(
          "WhatsappBusiness",
          style: TextStyle(
            color: Color(0xff8795a0),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Color(0xff8795a0),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: Color(0xff8795a0),
            ),
          ),
        ],
        bottom: TabBar(
          labelPadding: const EdgeInsets.symmetric(vertical: 8),
          controller: _tabController,
          tabs: const [
            Icon(
              Icons.camera_alt,
              color: Color(0xff8795a0),
            ),
            Text(
              "CHATS",
              style: TextStyle(
                color: Color(0xff8795a0),
              ),
            ),
            Text(
              "STATUS",
              style: TextStyle(
                color: Color(0xff8795a0),
              ),
            ),
            Text(
              "CALLS",
              style: TextStyle(
                color: Color(0xff8795a0),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: TabBarView(
          controller: _tabController,
          children: const [
            CameraScreen(),
            ChatScreen(),
            StatusScreen(),
            CallsScreen(),
          ],
        ),
      ),
    );
  }
}

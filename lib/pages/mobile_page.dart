// ignore_for_file: must_call_super, avoid_print, avoid_unnecessary_containers
import 'package:desktop_layout_view2/widgets/candidate_form.dart';
import 'package:desktop_layout_view2/widgets/logout.dart';
import 'package:desktop_layout_view2/widgets/settings.dart';
import 'package:flutter/material.dart';
import 'package:desktop_layout_view2/widgets/skillsTable.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.greenAccent,
            ),
            child: Text('Welcome!'),
          ),
          ListTile(
            title: const Text('Home'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push<void>(context,
                  MaterialPageRoute(builder: (context) => const MobilePage()));
            },
          ),
          ListTile(
            title: const Text('Settings'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push<void>(context,
                  MaterialPageRoute(builder: (context) => const Settings()));
            },
          ),
          ListTile(
            title: const Text('LogOut'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push<void>(context,
                  MaterialPageRoute(builder: (context) => const LogOut()));
            },
          ),
        ],
      ),
    );
  }
}

class MobilePage extends StatefulWidget {
  const MobilePage({Key? key}) : super(key: key);
  @override
  State<MobilePage> createState() => _MobilePageState();
}

class _MobilePageState extends State<MobilePage>
    with
        AutomaticKeepAliveClientMixin<MobilePage>,
        SingleTickerProviderStateMixin {
  @override
  bool get wantKeepAlive => true;

  static const List<Tab> myTabs = <Tab>[
    Tab(text: 'Home'),
    Tab(text: 'Skills'),
  ];

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: _tabController,
          tabs: myTabs,
        ),
        title: const Text('Home Page'),
      ),
      drawer: const SideDrawer(),
      body: TabBarView(controller: _tabController, children:  const <Widget>[
        CandidateForm(),
        SkillsTable(),
      ]),
    );
  }
}
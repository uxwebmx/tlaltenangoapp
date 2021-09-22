import 'package:flutter/material.dart';
import 'package:tlalteapp/pages/web_site.dart';
import 'package:tlalteapp/pages/videos.dart';
import 'package:tlalteapp/pages/reminders.dart';

/*  Drawer Canva donde se encuentra el Menu */
class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: const <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/logo_official.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: null,
          ),
          MenuListTileWidget(),
        ],
      ),
    );
  }
}

/*  Lista de Menu Principal */
class MenuListTileWidget extends StatelessWidget {
  const MenuListTileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: const Icon(Icons.archive),
          title: const Text('Ultimas Transmisiones'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Reminders(),
              ),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.web_sharp),
          title: const Text('WebSite'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const WebSite(),
              ),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.video_library_rounded),
          title: const Text('Videos'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const VideosTube(),
              ),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.wallet_giftcard),
          title: const Text('Donate'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Reminders(),
              ),
            );
          },
        ),
        const Divider(color: Colors.grey),
        ListTile(
          leading: const Icon(Icons.settings),
          title: const Text('Setting'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(Icons.email),
          title: const Text('Email DJ'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(Icons.feedback_outlined),
          title: const Text('Envianos tu comentario'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(Icons.quiz_sharp),
          title: const Text('Acerca Tlaltenangoenred'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}

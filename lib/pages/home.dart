import 'package:flutter/material.dart';
import 'package:tlalteapp/pages/my_drawer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Radio Live'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.wallet_giftcard_sharp),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      drawer: const MyDrawer(),
      body: _buildBody1(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.play_arrow),
          backgroundColor: const Color(0xffFFfffC),
          onPressed: () {}),
      bottomNavigationBar: BottomAppBar(
        //hasnotch: true,
        color: const Color(0xffFFfffF),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const <Widget>[
            Icon(Icons.pause),
            Icon(Icons.stop),
            Icon(Icons.access_time),
            Padding(
              padding: EdgeInsets.all(32.0),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildBody1() {
  return SingleChildScrollView(
    child: Column(
      children: <Widget>[
        _buildJournalHeaderImage(),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _buildJournalHeaderImage1(),
                const Divider(),
                _buildJournalEntry(),
                const Divider(),
                _buildJournalWeather(),
                const Divider(),
                _buildJournalTags(),
                const Divider(),
                _buildJournalFooterImages(),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Image _buildJournalHeaderImage() {
  return const Image(
    image: AssetImage('assets/images/logo_official.png'),
    fit: BoxFit.cover,
  );
}

Image _buildJournalHeaderImage1() {
  return const Image(
    image: AssetImage('assets/images/zacatecanos.jpeg'),
    fit: BoxFit.cover,
  );
}

Column _buildJournalEntry() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: const <Widget>[
      Text(
        'Luis lopez',
        style: TextStyle(
          fontSize: 32.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      Divider(),
      Text(
        'It’s going to be a great birthday. We are going out for dinner at myfor ice cream and espresso.',
        style: TextStyle(color: Colors.black54),
      ),
    ],
  );
}

Row _buildJournalWeather() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          Icon(
            Icons.wb_sunny,
            color: Colors.orange,
          ),
        ],
      ),
      const SizedBox(
        width: 16.0,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: const <Widget>[
              Text(
                '81º Clear',
                style: TextStyle(color: Colors.deepOrange),
              ),
            ],
          ),
          Row(
            children: const <Widget>[
              Text(
                '4500 San Alpho Drive, Dallas, TX United States',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}

Wrap _buildJournalTags() {
  return Wrap(
    spacing: 8.0,
    children: List.generate(7, (int index) {
      return Chip(
        label: Text(
          'Gift ${index + 1}',
          style: const TextStyle(fontSize: 10.0),
        ),
        avatar: Icon(
          Icons.card_giftcard,
          color: Colors.blue.shade300,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
          side: const BorderSide(color: Colors.grey),
        ),
        backgroundColor: Colors.grey.shade100,
      );
    }),
  );
}

Row _buildJournalFooterImages() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: const <Widget>[
      CircleAvatar(
        backgroundImage:
            AssetImage('assets/images/waterfall-in-nature-thailand.jpg'),
        radius: 40.0,
      ),
      CircleAvatar(
        backgroundImage:
            AssetImage('assets/images/waterfall-in-nature-thailand.jpg'),
        radius: 40.0,
      ),
      CircleAvatar(
        backgroundImage:
            AssetImage('assets/images/waterfall-in-nature-thailand.jpg'),
        radius: 40.0,
      ),
    ],
  );
}

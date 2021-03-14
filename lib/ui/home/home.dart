import 'package:findit_offline_first/ui/home/lost_and_found_card.dart';
import 'package:findit_offline_first/ui/report_lost_and_found_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Lost and Found'),
        actions: [
          IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ReportLostAndFoundItemPage()));
              }),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: _getLostAndFoundCards(),
      ),
    );
  }

  List<Widget> _getLostAndFoundCards() {
    List<Widget> result = [];
    for (int i = 0; i < 100; i++) {
      result.add(LostAndFoundCard());
    }
    return result;
  }
}

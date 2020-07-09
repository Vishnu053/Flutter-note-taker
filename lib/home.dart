import 'package:common/editor.dart';
import 'package:common/styles/styles.dart';
import 'package:common/widgets/single_card.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String greeting() {
    var hour = DateTime.now().hour;
    if (hour <= 12) {
      return 'Good Morning';
    } else if ((hour > 12) && (hour <= 16)) {
      return 'Good Afternoon';
    } else if ((hour > 16) && (hour < 20)) {
      return 'Good Evening';
    } else {
      return 'Good Night';
    }
  }

  void _newNote() {
    // Fluttertoast.showToast(
    //   msg: "Type in a new note.",
    //   toastLength: Toast.LENGTH_SHORT,
    //   gravity: ToastGravity.BOTTOM,
    //   timeInSecForIosWeb: 2,
    // );
    Navigator.pushNamed(context, 'NoteEditor');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 250.0,
              floating: true,
              pinned: true,
              snap: false,
              elevation: 0,
              backgroundColor: primaryColor,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  // titlePadding:EdgeInsets.fromLTRB(0, 0, 0, 15),
                  title: Text(greeting(),
                      style: baseTextStyle.copyWith(color: Colors.white)),
                  background: Image.network(
                    // 'https://source.unsplash.com/random',
                    'https://images.unsplash.com/photo-1529641484336-ef35148bab06?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
                    fit: BoxFit.cover,
                  )),
            ),
            SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return new GridCard();
                })),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _newNote,
          tooltip: 'New Note',
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

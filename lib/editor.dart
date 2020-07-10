import 'package:common/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:html_editor/html_editor.dart';

class NoteEditor extends StatefulWidget {
  NoteEditor({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _NoteEditorState createState() => _NoteEditorState();
}

class _NoteEditorState extends State<NoteEditor> {
  GlobalKey<HtmlEditorState> keyEditor = GlobalKey();
  String result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Note', style: baseTextStyle.copyWith(fontSize: 16)),
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              HtmlEditor(
                hint: "Start Typing...",
                //value: "text content initial, if any",
                key: keyEditor,
                height: MediaQuery.of(context).size.height - 250,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3)),
                      color: Colors.white,
                      onPressed: () {
                        setState(() {
                          keyEditor.currentState.setEmpty();
                        });
                      },
                      child: Text("Clear",
                          style: TextStyle(color: Colors.indigoAccent)),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3)),
                      color: primaryColor,
                      onPressed: () async {
                        final txt = await keyEditor.currentState.getText();
                        setState(() {
                          result = txt;
                        });
                      },
                      child: Text(
                        "Save",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
	void showWaitDialog() {
    showGeneralDialog(
        context: context,
        pageBuilder: (context, anim1, anim2) {},
        barrierDismissible: true,
        barrierColor: Colors.black.withOpacity(0.4),
        barrierLabel: '',
        transitionBuilder: (context, anim1, anim2, child) {
          return Transform.scale(
            scale: math.radians(anim1.value * 55),
            child: Opacity(
              opacity: anim1.value,
              child: AlertDialog(
                shape: OutlineInputBorder(
                  borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(8)),
                title: Text('Hello!!'),
                content: Text('How are you?'),
              ),
            ),
          );
        },
        transitionDuration: Duration(milliseconds: 300));
  }
}

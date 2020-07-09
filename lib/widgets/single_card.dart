import 'package:flutter/material.dart';
import 'package:common/styles/styles.dart' as styles;

class GridCard extends StatelessWidget {
  const GridCard({Key key, this.title}) : super(key: key);
  final title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
      child: Center(
        child: Material(
          borderRadius: BorderRadius.circular(10.0),
          elevation: 8,
          child: Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                child: Container(
                  child: Image(
                    height: 120,
                    width: 200,
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1499028344343-cd173ffc68a9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60'),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 3, 8, 0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        'Burger',
                        style:
                            styles.baseTextStyle.copyWith(color: Colors.black),
                      ),
                      Spacer(),
                      Text('₹ ', style: TextStyle(fontSize: 19)),
                      Text(
                        '500',
                        style: styles.baseTextStyle.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 19),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Noorjahan',
                        style: styles.baseTextStyle.copyWith(
                            color: Colors.orange,
                            fontWeight: FontWeight.w600,
                            fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

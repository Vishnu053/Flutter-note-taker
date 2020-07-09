import 'package:common/styles/styles.dart';
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
          elevation: 10,
          child: InkWell(
            splashColor: Color(0xFF9FAFDA),
            onTap: () {},
            child: Column(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  // child: Container(
                  //   child: Image(
                  //     height: 120,
                  //     width: 200,
                  //     fit: BoxFit.cover,
                  //     image: NetworkImage(
                  //         'https://images.unsplash.com/photo-1499028344343-cd173ffc68a9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60'),
                  //   ),
                  // ),
                ),
                Container(
                  // alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 6, 8, 6),
                    child: Text(
                      'Title',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: styles.baseTextStyle
                          .copyWith(color: primaryColor, fontSize: 17),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Lorem Ipsum de Lorem Ipsum de Lorem Ipsum de Lorem Ipsum de Lorem Ipsum de Lorem Ipsum de Lorem Ipsum de Lorem Ipsum de Lorede Lorem Ipsum de Lorem Ipsum de Lorem Ipsum de Lorem Ipsum de Lorem Ipsum de Lorem Ipsum de Lorem Ipsum de Lorem Ipsum de Lorem Ipsum de ',
                          maxLines: 6,
                          overflow: TextOverflow.ellipsis,
                          style: styles.baseTextStyle.copyWith(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
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
      ),
    );
  }
}

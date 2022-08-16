import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDesc extends StatelessWidget {
  final String? img;
  final String? title;
  final String? authors;
  final String? desc;

  const BookDesc(
      {Key? key,
      required this.img,
      required this.title,
      required this.desc,
      required this.authors})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${title}'),
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Center(
          child: Column(
            children: [
              Image(
                image: NetworkImage(img!),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text("by ${authors}"),
              SizedBox(
                height: 10.0,
              ),
              Text("${desc}"),
            ],
          ),
        ),
      ),
    );
  }
}

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/views/books_catalog_view.dart';
import 'package:untitled/views/library_view.dart';
import 'package:untitled/views/profile_page.dart';

class BookSearch extends StatefulWidget {
  const BookSearch({Key? key}) : super(key: key);

  @override
  _BookSearchState createState() => _BookSearchState();
}

class _BookSearchState extends State<BookSearch> {
  final _controller = TextEditingController();
  String? text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Books Catalog"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.local_library,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LibraryView(),
                  ));
            },
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfilePage()));
            },
            icon: Icon(Icons.person),
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                padding: EdgeInsets.all(1),
                color: Colors.white,
                child: Container(
                  color: Colors.white,
                  child: TextField(
                    selectionHeightStyle: BoxHeightStyle.max,
                    style: GoogleFonts.nunitoSans(
                        textStyle:
                            TextStyle(color: Colors.black, fontSize: 15)),
                    decoration: InputDecoration(
                      hintStyle: GoogleFonts.nunitoSans(
                          color: Colors.blue, fontSize: 15.0),
                      hintText: "Enter author name or book name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7.0)),
                      fillColor: Colors.white,
                      filled: true,
                      icon: Icon(
                        Icons.search,
                        color: Colors.blue,
                        size: 40.0,
                      ),
                    ),
                    controller: _controller,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              padding: EdgeInsets.all(1),
              color: Colors.black26,
              child: Container(
                  //padding: EdgeInsets.fromLTRB(0, 0, 7, 7),
                  color: Colors.white,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.white,),
                      padding: MaterialStateProperty.all(
                        const EdgeInsets.fromLTRB(5, 0, 0, 0),
                      ),
                    ),
                    child: Text(
                      "Search",
                      style: GoogleFonts.nunitoSans(
                          textStyle: TextStyle(
                              fontStyle: FontStyle.normal,
                              color: Colors.blue,
                              fontSize: 20.0)),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return BooksCatalog(text: _controller.text);
                      }));
                    },
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookCheckout extends StatefulWidget {
  final String fullName;
  final String email;
  final String phoneNumber;
  final String address;
  final int totalBook;

  const BookCheckout({Key? key, required this.fullName, required this.email, required this.phoneNumber, required this.address, required this.totalBook}) : super(key: key);

  @override
  _BookCheckoutState createState() => _BookCheckoutState();
}

class _BookCheckoutState extends State<BookCheckout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Book Checkout"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Full Name", style: TextStyle(fontSize: 30),),
            Text(widget.fullName, style:TextStyle(fontWeight: FontWeight.bold, fontSize: 25) , textAlign: TextAlign.left,),
            SizedBox(height: 15),
            const Text("Email", style: TextStyle(fontSize: 30),),
            Text(widget.email, style:TextStyle(fontWeight: FontWeight.bold, fontSize: 25) ,textAlign: TextAlign.left,),
            SizedBox(height: 15),
            const Text("Phone Number", style: TextStyle(fontSize: 30),),
            Text(widget.phoneNumber, style:TextStyle(fontWeight: FontWeight.bold, fontSize: 25) ,textAlign: TextAlign.left,),
            SizedBox(height: 15),
            const Text("Address", style: TextStyle(fontSize: 30),),
            Text(widget.address, style:TextStyle(fontWeight: FontWeight.bold, fontSize: 25) ,textAlign: TextAlign.left,),
            SizedBox(height: 15),
            const Text("Total Book", style: TextStyle(fontSize: 30),),
            Text(widget.totalBook.toString(), style:TextStyle(fontWeight: FontWeight.bold, fontSize: 25) ,textAlign: TextAlign.left,),
            SizedBox(height: 50),
            Center(
              child: Text("Thank You!", style: TextStyle(fontSize: 30),),
            )
          ],
        ),
      ),
    );
  }
}

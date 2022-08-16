import 'package:flutter/material.dart';
import 'package:untitled/views/book_checkout_view.dart';

class CheckoutForm extends StatefulWidget {
  final int totalBook;
  const CheckoutForm({Key? key, required this.totalBook}) : super(key: key);

  @override
  _CheckoutFormState createState() => _CheckoutFormState();
}

class _CheckoutFormState extends State<CheckoutForm> {
  String fullname = "";
  String email = "";
  String phoneNumber = "";
  String address = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Borrow Book Form"),
      ),
      body: Column(
        children: [
          SizedBox(height: 15),
          _fullNameField(),
          _emailField(),
          _phoneNumberField(),
          _addressField(),
          _submitButton(context)
        ],
      ),
    );
  }

  Widget _fullNameField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        enabled: true,
        onChanged: (value){
          fullname = value;
        },
        decoration: const InputDecoration(
          enabled: true,
          label: Text("Fullname"),
          hintText: 'Enter Fullname',
          contentPadding: const EdgeInsets.all(8.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(color: Colors.blue),
          ),
        ),
      ),
    );
  }

  Widget _emailField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        enabled: true,
        onChanged: (value){
          email = value;
        },
        decoration: const InputDecoration(
          label: Text("Email"),
          hintText: 'Enter Email',
          contentPadding: const EdgeInsets.all(8.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(color: Colors.blue),
          ),
        ),
      ),
    );
  }

  Widget _phoneNumberField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        enabled: true,
        onChanged: (value){
          phoneNumber = value;
        },
        decoration: const InputDecoration(
          label: Text("Phone Number"),
          hintText: 'Enter Phone Number',
          contentPadding: const EdgeInsets.all(8.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(color: Colors.blue),
          ),
        ),
      ),
    );
  }

  Widget _addressField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        enabled: true,
        onChanged: (value){
          address = value;
        },
        decoration: const InputDecoration(
          label: Text("Address"),
          hintText: 'Enter Address',
          contentPadding: const EdgeInsets.all(8.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(color: Colors.blue),
          ),
        ),
      ),
    );
  }

  Widget _submitButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => BookCheckout(fullName: fullname, email: email, phoneNumber: phoneNumber, address: address, totalBook: widget.totalBook,)));
        },
        child: const Text('Submit'),
      ),
    );
  }
}


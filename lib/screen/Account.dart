import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 50,
          backgroundColor: Colors.orange,
          //backgroundImage: AssetImage('images/sura_2.jpg'),
          //backgroundColor: Colors.white,
        ),
        Text(
          'Surafel Teshale',
          style: TextStyle(
            color: Colors.teal.shade900,
            //fontFamily: 'Pacifico',
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'GRAPHICS DESIGNER',
          style: TextStyle(
            color: Colors.teal[100],
            //fontFamily: 'PlayfairDisplay',
            fontSize: 20,
            fontWeight: FontWeight.normal,
            //letterSpacing: 2.5,
          ),
        ),
        SizedBox(
          height: 20,
          width: 150,
          child: Divider(
            color: Colors.teal.shade100,
          ),
        ),
        Card(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
          child: ListTile(
            leading: Icon(
              Icons.phone,
              color: Colors.teal[900],
            ),
            title: Text('+251967002385',
              style:TextStyle(
                fontFamily: 'PlayfairDisplay',
                fontSize: 20.0,
                color: Colors.teal.shade900,
              ),
            ),
          ),
        ),
        Card(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
          child: ListTile(
            leading: Icon(
              Icons.email,
              color: Colors.teal.shade900,
            ),
            title: Text('surafelteshale18@gmail.com',
              style: TextStyle(
                fontSize: 20,
                color: Colors.teal.shade900,
                fontFamily: 'PlayfairDisplay',
              ),
            ),
          ),
        ),
      ],
    );
  }
}

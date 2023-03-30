import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class aProfile extends StatefulWidget {

  String name,   mailAddress,    pic;

  aProfile(  this.name, this.mailAddress, this.pic , {Key? key}) : super(key: key);

  @override
  State<aProfile> createState() => _aProfileState();
}

class _aProfileState extends State<aProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.amber,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius:  25 ,
                  backgroundColor: Colors.lightBlue,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 4, 4, 4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color:  Colors.black,
                            fontSize: 18
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text( widget.mailAddress,
                        style: TextStyle(

                            color:  Colors.grey,
                            fontSize: 14
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(),
        ],
      )
    );
  }
}

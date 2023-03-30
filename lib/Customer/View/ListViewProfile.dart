import 'package:flutter/cupertino.dart';
import 'package:untitled/Customer/View/aProfile.dart';
import '../Model/Customer.dart';
import '../Model/Customer.dart';



class ListViewProfile extends StatefulWidget {
  const ListViewProfile({Key? key}) : super(key: key);

  @override
  State<ListViewProfile> createState() => _ListViewProfileState();
}

class _ListViewProfileState extends State<ListViewProfile> {

  late List<Customer> lstItem = [];


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    lstItem.add(Customer('Johnson','jonhson@gmail.com','jonhson.jpg'));
    lstItem.add(Customer('Shellby','Shellby@gmail.com','Shellby.jpg'));
    lstItem.add(Customer('Jack','Jack@gmail.com','Jack.jpg'));
    lstItem.add(Customer('Grace','Grace@gmail.com','Grace.jpg'));
    lstItem.add(Customer('Johnson','jonhson@gmail.com','jonhson.jpg'));
    lstItem.add(Customer('Shellby','Shellby@gmail.com','Shellby.jpg'));
    lstItem.add(Customer('Jack','Jack@gmail.com','Jack.jpg'));
    lstItem.add(Customer('Grace','Grace@gmail.com','Grace.jpg'));
    lstItem.add(Customer('Johnson','jonhson@gmail.com','jonhson.jpg'));
    lstItem.add(Customer('Shellby','Shellby@gmail.com','Shellby.jpg'));
    lstItem.add(Customer('Jack','Jack@gmail.com','Jack.jpg'));
    lstItem.add(Customer('Grace','Grace@gmail.com','Grace.jpg'));

  }


 //

  @override
  Widget build(BuildContext context) {
    return
      ListView.builder(
          physics: const AlwaysScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemBuilder:
              (BuildContext context, int index) {
            return
              // InkWell(
              //   onTap: (){
              //     Navigator.of(context).pop( User_All[index] );
              //   },
              //    child:

              //Column(  children: [
                    aProfile (  lstItem[index].Name,  lstItem[index].MailAddress, lstItem[index].Pic  );

              //    ]
            //  );
            //  );

          },
          shrinkWrap: true,

          // scrollDirection: Axis.horizontal,
          itemCount:  lstItem
              .asMap()
              .length


      );


  }
}

import 'package:flutter/material.dart';
import 'package:tokue/components/category_item.dart';
import 'package:tokue/screens/familymemberspage.dart';
import 'package:tokue/screens/numbers_page.dart';
import 'package:tokue/screens/colors_page.dart';
import 'package:tokue/screens/phrases_page.dart';
class HomePage extends StatelessWidget {
const   HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:const Color(0xffFEF6DB),
        appBar: AppBar(title:const Text('Toku'),
        backgroundColor:const Color(0xff46322B),),
        body: Column(children: [
         category(text:'Numbers',color:Color(0xffEF9235),onTap: () {
           Navigator.push(context, MaterialPageRoute(builder: (BuildContext){
            return  NumbersPage();
           }));
         },),
          category(text:'FamilyMembers',color:Color(0xff558B37),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext){
            return FamilyMembersPage();
            }));
          },),
          category(text:'Colors',color:Color(0xff79359F),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext){
              return ColorsPage();
             }));
          },),
           category(text:'Phrase',color:Color(0xff50ADC7),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext){
              return PhrasePage();
            }));
           },),
           
        ]),
      );
  }
}



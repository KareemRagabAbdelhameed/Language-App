import 'package:flutter/material.dart';
import 'package:tokue/components/item.dart';
import 'package:tokue/models/number.dart';
class NumbersPage extends StatelessWidget {
  const NumbersPage({Key? key}) : super(key: key);
 final List<Item> numbersList=const [
  Item(sound: 'sounds/numbers/number_one_sound.mp3',image: 'assets/images/numbers/number_one.png', jpName: 'Ichi', enName: 'One'),
  Item(sound: 'sounds/numbers/number_two_sound.mp3',image: 'assets/images/numbers/number_two.png', jpName: 'Ni', enName: 'Two'),
  Item(sound: 'sounds/numbers/number_three_sound.mp3',image: 'assets/images/numbers/number_three.png', jpName: 'San', enName: 'Three'),
  Item(sound: 'sounds/numbers/number_four_sound.mp3',image: 'assets/images/numbers/number_four.png', jpName: 'Shi ', enName: 'Four'),
  Item(sound: 'sounds/numbers/number_five_sound.mp3',image: 'assets/images/numbers/number_five.png', jpName: 'Go', enName: 'Five'),
  Item(sound: 'sounds/numbers/number_six_sound.mp3',image: 'assets/images/numbers/number_six.png', jpName: 'Roku', enName: 'Six'),
  Item(sound: 'sounds/numbers/number_seven_sound.mp3',image: 'assets/images/numbers/number_seven.png', jpName: 'Shichi', enName: 'Seven'),
  Item(sound: 'sounds/numbers/number_eight_sound.mp3',image: 'assets/images/numbers/number_eight.png', jpName: 'Hachi', enName: 'Eight'),
  Item(sound: 'sounds/numbers/number_nine_sound.mp3',image: 'assets/images/numbers/number_nine.png', jpName: 'Kyuu', enName: 'Nine'),
  Item(sound: 'sounds/numbers/number_ten_sound.mp3',image: 'assets/images/numbers/number_ten.png', jpName: 'Juu', enName: 'Ten'),
  
 ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:const Color(0xff46322B),
        title:const Text('Numbers')),
        body: ListView.builder(
          itemCount: numbersList.length,
        itemBuilder:(context,num)
        {
          return ListItem(number: numbersList[num],color:const Color(0xffEF9235),);
        },
        )
    );
    
  }
  List <Widget> getlist(List<Item>numbers){
  List<ListItem>itemsList=[];
  for(int i=0;i<numbers.length;i++){
    itemsList.add(ListItem(number: numbers[i],color:const Color(0xffEF9235),));
  }
  return itemsList;
}
}





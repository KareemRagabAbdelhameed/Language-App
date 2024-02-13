import 'package:flutter/material.dart';
import 'package:tokue/components/item.dart';
import 'package:tokue/models/number.dart';
class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});
final List<Item> FamilyMembers=const [
  Item(sound: 'sounds/familymembers/father.wav',image: 'assets/images/familymembers/family_father.png', jpName: 'Chichioya', enName: 'Father'),
  Item(sound: 'sounds/familymembers/daughter.wav',image: 'assets/images/familymembers/family_daughter.png', jpName: 'Musume', enName: 'Daughter'),
  Item(sound: 'sounds/familymembers/grand_father.wav',image: 'assets/images/familymembers/family_grandfather.png', jpName: 'Ojisan', enName: 'Grand Father'),
  Item(sound: 'sounds/familymembers/mother.wav',image: 'assets/images/familymembers/family_mother.png', jpName: 'Hahaoya ', enName: 'Mother'),
  Item(sound: 'sounds/familymembers/grand_mother.wav',image: 'assets/images/familymembers/family_grandmother.png', jpName: 'Sabo', enName: 'Grand Mother'),
  Item(sound: 'sounds/familymembers/older_bother.wav',image: 'assets/images/familymembers/family_older_brother.png', jpName: 'Nisan', enName: 'Older Brother'),
  Item(sound: 'sounds/familymembers/older_sister.wav',image: 'assets/images/familymembers/family_older_sister.png', jpName: 'Ane', enName: 'Older Sister'),
  Item(sound: 'sounds/familymembers/son.wav',image: 'assets/images/familymembers/family_son.png', jpName: 'Musuko', enName: 'Son'),
  Item(sound: 'sounds/familymembers/younger_brohter.wav',image: 'assets/images/familymembers/family_younger_brother.png', jpName: 'Ototo', enName: 'Younger Brother'),
  Item(sound: 'sounds/familymembers/younger_sister.wav',image: 'assets/images/familymembers/family_younger_sister.png', jpName: 'Imoto', enName: 'Younger Sister'),


 ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor:const Color(0xff46322B),
        title:const Text('FamilyMembers')),
        body: ListView.builder(
          itemCount: FamilyMembers.length,
        itemBuilder:(context,num)
        {
          return ListItem(number: FamilyMembers[num],color:const Color(0xff558B37),);
        },
        )
    );
  }
}
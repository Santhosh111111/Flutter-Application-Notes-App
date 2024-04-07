// ignore_for_file: sort_child_properties_last



import 'package:flutter/material.dart';

import 'package:notes_main/models/notemodel.dart';
import 'package:notes_main/SCREENS/createnewnote.dart';
import 'package:notes_main/SCREENS/widgets/note_card.dart';

class Homepage extends StatefulWidget {
  const  Homepage({super.key});
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Notes1> _notes = List.empty(growable: true);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      appBar: AppBar(
        centerTitle: true,
        title: Text('Notes'),
        foregroundColor: Colors.white,
        backgroundColor: Colors.grey[900]

      ),
      body: ListView.builder(
        itemCount: _notes.length,
        itemBuilder: (context,index){
         var note2 = _notes[index];
        return NoteCard(note : note2,index: index,onNoteDeleted: onNoteDeleted);
        },
      ),
      floatingActionButton: Container(
        child: FloatingActionButton(
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Newnote(onNewNoteCreated: onNewNoteCreated,)));
          },
          child: Icon(Icons.add,color: Colors.grey[900], ),
          hoverColor: Colors.cyan,
          ),
          height: 40,
          width: 60,
          
      ),
    );
  }
  void onNewNoteCreated(Notes1 note){
    _notes.add(note);
    setState(() {});
  }
  
void onNoteDeleted(int index){
  _notes.removeAt(index);
  setState(() { });
}
}

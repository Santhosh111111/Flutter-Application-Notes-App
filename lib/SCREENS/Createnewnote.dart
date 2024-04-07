import 'package:flutter/material.dart';
import 'package:notes_main/models/notemodel.dart';

class Newnote extends StatefulWidget {
  const Newnote({super.key, required this.onNewNoteCreated});

  final Function(Notes1) onNewNoteCreated;

  @override
  State<Newnote> createState() => _NewnoteState();
}

class _NewnoteState extends State<Newnote> {
  final titleController = TextEditingController();
  final bodyController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      appBar: AppBar(
        centerTitle: true,
        title: Text('Newnote'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          TextFormField(
            controller: titleController,
            style: const TextStyle(
              fontSize: 28,
              fontStyle: FontStyle.normal,
              
            color: Colors.white,
            ),
            autofocus: true,
            maxLines: 1,
            maxLength: 30, 
            decoration: const InputDecoration(
               border: InputBorder.none,
               hintText: 'Title'
               )
            ),
          SizedBox(height: 5,),
          TextFormField(
            controller: bodyController,
            style: const TextStyle(
              fontSize: 15,
              fontStyle: FontStyle.normal,
          ),
          autofocus: true,
            maxLines: 100,
            maxLength: 800, 
          decoration: const InputDecoration(
               border: InputBorder.none,
               hintText: 'Your thoughts'
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          if(titleController.text.isEmpty){
            return;
          }
          if(bodyController.text.isEmpty){
            return;
          }
          final note= Notes1(
            body: bodyController.text,
            title: titleController.text,
             );
             widget.onNewNoteCreated(note);
             Navigator.of(context).pop();
        },
        child: Icon(Icons.save),
        ),
    );
  }
}
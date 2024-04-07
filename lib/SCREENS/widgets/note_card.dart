import 'package:flutter/material.dart';
import 'package:notes_main/models/notemodel.dart';
import 'package:notes_main/SCREENS/noteview.dart';


class NoteCard extends StatelessWidget {

  final Notes1 note;
  final int index;
  final Function(int) onNoteDeleted;
  const NoteCard({super.key, required this.note, required this.index, required this.onNoteDeleted});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
       // ignore: avoid_types_as_parameter_names
       Navigator.of(context).push(MaterialPageRoute(builder: (context) => NoteView(note: note, index: index, onNoteDeleted: onNoteDeleted ) ),);
      },
      child: Card(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      note.title,
                      style:  const TextStyle(
                        fontSize:18,
                      )
                    ),
                    const SizedBox(height:10,),
                    Text(
                      note.body,
                      style:  const TextStyle(
                        fontSize:18,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                ),
                ]
                ) 
                ),
            ),
    );
  }
}
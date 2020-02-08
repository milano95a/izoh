import 'package:flutter/material.dart';

class PageAddNote extends MaterialPageRoute<Null> {
  PageAddNote():super(builder:(BuildContext context){
    return AddNote();
  });
}

class AddNote extends StatefulWidget {
  @override
  AddNoteState createState() => AddNoteState();
}

class AddNoteState extends State<AddNote> {

  Widget _title(){
    return TextField(
      minLines: 1,
      maxLines: 10,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration.collapsed(hintText: "Title"),
//      decoration: InputDecoration(
//          hintText: "Title",
//          border: OutlineInputBorder()
//      ),
    );
  }

  Widget _note(){
    return TextField(
      minLines: 10,
      maxLines: 100,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration.collapsed(hintText: "..."),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Note'),
      ),
      body: ListView(
        padding: EdgeInsets.all(12.0),
        children: <Widget>[
          _title(),
          SizedBox(height: 10),
          _note()
        ],
      ),
    );
  }

}
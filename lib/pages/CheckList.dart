import 'package:flutter/material.dart';
import 'package:share/share.dart';


class Checklist extends StatefulWidget {
  @override
  _ChecklistState createState() => _ChecklistState();
}

class _ChecklistState extends State<Checklist> {
  List savedList=[];
  @override
  Widget build(BuildContext context) {

    var savedList = [];
    savedList = ModalRoute
        .of(context)
        .settings
        .arguments;
    Set<String> set = new Set<String>.from(savedList);
    print(set);
    List<String> saved= new List<String>.from(set);

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Final List'),
        centerTitle: true,
        elevation: 0,
      ),
      body:  ListView.builder(
        //padding: const EdgeInsets.all(8),
          itemCount: saved.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text('${saved[index]}'),
            );
          }

      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            //print("d");
            share(context,saved);
          },
      child: Text('Share'),),

    );
  }

  void share(BuildContext context, List<String> saved) {
    String concatenate=saved.join("\n");
    print(concatenate);
    final RenderBox box=context.findRenderObject();
    Share.share(concatenate,subject:'shopping list',sharePositionOrigin: box.localToGlobal(Offset.zero)& box.size,);
  }
}

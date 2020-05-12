import 'package:flutter/material.dart';

class Share extends StatefulWidget {
  Share({Key key}) : super(key: key);
  @override
  _ShareState createState() => _ShareState();
}

class _ShareState extends State<Share> {
  List data = [];
  List changed=[];

  @override
  Widget build(BuildContext context) {
    data = [];
    data = ModalRoute
        .of(context)
        .settings
        .arguments;
    print(data);

    Map<String,TextEditingController> textEditingControllers = {};
    var textFields = <TextField>[];
    data.forEach((str) {
      var textEditingController = new TextEditingController(text: str);
      textEditingControllers.putIfAbsent(str, ()=>textEditingController);
      return textFields.add( TextField(controller: textEditingController,
        //onChanged: (text){
        //doSomething(text);
        //},
      ));
    });

    return Scaffold(
        appBar: AppBar(
          title: Text('My List'),
        ),
        body: SingleChildScrollView(
            child: Center(
              child: new Column(
                  children:[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10.0,10.0,10.0,10.0),
                      child: Card(
                        child: Text('\nEditing enabled.Insert brand names and quantites,but once you go back the edits you made will be lost!\n',
                          style: TextStyle(
                            fontSize: 20.0,
                            letterSpacing: 2.0,
                            color: Colors.blue,


                          ),
                        ),
                      ),
                    ),
                    Column
                      (mainAxisAlignment:MainAxisAlignment.center,
                        children:  textFields),
                    RaisedButton(
                      child: Text('Save',style: TextStyle(color: Colors.white),),
                        color: Colors.blue,
                        onPressed: (){
                          data.forEach((str) {
                            //print(textEditingControllers[str].text);
                            changed.add(textEditingControllers[str].text);
                          });
                            Navigator.pushNamed(context, '/screenshot',arguments: changed);


                        },

                    ),

                  ]
              ),
            )));
  }


}


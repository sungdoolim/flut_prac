import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Baby Names',
      home: fire(),
    );
  }
}
class fire extends StatefulWidget {
  @override
  _fireState createState() => _fireState();
}

class _fireState extends State<fire> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Baby Name Votes'),actions: [
        RaisedButton(child: Text("insert"),onPressed: (){
        Firestore.instance.collection('baby').add({
          'name': 'test23',
          'age': 12,

        });

      },), RaisedButton(child:Text("delete"),onPressed: (){
        Firestore.instance.collection('baby').document('tCuGb0xemn1k0b603IMQ').delete();
      },),
      RaisedButton(child:Text("update"),onPressed: (){
        Firestore.instance.collection('baby').document('dgkK7PoxkEuQILO1oQdQ').updateData({
          'name': 'updatetest',
          'age': 122,
        });
      },),
      RaisedButton(child:Text("select"),onPressed: (){
        Firestore.instance
            .collection('baby')
            .document('dgkK7PoxkEuQILO1oQdQ')
            .get()
            .then((doc) {
          print(doc.data['name']);print(doc.data['age']);
        });
      },)],),
      body: _buildBody(context),
    );
  }
  Widget _buildBody(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: Firestore.instance.collection('baby').snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) return LinearProgressIndicator();
var docu=snapshot.data.documents;  print("???");

String id;
var d=docu.map((e) {
  id=e.documentID;
  return e;
});

var dd=d.toList();
print(id);
        print(d.length);
        print(dd[0]['name']);

        print(dd[0]['name']);

        return _buildList(context, snapshot.data.documents);
      },
    );
  }

  Widget _buildList(BuildContext context, List<DocumentSnapshot> snapshot) {
    return ListView(
      padding: const EdgeInsets.only(top: 20.0),
      children: snapshot.map((data) => _buildListItem(context, data)).toList(),
    );
  }

  Widget _buildListItem(BuildContext context, DocumentSnapshot data) {
    final record = Record.fromSnapshot(data);

    return Padding(
      key: ValueKey(record.toString()),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: ListTile(
          title: Text(record.name),
          trailing: Text(record.age.toString()),
          onTap: () => print(record),
        ),
      ),
    );
  }
}


class Record {
  final String name;
  final int age;
  final DocumentReference reference;

  Record.fromMap(Map<String, dynamic> map, {this.reference})
      : assert(map['name'] != null),

        name = map['name'],
        age = map['age'];

  Record.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data, reference: snapshot.reference);

  @override
  String toString() => "Record<$name:$age>";
}
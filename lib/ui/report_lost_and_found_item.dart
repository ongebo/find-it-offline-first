import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReportLostAndFoundItemPage extends StatefulWidget {
  @override
  _ReportLostAndFoundItemPageState createState() =>
      _ReportLostAndFoundItemPageState();
}

class _ReportLostAndFoundItemPageState
    extends State<ReportLostAndFoundItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Find It'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: ListView(
          children: [
            SizedBox(
              height: 16.0,
            ),
            Text(
              'Report Lost and Found Item',
              textAlign: TextAlign.center,
              textScaleFactor: 1.8,
            ),
            SizedBox(
              height: 16.0,
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'Enter Item Name', border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 16.0,
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'Enter Item Description',
                  border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 16.0,
            ),
            FlatButton(
                color: Color(0xffc4c4c4),
                onPressed: _onTakePhotoClick,
                child: Padding(
                  padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.camera),
                      SizedBox(
                        width: 8.0,
                      ),
                      Text(
                        'Take a Photo',
                      )
                    ],
                  ),
                )),
            SizedBox(
              height: 16.0,
            ),
            RaisedButton(
              color: Colors.blue,
              onPressed: _onSignUpClick,
              child: Padding(
                padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                child: Text(
                  'SUBMIT REPORT',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onTakePhotoClick() async {
    // TODO: Implement
  }

  void _onSignUpClick() async {
    // TODO: Implement
  }
}

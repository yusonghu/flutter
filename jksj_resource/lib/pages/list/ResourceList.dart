import 'package:flutter/material.dart';
import 'package:tree_view/tree_view.dart';

class ResourceListPage extends StatelessWidget {
  const ResourceListPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('课程列表'),
      ),
      body: MyTree(),
    );
  }
}

class MyTree extends StatefulWidget {
  @override
  _MyTreeState createState() => _MyTreeState();
}

class _MyTreeState extends State<MyTree> {
  var _isMore = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TreeView(
        parentList: [
          Parent(
            parent: ListTile(
              title: Text('desktop'),
              trailing:
                  _isMore ? Icon(Icons.expand_less) : Icon(Icons.expand_more),
            ),
            callback: (item) {
              setState(() {
                this._isMore = item;
              });
            },
            childList: ChildList(
              children: <Widget>[
                Parent(
                  parent: Text('documents'),
                  childList: ChildList(
                    children: <Widget>[
                      Text('Resume.docx'),
                      Text('Billing-Info.docx'),
                    ],
                  ),
                ),
                Text('MeetingReport.xls'),
                Text('MeetingReport.pdf'),
                Text('Demo.zip'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

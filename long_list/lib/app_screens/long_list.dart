import 'package:flutter/material.dart';

class LongList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Long List",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Long List (Tap any item)"),
        ),
        body: getListView(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint("FAB Clicked");
          },
          child: Icon(Icons.add),
          tooltip: 'Pressing this prints in Debug Console',
        ),
      ),
    );
  }
}

void showSnackBar(BuildContext context, String item) {
  var snackBar = SnackBar(
    content: Text("You just tapped $item"),
    duration: Duration(milliseconds: 500),
    action: SnackBarAction(
      label: "UNDO",
      onPressed: () {
        debugPrint("Dummmy Undo Button Performed");
      },
    ),
  );

  Scaffold.of(context).showSnackBar(snackBar);
}

List<String> getListElements() {
  var items = List<String>.generate(100, (counter) => "Item $counter");
  return items;
}

Widget getListView() {
  var listItems = getListElements();

  var listView = ListView.builder(itemBuilder: (context, index) {
    return ListTile(
      leading: Icon(Icons.arrow_right),
      title: Text(listItems[index]),
      onTap: () {
        showSnackBar(context, listItems[index]);
      },
    );
  });

  return listView;
}

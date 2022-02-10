import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String dropdownvalue = 'Item 1';

  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          title: const Text('First Screen of My api',
              style: TextStyle(color: Colors.black)),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                child: Text('test'),
              ),
              ElevatedButton(
                child: Text('test'),
                onPressed: () {},
              ),
              DropdownButton(
                value: dropdownvalue,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: items.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                },
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.settings_outlined)),
              InkWell(
                onTap: () {},
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text('InkWell Button'),
                ),
              ),
              OutlinedButton(
                onPressed: () {
                  debugPrint('кнопа с обводкой');
                },
                child: const Text('Click'),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.yellow,
          child: const Icon(Icons.settings),
        ),
        backgroundColor: Colors.grey[100],
      ),
    );
  }
}

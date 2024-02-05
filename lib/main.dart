import "package:flutter/cupertino.dart";

import "package:flutter/material.dart";

import "package:fluttertoast/fluttertoast.dart";

void main(){
    runApp(const MyApp());
}

class MyApp extends StatelessWidget {
    const MyApp({super.key});

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: "Form",
            
            theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreen),
                
                useMaterial3: true,
            ),

            home: const MyHomePage(title: "Form"),
        );
    }
}

class MyHomePage extends StatefulWidget {
    const MyHomePage({super.key, required this.title});

    final String title;

    @override
    State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    TextEditingController txtFname = TextEditingController();
  
    TextEditingController txtLname = TextEditingController();

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
                title: Text(widget.title),
            ),
      
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    
                    children: <Widget>[
                        Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                
                            child: TextField(
                                controller: txtFname,
                                
                                decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                    
                                    hintText: "Enter your first name here.",
                                ),
                            ),
                        ),
                        
                        Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                        
                            child: TextField(
                                controller: txtLname,
                            
                                decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    
                                    hintText: "Enter your last name here.",
                                ),
                            ),
                        ),
                
                        Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                        
                            child: ElevatedButton(
                                onPressed: (){
                                    Fluttertoast.showToast(
                                        msg: "The name entered was: ${txtFname.text} ${txtLname.text}.",
                                        
                                        toastLength: Toast.LENGTH_SHORT,
                                        
                                        gravity: ToastGravity.CENTER,
                                        
                                        timeInSecForIosWeb: 5,
                                        
                                        backgroundColor: Colors.lightGreen,
                                        
                                        textColor: Colors.white,
                                        
                                        fontSize: 16.0
                                    );
                                },
                                
                                child: const Text("Display result.")
                            ),
                        )
                    ],
                ),
            ),
        );
    }
}


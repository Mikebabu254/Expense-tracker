import 'dart:math';

import 'package:flutter/material.dart';


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  void AddExpense() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("add expense"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(),
              TextField()
            ],
          ),
        )
    );
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        onPressed: AddExpense,
        backgroundColor: Colors.green,
        child: Icon(Icons.add),
        
      ),
    );
  }
}



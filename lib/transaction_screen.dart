import 'package:flutter/material.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({super.key});

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class ToDoListModal {
  String title = "";
  String description = "";
  String date = "";
  int rupee;

  ToDoListModal(
      {required this.title,
      required this.description,
      required this.date,
      required this.rupee});
}

class _TransactionScreenState extends State<TransactionScreen> {
  TextEditingController dateTextEditingController = TextEditingController();
  TextEditingController amountTextEditingController = TextEditingController();
  TextEditingController categoryTextEditingController = TextEditingController();
  TextEditingController descriptionTextEditingController =
      TextEditingController();

  //keys

  GlobalKey<FormFieldState> dateKey = GlobalKey<FormFieldState>();
  GlobalKey<FormFieldState> amountKey = GlobalKey<FormFieldState>();
  GlobalKey<FormFieldState> categoryKey = GlobalKey<FormFieldState>();
  GlobalKey<FormFieldState> descriptionKey = GlobalKey<FormFieldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      
    );
  }
}

import '../models/expense_item.dart';

class ExpenseData{
  //list all expenses
  List<ExpenseItem> overallExpenseList = [];

  //get expense list
  List<ExpenseItem> getAllExpenseList = [];

  //add new expense
  void addNewExpense(ExpenseItem newExpense){
    overallExpenseList.add(newExpense);
  }

  //delete expense
  void deleteExpense(ExpenseItem expense){
    overallExpenseList.remove(expense);
  }

  //get weekdays
  String getDayName(DateTime dateTime){
    switch (dateTime.weekday){
      case 1:
        return 'Mon';
        break;
      case 2:
        return 'Tue';
        break;
      case 3:
        return 'Wed';
        break;
      case 4:
        return 'Thur';
        break;
      case 5:
        return 'Fri';
        break;
      case 6:
        return 'Sat';
        break;
      case 7:
        return 'Sun';
        break;
      default:
        return '';
    }
  }

  //get date for the start of the week
  DateTime startOfWeekDate(){
    DateTime? startOfWeek;

    //get today date
    DateTime today = DateTime.now();

    //go from today to find sunday
    for(int i=0; i<7; i++){
      if(getDayName(today.subtract(Duration(days: i)))== 'sun'){
        startOfWeek = today.subtract(Duration(days: i));
      }
    }
    return startOfWeek!;
  }
}
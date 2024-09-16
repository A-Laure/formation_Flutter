void main() {

  var today = DateTime.now();
  var tomorrow = today.add(Duration(days: 1));
  var yesterday = today.subtract(Duration(days: 1));
  
  print(today);
  print(tomorrow);
  print(yesterday);
  
  print(tomorrow.isAfter(yesterday));
  print(tomorrow.isBefore(yesterday));
  
   
  var diff = tomorrow.difference(yesterday);
  
  print(diff.inDays);
  
    
}
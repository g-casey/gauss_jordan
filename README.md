#Gauss Jordan 
 
A simple package for finding Gaussian-Jordan style elimination of matrices.

Takes in a matrix and returns the Reduced Row Echelon Form. 
This package has no dependencies and only contains one simple method.

##Example 
```dart
 List<List<double>> matrix = [
                               [3.0, 0.0, -1.0, 0.0, 0.0],
                               [8.0, 0.0, 0.0, -2.0, 0.0],
                               [0.0, 2.0, -2.0, -1.0, 0.0]
                               ];
   print(GaussJordan.solve(matrix).toString());
```
prints 
```dart
[[1.0, 0.0, 0.0, -0.25, 0.0], [0.0, 1.0, 0.0, -1.25, 0.0], [0.0, 0.0, 1.0, -0.75, 0.0]]
```

##Full Example
```dart
import "package:gauss_jordan/gauss_jordan.dart";
import 'dart:io';


main(List<String> arguments) {

  print("Enter matrix rows:");
  int rowSize = int.parse(stdin.readLineSync());
  List<List<double>> matrix = List<List<double>>();
  String input = "";
  
  /*Formats input into List<List<double>>
    Example input: 
    2 (matrix rows)
    2.0 0.0 -1.0 0.0
    0.0 2.0 -1.0 0.0
  */ 
  for(int i = 0; i < rowSize; i++){
    String input = stdin.readLineSync();
    List<String> rowString = input.split(" ");
    List<double> rows =  List<double>();
    rowString.forEach((r){
      rows.add(double.parse(r));
    });
    matrix.add(rows);

  }

  List<List<double>> rref = GaussJordan.solve(matrix);
  print(rref.toString());

}
```

##Installation
Add GaussJordan as a dependency to your dart project.

```yaml
dependencies:
  gauss_jordan: 1.0.0
``` 

and at the top of your dart file add:

```dart
import 'package:gauss_jordan/gauss_jordan.dart';
```

I apologize for any spaghetti code
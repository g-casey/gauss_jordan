import "package:gauss_jordan/gauss_jordan.dart";
import 'dart:io';


main(List<String> arguments) {

  print("Enter matrix rows:");
  int rowSize = int.parse(stdin.readLineSync());
  List<List<double>> matrix = List<List<double>>();
  String input = "";

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
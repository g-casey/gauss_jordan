import 'package:gauss_jordan/gauss_jordan.dart';


void main(){
  List<List<double>> matrix = [
                              [3.0, 0.0, -1.0, 0.0, 0.0],
                              [8.0, 0.0, 0.0, -2.0, 0.0],
                              [0.0, 2.0, -2.0, -1.0, 0.0]
                              ];
  print(GaussJordan.solve(matrix).toString());
}
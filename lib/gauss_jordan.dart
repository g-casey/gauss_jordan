class GaussJordan {
  //takes in matrix and returns it in rref form
  static List<List<double>> solve(List<List<double>> matrix) {
    int lead = 0;
    int rowCount = matrix.length;
    int columnCount = matrix[0].length;
    for (int r = 0; r < rowCount; r++) {
      if (lead >= columnCount) {
        break;
      }
      int i = r;
      while (matrix[i][lead] == 0) {
        i++;
        if (i == rowCount) {
          i = r;
          lead++;
          if (columnCount == lead) {
            lead--;
            break;
          }
        }
      }
      List<double> temp = matrix[i];
      matrix[i] = matrix[r];
      matrix[r] = temp;
      double leadVal = matrix[r][lead];
      for (int j = 0; j < columnCount; j++) {
        matrix[r][j] /= leadVal;
      }

      for (int i = 0; i < rowCount; i++) {
        if (i != r) {
          leadVal = matrix[i][lead];
          for (int j = 0; j < columnCount; j++) {
            matrix[i][j] -= leadVal * matrix[r][j];
          }
        }
      }
      leadVal++;
    }
    return matrix;
  }
}

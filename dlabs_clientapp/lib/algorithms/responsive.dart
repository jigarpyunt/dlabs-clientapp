
class Responsive {

  double width = 0.0;
  double height = 0.0;

  static double differenceWidth = 1.0;
  static double differenceHeight = 1.0;

  void setDeviceDimensions({ required double width,  required double height }) {
      this.width = width;
      this.height = height;

      differenceWidth = double.parse((width / 414).toStringAsFixed(2));
      differenceHeight = double.parse((height / 896).toStringAsFixed(2));
      
  }
}


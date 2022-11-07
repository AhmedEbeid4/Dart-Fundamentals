abstract class Rectangle{
  late int _width;
  late int _length;
  Rectangle(this._width,this._length);
  int getArea(){
    return _width * _length;
  }
  int getWidth(){
    return _width;
  }
}
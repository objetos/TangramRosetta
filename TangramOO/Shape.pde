// Implementar:
// 1. El estilo del shape (i.e., stroke weight, color, etc)
// como se hace con los demás atributos de la clase.
// 2. La seleccion de la pieza mediante el ratón, empleando
// uno de los siguientes prototipos:
// abstract boolean contains(float x, float y);
// boolean contains(float x, float y) {}

abstract class Shape {
  float _rotation;
  float _scaling;
  PVector _position;
  color _hue;

  Shape() {
    this(new PVector(random(0, width), random(0, height)),
         random(0, TWO_PI),
         random(0.5, 1.5),
         color(random(0, 255), random(0, 255), random(0, 255)));
  }

  Shape(PVector position, float rotation, float scaling, color hue) {
    setPosition(position);
    setRotation(rotation);
    setScaling(scaling);
    setHue(hue);
  }

  void draw() {
    push();
    fill(hue());
    translate(position().x, position().y);
    rotate(rotation());
    scale(scaling(), scaling());
    contour();
    pop();
  }

  abstract void contour();

  float scaling() {
    return _scaling;
  }

  void setScaling(float scaling) {
    _scaling = scaling;
  }

  float rotation() {
    return _rotation;
  }

  void setRotation(float rotation) {
    _rotation = rotation;
  }

  PVector position() {
    return _position;
  }

  void setPosition(PVector position) {
    _position = position;
  }

  color hue() {
    return _hue;
  }

  void setHue(color hue) {
    _hue = hue;
  }
}
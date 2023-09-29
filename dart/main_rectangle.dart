import 'rectangle.dart';
import 'carre.dart';

void main(List<String> args) {
  Rectangle r = new Rectangle(1,2); 
  Rectangle r2 = new Rectangle.byName(largeur:1,longueur:2); 
  Rectangle r3 = new Rectangle.fromString("5x8"); 
  Carre c = new Carre(2);
  print(r.longueur); // 1
  print(r.surface); // 2
  print(r2.longueur); // 1
  print(r2.surface); // 2
  print(r3.longueur); // 1
  print(r3.surface); // 2
  print(c.surface); // 2
  print(r);

}




void call_f(Function f){
  f();
}




// void main(List<String> args) {
//   call_f(()=>print("do_the_job ok"));
// }



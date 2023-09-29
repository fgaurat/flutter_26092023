import 'icalc_geo.dart';

class Rectangle implements ICalcGeo {
  int _longueur = 0;
  int _largeur = 0;
  
  Rectangle(this._longueur,this._largeur);
  Rectangle.byName({longueur=0,largeur=0}){
    this._longueur = longueur;
    this._largeur = largeur;
  }
  Rectangle.fromString(String init){
    List<String> l =  init.split("x");
    this._longueur = int.parse(l[0]);
    this._largeur = int.parse(l[1]);
    
  }
  
  get longueur => this._longueur;

  set longueur(value) => this._longueur = value;

  get largeur => this._largeur;

  set largeur(value) => this._largeur = value;

  @override
  int surface() => this._largeur*this._longueur;

  @override
  String toString() {
    return "Rectangle $_longueur,$_largeur";
  }
}

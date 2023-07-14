namespace golf;
using {managed} from '@sap/cds/common';

entity Rounds : managed {
  key ID : String(3);
  title  : String(111);
   holes : Composition of many Holes on holes.round = $self;
}

entity Holes {
  key ID : String(3);
      no : Int32;
   score : Int32;
   round : Association to Rounds;
   shots : Composition of many Shots on shots.hole = $self; 
}

entity Shots {
    key ID : String(3);
 noOfShots : Int32;
      hole : Association to Holes;
}
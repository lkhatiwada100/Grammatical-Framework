--# -path=.:../nabstract:../../prelude

concrete TestResourceSwe of TestResource = StructuralSwe ** open SyntaxSwe in {

flags startcat=Phr ; lexer=text ; unlexer=text ;

-- a random sample from the lexicon

lin
  Big = stor_25 ;
  Small = liten_1146 ;
  Old = gammal_16 ;
  Young = ung_29 ;
  American = extAdjective (aFin "amerikansk") ;
  Finnish = extAdjective (aFin "finsk") ;
  Married = extAdjective (aAbstrakt "gift") ** {s2 = "med"} ;
  Man = extCommNoun Masc man_1144 ;
  Woman = extCommNoun NoMasc (sApa "kvinn") ;
  Car = extCommNoun NoMasc (sBil "bil") ;
  House = extCommNoun NoMasc (sHus "hus") ;
  Light = extCommNoun NoMasc (sHus "ljus") ;
  Walk = extVerb Act g�_1174 ;
  Run = extVerb Act (vFinna "spring" "sprang" "sprung") ;
  Love = extTransVerb (vTala "�lsk") [] ;
  Send = extTransVerb (vTala "skick") [] ;
  Wait = extTransVerb (vTala "v�nt") "p�" ;
  Give = extTransVerb (vFinna "giv" "gav" "giv") [] ** {s3 = "till"} ; --- ge
  Prefer = extTransVerb (vFinna "f�redrag" "f�redrog" "f�redrag") [] ** 
           {s3 = "framf�r"} ; --- f�redra

  Say = extVerb Act (vLeka "s�g") ; --- works in present tense...
  Prove = extVerb Act (vTala "bevis") ;
  SwitchOn = extTransVerb (vV�nda "t�n") [] ;
  SwitchOff = extTransVerb (vLeka "sl�ck") [] ;

  Mother = mkFun (extCommNoun NoMasc mor_1) "till" ;
  Uncle = mkFun (extCommNoun Masc farbror_8) "till" ;
  Connection = mkFun (extCommNoun NoMasc (sVarelse "f�rbindelse")) "fr�n" ** 
               {s3 = "till"} ;

  Always = advPre "alltid" ;
  Well = advPost "bra" ;

  John = mkProperName "Johan" Utr Masc ;
  Mary = mkProperName "Maria" Utr NoMasc ;
} ;

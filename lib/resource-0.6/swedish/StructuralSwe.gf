--# -path=.:../abstract:../../prelude

--1 The Top-Level Swedish Resource Grammar: Structural Words
--
-- Aarne Ranta 2002 -- 2003
--
concrete StructuralSwe of Structural = 
                      CombinationsSwe ** open Prelude, SyntaxSwe in {
 lin

  INP    = pronNounPhrase jag_32 ;
  ThouNP = pronNounPhrase du_33 ;
  HeNP   = pronNounPhrase han_34 ;
  SheNP  = pronNounPhrase hon_35 ;
  WeNP n = pronNounPhrase (pronWithNum vi_36 n) ;
  YeNP n = pronNounPhrase (pronWithNum ni_37 n) ;
  TheyNP = pronNounPhrase de_38 ;

  YouNP  = let {ni = pronNounPhrase ni_37 } in {s = ni.s ; g = ni.g ; n = Sg} ;

  ItNP   = pronNounPhrase det_40 ; ----
  ThisNP = regNameNounPhrase ["det h�r"] Neutr NoMasc ; 
  ThatNP = regNameNounPhrase ["det d�r"] Neutr NoMasc ; 
  TheseNP n = {s = \\c => ["det h�r"] ++ n.s ! npCase c ; g = Neutr ; n = Pl} ;
  ThoseNP n = {s = \\c => ["det d�r"] ++ n.s ! npCase c ; g = Neutr ; n = Pl} ;

  EveryDet = varjeDet ; 
  AllDet   = mkDeterminerSgGender2 "all" "allt" IndefP ; 
  AllsDet  = mkDeterminerPlNum "alla" IndefP ; 
  AnyDet   = mkDeterminerSgGender2 "n�gon" "n�got" IndefP ; 
  AnysDet  = mkDeterminerPlNum "n�gra" IndefP ; 
  SomeDet  = mkDeterminerSgGender2 "n�gon" "n�got" IndefP ; 
  SomesDet = mkDeterminerPlNum "n�gra" IndefP ; 
  ManyDet  = mkDeterminerPl "m�nga" IndefP ; 
  NoDet    = mkDeterminerSgGender2 "ingen" "inget" IndefP ; 
  NosDet   = mkDeterminerPlNum "inga" IndefP ; 
  WhichsDet = mkDeterminerPlNum "vilka" IndefP ; 

  WhichDet = vilkenDet ;
  MostDet  = mkDeterminerSgGender2 ["den mesta"] ["det mesta"] (DefP Def) ;
  MostsDet = flestaDet ;
  MuchDet  = mkDeterminerSg (detSgInvar "mycket") IndefP ;

  ThisDet  = mkDeterminerSgGender2 ["den h�r"] ["det h�r"] (DefP Def) ;
  ThatDet  = mkDeterminerSgGender2 ["den d�r"] ["det d�r"] (DefP Def) ;
  TheseDet = mkDeterminerPlNum ["de h�r"] (DefP Def) ; 
  ThoseDet = mkDeterminerPlNum ["de d�r"] (DefP Def) ; 

  HowIAdv = ss "hur" ;
  WhenIAdv = ss "n�r" ;
  WhereIAdv = ss "var" ;
  WhyIAdv = ss "varf�r" ;

  AndConj  = ss "och" ** {n = Pl}  ;
  OrConj   = ss "eller" ** {n = Sg} ;
  BothAnd  = sd2 "b�de" "och" ** {n = Pl}  ;
  EitherOr = sd2 "antingen" "eller" ** {n = Sg} ;
  NeitherNor = sd2 "varken" "eller" ** {n = Sg} ;
  IfSubj   = ss "om" ;
  WhenSubj = ss "n�r" ;

  PhrYes = ss ["Ja ."] ;
  PhrNo = ss ["Nej ."] ;

  VeryAdv = ss "mycket" ;
  TooAdv = ss "f�r" ;
  OtherwiseAdv = ss "annars" ;
  ThereforeAdv = ss "d�rf�r" ;

  EverybodyNP  = nameNounPhrase (mkProperName "alleman" Utr Masc) ;
  SomebodyNP   = nameNounPhrase (mkProperName "n�gon" Utr Masc) ;
  NobodyNP     = nameNounPhrase (mkProperName "ingen" Utr Masc) ;
  EverythingNP = nameNounPhrase (mkProperName "allting" Neutr NoMasc) ; 
  SomethingNP  = nameNounPhrase (mkProperName "n�gonting" Neutr NoMasc) ; 
  NothingNP    = nameNounPhrase (mkProperName "ingenting" Neutr NoMasc) ; 

  CanVV     = mkVerb "kunna" "kan" "kunn"  ** {isAux = True} ; ---
  CanKnowVV = mkVerb "kunna" "kan" "kunn"  ** {isAux = True} ; ---
  MustVV    = mkVerb "f�"    "m�ste" "f�"  ** {isAux = True} ; ---
  WantVV    = mkVerb "vilja" "vill" "vilj" ** {isAux = True} ; ---

  EverywhereNP = advPost "varstans" ;
  SomewhereNP = advPost "n�gonstans" ;
  NowhereNP = advPost "ingenstans" ;

  AlthoughSubj = ss "fast" ;

  AlmostAdv = ss "n�stan" ;
  QuiteAdv = ss "ganska" ;

  InPrep = ss "i" ;
  OnPrep = ss "p�" ;
  ToPrep = ss "till" ;
  ThroughPrep = ss "genom" ;
  AbovePrep = ss "ovanf�r" ;
  UnderPrep = ss "under" ;
  InFrontPrep = ss "framf�r" ;
  BehindPrep = ss "bakom" ;
  BetweenPrep = ss "mellan" ;
  FromPrep = ss "fr�n" ;
  BeforePrep = ss "f�re" ;
  DuringPrep = ss "under" ;
  AfterPrep = ss "efter" ;
  WithPrep = ss "med" ;
  WithoutPrep = ss "utan" ;
  ByMeansPrep = ss "med" ;
  PartPrep = ss "av" ;
  AgentPrep = ss "av" ;

}

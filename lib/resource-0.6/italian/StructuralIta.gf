--# -path=.:../romance:../abstract:../../prelude

concrete StructuralIta of Structural = CombinationsIta ** 
  open SyntaxIta, MorphoIta, Prelude in {

lin
  INP    = pronNounPhrase pronJe ;
  ThouNP = pronNounPhrase pronTu ;
  HeNP   = pronNounPhrase pronIl ;
  SheNP  = pronNounPhrase pronElle ;
  WeNP n = pronNounPhrase (pronWithNum pronNous n) ;
  YeNP n = pronNounPhrase (pronWithNum pronVous n) ;
  YouNP  = pronNounPhrase pronVous ;
  TheyNP = pronNounPhrase pronIls ; 

-- Here is a point where the API is really inadequate for French,
-- which distinguishes between masculine and feminine "they".
-- The following solution is not attractive.

---  TheyNP = pronNounPhrase (variants {pronIls ; pronElles}) ;

  ThisNP = mkNameNounPhrase ["questo"] Masc ;
  ThatNP = mkNameNounPhrase ["quello"] Masc ;
  TheseNP n = mkNameNounPhrase ("questi" ++ n.s ! Masc) Masc ;
  ThoseNP n = mkNameNounPhrase ("quelli" ++ n.s ! Masc) Masc ;

  ItNP   = pronNounPhrase pronIl ;

  EveryDet = chaqueDet ; 
  AllDet   = mkDeterminer singular "tutto" "tutta" ;
  AllsDet  = mkDeterminerNum plural ["tutti i"] ["tutte le"] ; --- gli
  WhichDet = quelDet ;
  WhichsDet = mkDeterminerNum plural "quali" "quali" ;
  MostsDet = plupartDet ;
  MostDet  = mkDeterminer1 singular (["la maggior parte"] ++ elisDe) ; --- de
  SomeDet  = mkDeterminer1 singular "qualche" ;
  SomesDet = mkDeterminerNum plural "alcuni" "alcune" ;
  NoDet    = mkDeterminer singular "nessuno" "nessuna" ; --- non
  NosDet   = mkDeterminerNum plural "nessuni" "nessune" ; ---- ??
  AnyDet   = mkDeterminer1 singular "qualche" ; ---
  AnysDet  = mkDeterminerNum plural "alcuni" "alcune" ; ---
  ManyDet  = mkDeterminer plural "molti" "molte" ;
  MuchDet  = mkDeterminer1 singular "molto" ;
  ThisDet  = mkDeterminer singular "questo" "questa" ;
  ThatDet  = mkDeterminer singular "quello" "quella" ;
  TheseDet = mkDeterminerNum plural "questi" "queste" ; --- ci
  ThoseDet = mkDeterminerNum plural "quelli" "quelle" ; --- quegli

  HowIAdv = commentAdv ;
  WhenIAdv = quandAdv ;
  WhereIAdv = ouAdv ;
  WhyIAdv = pourquoiAdv ;

  AndConj = etConj ;
  OrConj = ouConj  ;
  BothAnd = etetConj ;
  EitherOr = ououConj  ;
  NeitherNor = niniConj  ; --- requires ne !
  IfSubj = siSubj ;
  WhenSubj = quandSubj ;

  PhrYes = ouiPhr ;  
  PhrNo = nonPhr ; --- and also Si!

  VeryAdv = ss "molto" ;
  TooAdv = ss "troppo" ;
  OtherwiseAdv = ss "altramente" ;
  ThereforeAdv = ss "quindi" ;

  EverybodyNP  = mkNameNounPhrase ["tutti"] Masc ;
  SomebodyNP   = mkNameNounPhrase ["qualcuno"] Masc ;
  NobodyNP     = mkNameNounPhrase ["nessuno"] Masc ;  --- ne
  EverythingNP = mkNameNounPhrase ["tutto"] Masc ;
  SomethingNP  = mkNameNounPhrase ["qualche cosa"] Masc ;
  NothingNP    = mkNameNounPhrase ["niente"] Masc ; --- ne

  CanVV     = mkVerbVerbDir (mkVerbPres 
    "poss" "pu�" "poss" "potete" "possono" "possa" "puoi" "potere" "potuto") ;
  CanKnowVV = mkVerbVerbDir (mkVerbPres 
    "s" "sa" "sapp" "sapete" "sanno" "sappia" "sai" "sapere" "saputo") ;
  MustVV    = mkVerbVerbDir (mkVerbPres 
    "dev" "deve" "dobb" "dovete" "devono" "debba" "devi" "dovere" "dovuto") ;
  WantVV    = mkVerbVerbDir (mkVerbPres 
    "vogli" "vuole" "vogl" "volete" "vogliono" "voglia" "vuoi" "volere" "voluto") ;

  EverywhereNP = ss "dappertutto" ;
  SomewhereNP = ss ["qualche parte"] ; --- ne - pas
  NowhereNP = ss ["nessun parte"] ;

  AlthoughSubj = ss "bench�" ** {m = Con} ;

  AlmostAdv = ss "quasi" ;
  QuiteAdv = ss "assai" ;

  InPrep = justCase (CPrep P_in) ;
  OnPrep = justCase (CPrep P_su) ;
  ToPrep = justCase dative ; ---
  ThroughPrep = justPrep "per" ;
  AbovePrep = justPrep "sopra" ;
  UnderPrep = justPrep "sotto" ;
  InFrontPrep = justPrep "davanti" ;
  BehindPrep = justPrep "dietro" ;
  BetweenPrep = justPrep "tra" ;
  FromPrep = justCase (CPrep P_da) ;
  BeforePrep = justPrep "prima" ;
  DuringPrep = justPrep "durante" ;
  AfterPrep = justPrep "dopo" ;
  WithPrep = justCase (CPrep P_con) ;
  WithoutPrep = justPrep "senza" ;
  ByMeansPrep = justPrep "per" ;
  PartPrep = justCase genitive ; ---
  AgentPrep = justCase (CPrep P_da) ;

}

{-# OPTIONS -fglasgow-exts -cpp #-}
-- parser produced by Happy Version 1.13

module ParGF where
import AbsGF
import LexGF
import Ident --H
import ErrM
import Array
#if __GLASGOW_HASKELL__ >= 503
import GHC.Exts
#else
import GlaExts
#endif

newtype HappyAbsSyn t7 t8 t9 t10 = HappyAbsSyn (() -> ())
happyIn7 :: t7 -> (HappyAbsSyn t7 t8 t9 t10)
happyIn7 x = unsafeCoerce# x
{-# INLINE happyIn7 #-}
happyOut7 :: (HappyAbsSyn t7 t8 t9 t10) -> t7
happyOut7 x = unsafeCoerce# x
{-# INLINE happyOut7 #-}
happyIn8 :: t8 -> (HappyAbsSyn t7 t8 t9 t10)
happyIn8 x = unsafeCoerce# x
{-# INLINE happyIn8 #-}
happyOut8 :: (HappyAbsSyn t7 t8 t9 t10) -> t8
happyOut8 x = unsafeCoerce# x
{-# INLINE happyOut8 #-}
happyIn9 :: t9 -> (HappyAbsSyn t7 t8 t9 t10)
happyIn9 x = unsafeCoerce# x
{-# INLINE happyIn9 #-}
happyOut9 :: (HappyAbsSyn t7 t8 t9 t10) -> t9
happyOut9 x = unsafeCoerce# x
{-# INLINE happyOut9 #-}
happyIn10 :: t10 -> (HappyAbsSyn t7 t8 t9 t10)
happyIn10 x = unsafeCoerce# x
{-# INLINE happyIn10 #-}
happyOut10 :: (HappyAbsSyn t7 t8 t9 t10) -> t10
happyOut10 x = unsafeCoerce# x
{-# INLINE happyOut10 #-}
happyIn11 :: (Grammar) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn11 x = unsafeCoerce# x
{-# INLINE happyIn11 #-}
happyOut11 :: (HappyAbsSyn t7 t8 t9 t10) -> (Grammar)
happyOut11 x = unsafeCoerce# x
{-# INLINE happyOut11 #-}
happyIn12 :: ([ModDef]) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn12 x = unsafeCoerce# x
{-# INLINE happyIn12 #-}
happyOut12 :: (HappyAbsSyn t7 t8 t9 t10) -> ([ModDef])
happyOut12 x = unsafeCoerce# x
{-# INLINE happyOut12 #-}
happyIn13 :: (ModDef) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn13 x = unsafeCoerce# x
{-# INLINE happyIn13 #-}
happyOut13 :: (HappyAbsSyn t7 t8 t9 t10) -> (ModDef)
happyOut13 x = unsafeCoerce# x
{-# INLINE happyOut13 #-}
happyIn14 :: (ConcSpec) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn14 x = unsafeCoerce# x
{-# INLINE happyIn14 #-}
happyOut14 :: (HappyAbsSyn t7 t8 t9 t10) -> (ConcSpec)
happyOut14 x = unsafeCoerce# x
{-# INLINE happyOut14 #-}
happyIn15 :: ([ConcSpec]) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn15 x = unsafeCoerce# x
{-# INLINE happyIn15 #-}
happyOut15 :: (HappyAbsSyn t7 t8 t9 t10) -> ([ConcSpec])
happyOut15 x = unsafeCoerce# x
{-# INLINE happyOut15 #-}
happyIn16 :: (ConcExp) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn16 x = unsafeCoerce# x
{-# INLINE happyIn16 #-}
happyOut16 :: (HappyAbsSyn t7 t8 t9 t10) -> (ConcExp)
happyOut16 x = unsafeCoerce# x
{-# INLINE happyOut16 #-}
happyIn17 :: ([Transfer]) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn17 x = unsafeCoerce# x
{-# INLINE happyIn17 #-}
happyOut17 :: (HappyAbsSyn t7 t8 t9 t10) -> ([Transfer])
happyOut17 x = unsafeCoerce# x
{-# INLINE happyOut17 #-}
happyIn18 :: (Transfer) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn18 x = unsafeCoerce# x
{-# INLINE happyIn18 #-}
happyOut18 :: (HappyAbsSyn t7 t8 t9 t10) -> (Transfer)
happyOut18 x = unsafeCoerce# x
{-# INLINE happyOut18 #-}
happyIn19 :: (ModType) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn19 x = unsafeCoerce# x
{-# INLINE happyIn19 #-}
happyOut19 :: (HappyAbsSyn t7 t8 t9 t10) -> (ModType)
happyOut19 x = unsafeCoerce# x
{-# INLINE happyOut19 #-}
happyIn20 :: (ModBody) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn20 x = unsafeCoerce# x
{-# INLINE happyIn20 #-}
happyOut20 :: (HappyAbsSyn t7 t8 t9 t10) -> (ModBody)
happyOut20 x = unsafeCoerce# x
{-# INLINE happyOut20 #-}
happyIn21 :: ([TopDef]) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn21 x = unsafeCoerce# x
{-# INLINE happyIn21 #-}
happyOut21 :: (HappyAbsSyn t7 t8 t9 t10) -> ([TopDef])
happyOut21 x = unsafeCoerce# x
{-# INLINE happyOut21 #-}
happyIn22 :: (Extend) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn22 x = unsafeCoerce# x
{-# INLINE happyIn22 #-}
happyOut22 :: (HappyAbsSyn t7 t8 t9 t10) -> (Extend)
happyOut22 x = unsafeCoerce# x
{-# INLINE happyOut22 #-}
happyIn23 :: ([Open]) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn23 x = unsafeCoerce# x
{-# INLINE happyIn23 #-}
happyOut23 :: (HappyAbsSyn t7 t8 t9 t10) -> ([Open])
happyOut23 x = unsafeCoerce# x
{-# INLINE happyOut23 #-}
happyIn24 :: (Opens) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn24 x = unsafeCoerce# x
{-# INLINE happyIn24 #-}
happyOut24 :: (HappyAbsSyn t7 t8 t9 t10) -> (Opens)
happyOut24 x = unsafeCoerce# x
{-# INLINE happyOut24 #-}
happyIn25 :: (Open) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn25 x = unsafeCoerce# x
{-# INLINE happyIn25 #-}
happyOut25 :: (HappyAbsSyn t7 t8 t9 t10) -> (Open)
happyOut25 x = unsafeCoerce# x
{-# INLINE happyOut25 #-}
happyIn26 :: (ComplMod) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn26 x = unsafeCoerce# x
{-# INLINE happyIn26 #-}
happyOut26 :: (HappyAbsSyn t7 t8 t9 t10) -> (ComplMod)
happyOut26 x = unsafeCoerce# x
{-# INLINE happyOut26 #-}
happyIn27 :: (QualOpen) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn27 x = unsafeCoerce# x
{-# INLINE happyIn27 #-}
happyOut27 :: (HappyAbsSyn t7 t8 t9 t10) -> (QualOpen)
happyOut27 x = unsafeCoerce# x
{-# INLINE happyOut27 #-}
happyIn28 :: (Def) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn28 x = unsafeCoerce# x
{-# INLINE happyIn28 #-}
happyOut28 :: (HappyAbsSyn t7 t8 t9 t10) -> (Def)
happyOut28 x = unsafeCoerce# x
{-# INLINE happyOut28 #-}
happyIn29 :: (TopDef) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn29 x = unsafeCoerce# x
{-# INLINE happyIn29 #-}
happyOut29 :: (HappyAbsSyn t7 t8 t9 t10) -> (TopDef)
happyOut29 x = unsafeCoerce# x
{-# INLINE happyOut29 #-}
happyIn30 :: (CatDef) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn30 x = unsafeCoerce# x
{-# INLINE happyIn30 #-}
happyOut30 :: (HappyAbsSyn t7 t8 t9 t10) -> (CatDef)
happyOut30 x = unsafeCoerce# x
{-# INLINE happyOut30 #-}
happyIn31 :: (FunDef) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn31 x = unsafeCoerce# x
{-# INLINE happyIn31 #-}
happyOut31 :: (HappyAbsSyn t7 t8 t9 t10) -> (FunDef)
happyOut31 x = unsafeCoerce# x
{-# INLINE happyOut31 #-}
happyIn32 :: (DataDef) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn32 x = unsafeCoerce# x
{-# INLINE happyIn32 #-}
happyOut32 :: (HappyAbsSyn t7 t8 t9 t10) -> (DataDef)
happyOut32 x = unsafeCoerce# x
{-# INLINE happyOut32 #-}
happyIn33 :: (DataConstr) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn33 x = unsafeCoerce# x
{-# INLINE happyIn33 #-}
happyOut33 :: (HappyAbsSyn t7 t8 t9 t10) -> (DataConstr)
happyOut33 x = unsafeCoerce# x
{-# INLINE happyOut33 #-}
happyIn34 :: ([DataConstr]) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn34 x = unsafeCoerce# x
{-# INLINE happyIn34 #-}
happyOut34 :: (HappyAbsSyn t7 t8 t9 t10) -> ([DataConstr])
happyOut34 x = unsafeCoerce# x
{-# INLINE happyOut34 #-}
happyIn35 :: (ParDef) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn35 x = unsafeCoerce# x
{-# INLINE happyIn35 #-}
happyOut35 :: (HappyAbsSyn t7 t8 t9 t10) -> (ParDef)
happyOut35 x = unsafeCoerce# x
{-# INLINE happyOut35 #-}
happyIn36 :: (ParConstr) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn36 x = unsafeCoerce# x
{-# INLINE happyIn36 #-}
happyOut36 :: (HappyAbsSyn t7 t8 t9 t10) -> (ParConstr)
happyOut36 x = unsafeCoerce# x
{-# INLINE happyOut36 #-}
happyIn37 :: (PrintDef) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn37 x = unsafeCoerce# x
{-# INLINE happyIn37 #-}
happyOut37 :: (HappyAbsSyn t7 t8 t9 t10) -> (PrintDef)
happyOut37 x = unsafeCoerce# x
{-# INLINE happyOut37 #-}
happyIn38 :: (FlagDef) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn38 x = unsafeCoerce# x
{-# INLINE happyIn38 #-}
happyOut38 :: (HappyAbsSyn t7 t8 t9 t10) -> (FlagDef)
happyOut38 x = unsafeCoerce# x
{-# INLINE happyOut38 #-}
happyIn39 :: ([Def]) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn39 x = unsafeCoerce# x
{-# INLINE happyIn39 #-}
happyOut39 :: (HappyAbsSyn t7 t8 t9 t10) -> ([Def])
happyOut39 x = unsafeCoerce# x
{-# INLINE happyOut39 #-}
happyIn40 :: ([CatDef]) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn40 x = unsafeCoerce# x
{-# INLINE happyIn40 #-}
happyOut40 :: (HappyAbsSyn t7 t8 t9 t10) -> ([CatDef])
happyOut40 x = unsafeCoerce# x
{-# INLINE happyOut40 #-}
happyIn41 :: ([FunDef]) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn41 x = unsafeCoerce# x
{-# INLINE happyIn41 #-}
happyOut41 :: (HappyAbsSyn t7 t8 t9 t10) -> ([FunDef])
happyOut41 x = unsafeCoerce# x
{-# INLINE happyOut41 #-}
happyIn42 :: ([DataDef]) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn42 x = unsafeCoerce# x
{-# INLINE happyIn42 #-}
happyOut42 :: (HappyAbsSyn t7 t8 t9 t10) -> ([DataDef])
happyOut42 x = unsafeCoerce# x
{-# INLINE happyOut42 #-}
happyIn43 :: ([ParDef]) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn43 x = unsafeCoerce# x
{-# INLINE happyIn43 #-}
happyOut43 :: (HappyAbsSyn t7 t8 t9 t10) -> ([ParDef])
happyOut43 x = unsafeCoerce# x
{-# INLINE happyOut43 #-}
happyIn44 :: ([PrintDef]) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn44 x = unsafeCoerce# x
{-# INLINE happyIn44 #-}
happyOut44 :: (HappyAbsSyn t7 t8 t9 t10) -> ([PrintDef])
happyOut44 x = unsafeCoerce# x
{-# INLINE happyOut44 #-}
happyIn45 :: ([FlagDef]) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn45 x = unsafeCoerce# x
{-# INLINE happyIn45 #-}
happyOut45 :: (HappyAbsSyn t7 t8 t9 t10) -> ([FlagDef])
happyOut45 x = unsafeCoerce# x
{-# INLINE happyOut45 #-}
happyIn46 :: ([ParConstr]) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn46 x = unsafeCoerce# x
{-# INLINE happyIn46 #-}
happyOut46 :: (HappyAbsSyn t7 t8 t9 t10) -> ([ParConstr])
happyOut46 x = unsafeCoerce# x
{-# INLINE happyOut46 #-}
happyIn47 :: ([Ident]) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn47 x = unsafeCoerce# x
{-# INLINE happyIn47 #-}
happyOut47 :: (HappyAbsSyn t7 t8 t9 t10) -> ([Ident])
happyOut47 x = unsafeCoerce# x
{-# INLINE happyOut47 #-}
happyIn48 :: (LocDef) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn48 x = unsafeCoerce# x
{-# INLINE happyIn48 #-}
happyOut48 :: (HappyAbsSyn t7 t8 t9 t10) -> (LocDef)
happyOut48 x = unsafeCoerce# x
{-# INLINE happyOut48 #-}
happyIn49 :: ([LocDef]) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn49 x = unsafeCoerce# x
{-# INLINE happyIn49 #-}
happyOut49 :: (HappyAbsSyn t7 t8 t9 t10) -> ([LocDef])
happyOut49 x = unsafeCoerce# x
{-# INLINE happyOut49 #-}
happyIn50 :: (Exp) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn50 x = unsafeCoerce# x
{-# INLINE happyIn50 #-}
happyOut50 :: (HappyAbsSyn t7 t8 t9 t10) -> (Exp)
happyOut50 x = unsafeCoerce# x
{-# INLINE happyOut50 #-}
happyIn51 :: (Exp) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn51 x = unsafeCoerce# x
{-# INLINE happyIn51 #-}
happyOut51 :: (HappyAbsSyn t7 t8 t9 t10) -> (Exp)
happyOut51 x = unsafeCoerce# x
{-# INLINE happyOut51 #-}
happyIn52 :: (Exp) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn52 x = unsafeCoerce# x
{-# INLINE happyIn52 #-}
happyOut52 :: (HappyAbsSyn t7 t8 t9 t10) -> (Exp)
happyOut52 x = unsafeCoerce# x
{-# INLINE happyOut52 #-}
happyIn53 :: (Exp) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn53 x = unsafeCoerce# x
{-# INLINE happyIn53 #-}
happyOut53 :: (HappyAbsSyn t7 t8 t9 t10) -> (Exp)
happyOut53 x = unsafeCoerce# x
{-# INLINE happyOut53 #-}
happyIn54 :: (Exp) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn54 x = unsafeCoerce# x
{-# INLINE happyIn54 #-}
happyOut54 :: (HappyAbsSyn t7 t8 t9 t10) -> (Exp)
happyOut54 x = unsafeCoerce# x
{-# INLINE happyOut54 #-}
happyIn55 :: ([Exp]) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn55 x = unsafeCoerce# x
{-# INLINE happyIn55 #-}
happyOut55 :: (HappyAbsSyn t7 t8 t9 t10) -> ([Exp])
happyOut55 x = unsafeCoerce# x
{-# INLINE happyOut55 #-}
happyIn56 :: (Patt) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn56 x = unsafeCoerce# x
{-# INLINE happyIn56 #-}
happyOut56 :: (HappyAbsSyn t7 t8 t9 t10) -> (Patt)
happyOut56 x = unsafeCoerce# x
{-# INLINE happyOut56 #-}
happyIn57 :: (Patt) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn57 x = unsafeCoerce# x
{-# INLINE happyIn57 #-}
happyOut57 :: (HappyAbsSyn t7 t8 t9 t10) -> (Patt)
happyOut57 x = unsafeCoerce# x
{-# INLINE happyOut57 #-}
happyIn58 :: (PattAss) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn58 x = unsafeCoerce# x
{-# INLINE happyIn58 #-}
happyOut58 :: (HappyAbsSyn t7 t8 t9 t10) -> (PattAss)
happyOut58 x = unsafeCoerce# x
{-# INLINE happyOut58 #-}
happyIn59 :: (Label) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn59 x = unsafeCoerce# x
{-# INLINE happyIn59 #-}
happyOut59 :: (HappyAbsSyn t7 t8 t9 t10) -> (Label)
happyOut59 x = unsafeCoerce# x
{-# INLINE happyOut59 #-}
happyIn60 :: (Sort) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn60 x = unsafeCoerce# x
{-# INLINE happyIn60 #-}
happyOut60 :: (HappyAbsSyn t7 t8 t9 t10) -> (Sort)
happyOut60 x = unsafeCoerce# x
{-# INLINE happyOut60 #-}
happyIn61 :: ([PattAss]) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn61 x = unsafeCoerce# x
{-# INLINE happyIn61 #-}
happyOut61 :: (HappyAbsSyn t7 t8 t9 t10) -> ([PattAss])
happyOut61 x = unsafeCoerce# x
{-# INLINE happyOut61 #-}
happyIn62 :: (PattAlt) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn62 x = unsafeCoerce# x
{-# INLINE happyIn62 #-}
happyOut62 :: (HappyAbsSyn t7 t8 t9 t10) -> (PattAlt)
happyOut62 x = unsafeCoerce# x
{-# INLINE happyOut62 #-}
happyIn63 :: ([Patt]) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn63 x = unsafeCoerce# x
{-# INLINE happyIn63 #-}
happyOut63 :: (HappyAbsSyn t7 t8 t9 t10) -> ([Patt])
happyOut63 x = unsafeCoerce# x
{-# INLINE happyOut63 #-}
happyIn64 :: ([PattAlt]) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn64 x = unsafeCoerce# x
{-# INLINE happyIn64 #-}
happyOut64 :: (HappyAbsSyn t7 t8 t9 t10) -> ([PattAlt])
happyOut64 x = unsafeCoerce# x
{-# INLINE happyOut64 #-}
happyIn65 :: (Bind) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn65 x = unsafeCoerce# x
{-# INLINE happyIn65 #-}
happyOut65 :: (HappyAbsSyn t7 t8 t9 t10) -> (Bind)
happyOut65 x = unsafeCoerce# x
{-# INLINE happyOut65 #-}
happyIn66 :: ([Bind]) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn66 x = unsafeCoerce# x
{-# INLINE happyIn66 #-}
happyOut66 :: (HappyAbsSyn t7 t8 t9 t10) -> ([Bind])
happyOut66 x = unsafeCoerce# x
{-# INLINE happyOut66 #-}
happyIn67 :: (Decl) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn67 x = unsafeCoerce# x
{-# INLINE happyIn67 #-}
happyOut67 :: (HappyAbsSyn t7 t8 t9 t10) -> (Decl)
happyOut67 x = unsafeCoerce# x
{-# INLINE happyOut67 #-}
happyIn68 :: (TupleComp) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn68 x = unsafeCoerce# x
{-# INLINE happyIn68 #-}
happyOut68 :: (HappyAbsSyn t7 t8 t9 t10) -> (TupleComp)
happyOut68 x = unsafeCoerce# x
{-# INLINE happyOut68 #-}
happyIn69 :: (PattTupleComp) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn69 x = unsafeCoerce# x
{-# INLINE happyIn69 #-}
happyOut69 :: (HappyAbsSyn t7 t8 t9 t10) -> (PattTupleComp)
happyOut69 x = unsafeCoerce# x
{-# INLINE happyOut69 #-}
happyIn70 :: ([TupleComp]) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn70 x = unsafeCoerce# x
{-# INLINE happyIn70 #-}
happyOut70 :: (HappyAbsSyn t7 t8 t9 t10) -> ([TupleComp])
happyOut70 x = unsafeCoerce# x
{-# INLINE happyOut70 #-}
happyIn71 :: ([PattTupleComp]) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn71 x = unsafeCoerce# x
{-# INLINE happyIn71 #-}
happyOut71 :: (HappyAbsSyn t7 t8 t9 t10) -> ([PattTupleComp])
happyOut71 x = unsafeCoerce# x
{-# INLINE happyOut71 #-}
happyIn72 :: (Case) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn72 x = unsafeCoerce# x
{-# INLINE happyIn72 #-}
happyOut72 :: (HappyAbsSyn t7 t8 t9 t10) -> (Case)
happyOut72 x = unsafeCoerce# x
{-# INLINE happyOut72 #-}
happyIn73 :: ([Case]) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn73 x = unsafeCoerce# x
{-# INLINE happyIn73 #-}
happyOut73 :: (HappyAbsSyn t7 t8 t9 t10) -> ([Case])
happyOut73 x = unsafeCoerce# x
{-# INLINE happyOut73 #-}
happyIn74 :: (Equation) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn74 x = unsafeCoerce# x
{-# INLINE happyIn74 #-}
happyOut74 :: (HappyAbsSyn t7 t8 t9 t10) -> (Equation)
happyOut74 x = unsafeCoerce# x
{-# INLINE happyOut74 #-}
happyIn75 :: ([Equation]) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn75 x = unsafeCoerce# x
{-# INLINE happyIn75 #-}
happyOut75 :: (HappyAbsSyn t7 t8 t9 t10) -> ([Equation])
happyOut75 x = unsafeCoerce# x
{-# INLINE happyOut75 #-}
happyIn76 :: (Altern) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn76 x = unsafeCoerce# x
{-# INLINE happyIn76 #-}
happyOut76 :: (HappyAbsSyn t7 t8 t9 t10) -> (Altern)
happyOut76 x = unsafeCoerce# x
{-# INLINE happyOut76 #-}
happyIn77 :: ([Altern]) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn77 x = unsafeCoerce# x
{-# INLINE happyIn77 #-}
happyOut77 :: (HappyAbsSyn t7 t8 t9 t10) -> ([Altern])
happyOut77 x = unsafeCoerce# x
{-# INLINE happyOut77 #-}
happyIn78 :: (DDecl) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn78 x = unsafeCoerce# x
{-# INLINE happyIn78 #-}
happyOut78 :: (HappyAbsSyn t7 t8 t9 t10) -> (DDecl)
happyOut78 x = unsafeCoerce# x
{-# INLINE happyOut78 #-}
happyIn79 :: ([DDecl]) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn79 x = unsafeCoerce# x
{-# INLINE happyIn79 #-}
happyOut79 :: (HappyAbsSyn t7 t8 t9 t10) -> ([DDecl])
happyOut79 x = unsafeCoerce# x
{-# INLINE happyOut79 #-}
happyIn80 :: (OldGrammar) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn80 x = unsafeCoerce# x
{-# INLINE happyIn80 #-}
happyOut80 :: (HappyAbsSyn t7 t8 t9 t10) -> (OldGrammar)
happyOut80 x = unsafeCoerce# x
{-# INLINE happyOut80 #-}
happyIn81 :: (Include) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn81 x = unsafeCoerce# x
{-# INLINE happyIn81 #-}
happyOut81 :: (HappyAbsSyn t7 t8 t9 t10) -> (Include)
happyOut81 x = unsafeCoerce# x
{-# INLINE happyOut81 #-}
happyIn82 :: (FileName) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn82 x = unsafeCoerce# x
{-# INLINE happyIn82 #-}
happyOut82 :: (HappyAbsSyn t7 t8 t9 t10) -> (FileName)
happyOut82 x = unsafeCoerce# x
{-# INLINE happyOut82 #-}
happyIn83 :: ([FileName]) -> (HappyAbsSyn t7 t8 t9 t10)
happyIn83 x = unsafeCoerce# x
{-# INLINE happyIn83 #-}
happyOut83 :: (HappyAbsSyn t7 t8 t9 t10) -> ([FileName])
happyOut83 x = unsafeCoerce# x
{-# INLINE happyOut83 #-}
happyInTok :: Token -> (HappyAbsSyn t7 t8 t9 t10)
happyInTok x = unsafeCoerce# x
{-# INLINE happyInTok #-}
happyOutTok :: (HappyAbsSyn t7 t8 t9 t10) -> Token
happyOutTok x = unsafeCoerce# x
{-# INLINE happyOutTok #-}

happyActOffsets :: HappyAddr
happyActOffsets = HappyA# "\x00\x00\xb1\x01\xa1\x04\x84\x00\x8a\x04\x00\x00\xc0\x04\x00\x00\x00\x00\x00\x00\x00\x00\xc8\x04\xd0\x00\xa3\x01\x84\x04\x00\x00\xc6\x04\x86\x04\x18\x00\x6b\x00\x00\x00\x84\x00\xfd\xff\x86\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x84\x00\xc9\x04\x10\x00\xc7\x04\xc5\x04\x06\x01\xc4\x04\x00\x00\x00\x00\x00\x00\x79\x04\x00\x00\x68\x00\x0c\x00\x6b\x04\x82\x04\x00\x00\x76\x04\x6c\x01\xbf\x04\xbd\x04\xb8\x04\x72\x04\x72\x04\x72\x04\x72\x04\x72\x04\x72\x04\x00\x00\x68\x00\x00\x00\xb6\x04\x00\x00\x68\x00\x68\x00\x68\x00\x88\x04\x84\x00\x00\x00\xb5\x04\x3c\x01\x4e\x00\x6b\x00\x84\x00\x84\x00\xac\x04\x99\x00\xb4\x04\x85\x04\x6d\x04\x3c\x01\x71\x04\x00\x00\x00\x00\xa2\x04\x9f\x04\xff\xff\x00\x00\x9e\x04\x98\x04\x93\x04\x15\x01\x92\x04\x00\x00\xbe\x01\x99\x04\x8e\x04\x56\x04\x47\x01\x96\x04\x84\x00\x9a\x00\x9a\x00\x9a\x00\x84\x00\x84\x00\x84\x00\x91\x04\x80\x04\x65\x00\xfd\x00\x00\x00\x52\x04\x00\x00\x00\x00\x0c\x04\x29\x04\x00\x00\x00\x00\x00\x00\xe6\x00\xe6\x00\xe6\x00\x00\x00\x00\x00\x00\x00\x29\x04\x29\x04\x51\x04\x84\x00\x00\x00\x00\x00\x22\x04\x00\x00\x00\x00\x84\x00\x84\x00\x42\x04\x84\x00\xff\xff\x4d\x04\x46\x04\x00\x00\x00\x00\x3c\x01\x45\x04\x32\x04\x30\x04\xe6\x03\x3c\x01\x3c\x01\x00\x00\x28\x04\x84\x00\xda\x03\x84\x00\x84\x00\x15\x04\x14\x04\x10\x04\x04\x04\x5f\x01\x00\x00\x00\x00\x05\x04\xfd\x03\x0e\x04\x00\x04\x3c\x01\xfc\x03\x00\x00\xbc\x03\xbc\x03\xbc\x03\xbc\x03\xbc\x03\xbc\x03\xbc\x03\xbc\x03\xbc\x03\xbc\x03\xbc\x03\xbc\x03\xf4\xff\xbc\x03\x00\x00\x00\x00\x00\x00\x68\x00\x00\x00\xfb\x03\x00\x00\x00\x00\xca\x03\xc8\x03\x00\x00\xd5\xff\xfa\x03\xce\x03\x2b\x00\x00\x00\xb3\x03\xa3\x03\xa3\x03\xa3\x03\x2e\x00\x00\x00\x77\x01\xe8\x03\x00\x00\x29\x00\xd3\x03\x00\x00\xdf\x03\x7a\x03\x7a\x03\x00\x00\xdd\x03\xd2\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xcf\x03\x00\x00\xcb\x03\xcd\x03\xcc\x03\x00\x00\x00\x00\xc0\x03\xbf\x03\x00\x00\x00\x00\xbe\x03\x00\x00\x00\x00\x69\x01\xba\x03\x00\x00\x3c\x01\x84\x00\x3c\x01\x00\x00\x76\x03\x00\x00\x84\x00\x84\x00\xb9\x03\x00\x00\x00\x00\x00\x00\x82\x03\x00\x00\x9f\x03\x97\x03\xa1\x03\x79\x02\x9d\x03\x9c\x03\x8e\x03\x00\x00\x3c\x01\x84\x00\x00\x00\x4a\x03\x3c\x01\x00\x00\x00\x00\x84\x00\x7f\x03\x00\x00\x00\x00\x7d\x03\x79\x03\x00\x00\x8b\x03\x00\x00\x8a\x03\x00\x00\xf8\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x7c\x03\x00\x00\x00\x00\x00\x00\x00\x00\x37\x03\x3c\x01\x00\x00\x00\x00\x00\x00\x3c\x01\x84\x00\x84\x00\x62\x03\x7b\x03\x77\x03\x00\x00\x3c\x01\x00\x00\x00\x00\x00\x00\x00\x00\x32\x03\x1f\x00\x32\x03\x32\x03\x32\x03\x32\x03\x84\x00\x32\x03\x32\x03\x2d\x00\x00\x00\x00\x00\x84\x00\x32\x03\x84\x00\x84\x00\x32\x03\x5b\x03\x00\x00\x53\x03\xe3\x00\x00\x00\x00\x00\x00\x00\x4b\x03\x1e\x00\x00\x00\x1e\x00\x4e\x03\x08\x03\x00\x00\x43\x03\x11\x03\x00\x00\x04\x03\x00\x00\x00\x00\x1e\x00\x84\x00\x00\x00\x3b\x03\x00\x00\x00\x00\x00\x00\x00\x00\x2b\x03\x00\x00\xfe\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x10\x03\x0d\x03\x00\x00\x00\x00\x00\x00\x00\x00\x18\x00\x00\x00\x00\x00\x00\x00\x84\x00\x84\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x07\x03\xc6\x02\xc6\x02\xc6\x02\xc6\x02\x1f\x00\x84\x00\x00\x00\x00\x00\xf9\x00\xc5\x01\x00\x00\x1e\x00\x06\x03\xc2\x02\x00\x00\x00\x00\xc2\x02\x00\x00\x00\x00\x00\x00\xf6\x02\x00\x00\x00\x00\x84\x00\xef\x02\x00\x00\xe3\x02\xe1\x02\xd6\x02\xd5\x02\x00\x00\x84\x02\x84\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xc0\x02\x00\x00\x76\x02\xba\x00\x1e\x00\x1e\x00\xad\x02\x9b\x02\x00\x00\x00\x00\x00\x00"#

happyGotoOffsets :: HappyAddr
happyGotoOffsets = HappyA# "\x64\x02\xaf\x00\xdf\x01\x2f\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xb5\x02\x00\x00\x00\x00\x00\x00\x00\x00\xfb\x02\x2b\x02\x24\x02\x00\x00\x04\x02\x4b\x00\x9e\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x1d\x04\x00\x00\xe2\x02\x00\x00\x00\x00\x39\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x87\x02\x03\x00\x00\x00\x83\x02\x72\x02\x00\x00\x00\x00\x64\x00\x00\x00\x00\x00\x00\x00\x6a\x02\x5f\x02\x4d\x02\x42\x02\x3f\x02\x3d\x02\x00\x00\x0b\x00\x00\x00\x00\x00\x00\x00\x09\x00\x07\x00\x05\x00\xe9\x01\x6d\x02\x00\x00\x00\x00\x8b\x01\x0b\x04\x15\x02\x5b\x02\xf9\x03\x00\x00\x00\x00\x00\x00\x00\x00\x9f\x02\x8c\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x47\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xf1\x01\x00\x00\x00\x00\xed\x03\x61\x02\x4f\x02\x09\x02\xdb\x03\xc9\x03\xb7\x03\x00\x00\x00\x00\x0f\x00\xf7\x02\x00\x00\x49\x01\x00\x00\x00\x00\xfb\x01\x01\x01\x00\x00\x00\x00\x00\x00\xb5\x02\xb5\x02\xb5\x02\x00\x00\x00\x00\x00\x00\x76\x00\xdc\x01\x00\x00\xab\x03\x00\x00\x00\x00\xd8\x01\x00\x00\x00\x00\xe3\x01\x99\x03\x00\x00\x87\x03\x0e\x00\x00\x00\x00\x00\x00\x00\x00\x00\x44\x04\x00\x00\x00\x00\x00\x00\xeb\x01\xf5\x01\xa9\x01\x00\x00\x00\x00\x75\x03\xd4\x00\x69\x03\x57\x03\x00\x00\x00\x00\x00\x00\x00\x00\x41\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xa0\x01\x00\x00\x00\x00\xd1\x03\x8d\x03\x83\x04\xc7\x00\x6a\x04\x81\x04\x62\x04\x7e\x04\x6f\x04\x68\x04\x49\x03\x65\x04\x61\x04\x4e\x04\x00\x00\x00\x00\x00\x00\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x11\x00\x00\x00\x00\x00\x00\x00\x00\x00\xba\x01\xc1\x01\xae\x01\x8e\x01\xd6\x00\x00\x00\x3b\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x53\x04\x4f\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x37\x01\x00\x00\x00\x00\x00\x00\xf2\x01\x00\x00\x00\x00\x9d\x01\x45\x03\x3a\x02\x00\x00\x7d\x01\x00\x00\x49\x02\x31\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x7c\x00\x33\x03\x00\x00\x56\x01\x58\x01\x00\x00\x00\x00\x27\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x48\x01\x36\x01\x00\x00\x00\x00\x00\x00\x95\x01\x15\x03\x03\x03\x00\x00\x00\x00\x00\x00\x00\x00\x92\x01\x00\x00\x00\x00\x00\x00\x00\x00\x40\x01\xf7\x00\x42\x01\x4c\x03\xab\x00\x35\x01\xf1\x02\x3e\x04\x80\x01\x88\x01\x00\x00\x00\x00\xe5\x02\xef\x01\xd3\x02\xc1\x02\x3f\x04\x00\x00\x00\x00\x00\x00\x0d\x01\x00\x00\x00\x00\x00\x00\x00\x00\xba\x02\x00\x00\xda\x00\x00\x00\x03\x01\x00\x00\x00\x00\x00\x00\xd7\x00\xd2\x00\x00\x00\x00\x00\xb1\x00\xaf\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x91\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x19\x02\x00\x00\x00\x00\x00\x00\x0e\x01\xa3\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x1d\x02\xc9\x00\x7a\x00\x86\x01\xf7\x00\x91\x02\x00\x00\x00\x00\x00\x00\x72\x00\x00\x00\x8a\x00\x00\x00\x23\x04\x00\x00\x00\x00\x1a\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x7f\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xa0\x02\x21\x00\x00\x00\x00\x00\x06\x00\x00\x00\x00\x00\x59\x00\x00\x00\x00\x00\x00\x00\x17\x00\x14\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

happyDefActions :: HappyAddr
happyDefActions = HappyA# "\xf6\xff\xd3\xff\x29\xff\x00\x00\x00\x00\xfb\xff\x93\xff\x8f\xff\x8e\xff\x85\xff\x81\xff\x78\xff\x73\xff\x68\xff\x00\x00\x90\xff\x00\x00\x96\xff\x46\xff\x00\x00\x8d\xff\x3f\xff\x46\xff\x00\x00\x54\xff\x52\xff\x51\xff\x53\xff\x55\xff\x00\x00\x00\x00\x96\xff\x00\x00\x00\x00\x00\x00\x00\x00\xfa\xff\xf9\xff\xf8\xff\x00\x00\xdf\xff\x00\x00\x00\x00\x00\x00\x00\x00\xd2\xff\x00\x00\xd3\xff\xf5\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xf4\xff\x26\xff\x27\xff\x00\x00\x28\xff\x00\x00\x00\x00\x00\x00\x2a\xff\x67\xff\x93\xff\x00\x00\x96\xff\x00\x00\x00\x00\x67\xff\x00\x00\x9b\xff\x00\x00\x95\xff\x00\x00\x96\xff\x35\xff\x00\x00\x77\xff\x48\xff\x45\xff\x00\x00\x46\xff\x47\xff\x41\xff\x3e\xff\x00\x00\x00\x00\x00\x00\x8c\xff\x93\xff\x00\x00\x00\x00\x00\x00\x9b\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x80\xff\x00\x00\x00\x00\x79\xff\x96\xff\x57\xff\x84\xff\x00\x00\x96\xff\x6d\xff\x6e\xff\x6f\xff\x75\xff\x76\xff\x74\xff\x70\xff\x8a\xff\x92\xff\x00\x00\x00\x00\x00\x00\x00\x00\x86\xff\x8b\xff\x00\x00\x91\xff\x89\xff\x3f\xff\x00\x00\x00\x00\x00\x00\x46\xff\x00\x00\x63\xff\x5f\xff\x60\xff\x4c\xff\x00\x00\x34\xff\x00\x00\x50\xff\x00\x00\x3c\xff\x64\xff\x00\x00\x00\x00\x96\xff\x00\x00\x00\x00\x00\x00\x66\xff\x00\x00\x00\x00\x9b\xff\x59\xff\x4d\xff\x4a\xff\x00\x00\x38\xff\x00\x00\x00\x00\x00\x00\xde\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x23\xff\x25\xff\x24\xff\x21\xff\x22\xff\x00\x00\xe7\xff\xe6\xff\x00\x00\x00\x00\xe8\xff\xdc\xff\x00\x00\x00\x00\x00\x00\xf2\xff\xd8\xff\x00\x00\x00\x00\x00\x00\x00\x00\x20\xff\x9b\xff\x00\x00\xc6\xff\x00\x00\x00\x00\xbd\xff\x00\x00\x00\x00\x00\x00\xbb\xff\xb0\xff\x00\x00\xc5\xff\xc4\xff\xbc\xff\xc2\xff\xc3\xff\xc1\xff\x00\x00\xc9\xff\x00\x00\x00\x00\x00\x00\xbe\xff\xc8\xff\x00\x00\x00\x00\xc7\xff\x2c\xff\x00\x00\xca\xff\x7c\xff\x63\xff\x00\x00\x7f\xff\x00\x00\x00\x00\x00\x00\x5b\xff\x00\x00\x7a\xff\x67\xff\x31\xff\x99\xff\x98\xff\x94\xff\x6b\xff\x00\x00\x40\xff\x3b\xff\x00\x00\x00\x00\x9b\xff\x00\x00\x4f\xff\x00\x00\x69\xff\x35\xff\x00\x00\x4b\xff\x00\x00\x00\x00\x44\xff\x72\xff\x00\x00\x00\x00\x41\xff\x3d\xff\x00\x00\x00\x00\x88\xff\x00\x00\x9a\xff\x00\x00\x56\xff\x9b\xff\x6a\xff\x83\xff\x43\xff\x82\xff\x87\xff\x71\xff\x00\x00\x61\xff\x36\xff\x33\xff\x5e\xff\x50\xff\x00\x00\x62\xff\x5c\xff\x5d\xff\x3c\xff\x00\x00\x00\x00\x00\x00\x30\xff\x00\x00\x65\xff\x61\xff\x49\xff\x39\xff\x37\xff\x7e\xff\xaa\xff\xba\xff\xa6\xff\xb5\xff\xa0\xff\x00\x00\x00\x00\xa8\xff\xa4\xff\x9e\xff\xbf\xff\xc0\xff\x00\x00\xa2\xff\x00\x00\x00\x00\xac\xff\x00\x00\xd6\xff\x00\x00\xd1\xff\xe4\xff\xe5\xff\xe0\xff\x00\x00\xdb\xff\xdd\xff\xdb\xff\x00\x00\x00\x00\xe1\xff\xda\xff\x00\x00\xdf\xff\x00\x00\xd0\xff\xcf\xff\x00\x00\x00\x00\xab\xff\xce\xff\xcd\xff\xa1\xff\xae\xff\x2c\xff\x9d\xff\xb2\xff\x00\x00\xa3\xff\xa7\xff\xb9\xff\xad\xff\x9f\xff\xb7\xff\xb4\xff\xb8\xff\xa5\xff\x2d\xff\x2b\xff\x46\xff\xa9\xff\x5a\xff\x7b\xff\x31\xff\x00\x00\x97\xff\x6c\xff\x3a\xff\x58\xff\x4e\xff\x7d\xff\x32\xff\x2f\xff\x00\x00\xb5\xff\x00\x00\x00\x00\x9e\xff\xaf\xff\x00\x00\xcc\xff\xe3\xff\x00\x00\x00\x00\xd7\xff\xdb\xff\x00\x00\xf0\xff\xd9\xff\xe2\xff\x00\x00\xd5\xff\xcb\xff\x9c\xff\x00\x00\xb6\xff\xb3\xff\x00\x00\x00\x00\xb1\xff\x00\x00\x00\x00\xef\xff\x00\x00\xf3\xff\xf0\xff\x00\x00\xd4\xff\x2e\xff\xec\xff\xf1\xff\xee\xff\xed\xff\xeb\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xea\xff\xe9\xff"#

happyCheck :: HappyAddr
happyCheck = HappyA# "\xff\xff\x00\x00\x01\x00\x00\x00\x01\x00\x00\x00\x01\x00\x00\x00\x01\x00\x00\x00\x01\x00\x00\x00\x01\x00\x01\x00\x00\x00\x00\x00\x0a\x00\x00\x00\x15\x00\x03\x00\x00\x00\x40\x00\x19\x00\x00\x00\x19\x00\x25\x00\x00\x00\x03\x00\x47\x00\x05\x00\x0d\x00\x2b\x00\x0f\x00\x00\x00\x03\x00\x05\x00\x05\x00\x0d\x00\x12\x00\x0f\x00\x10\x00\x12\x00\x09\x00\x02\x00\x0d\x00\x15\x00\x0f\x00\x10\x00\x07\x00\x19\x00\x05\x00\x05\x00\x09\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x22\x00\x47\x00\x24\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x22\x00\x2a\x00\x34\x00\x47\x00\x2d\x00\x47\x00\x00\x00\x3a\x00\x3b\x00\x32\x00\x00\x00\x4b\x00\x4c\x00\x4b\x00\x4c\x00\x4b\x00\x03\x00\x4b\x00\x05\x00\x4b\x00\x3d\x00\x4b\x00\x47\x00\x4c\x00\x41\x00\x42\x00\x0d\x00\x44\x00\x0f\x00\x10\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x15\x00\x0b\x00\x47\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x06\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x22\x00\x46\x00\x24\x00\x0b\x00\x47\x00\x47\x00\x00\x00\x13\x00\x2a\x00\x0e\x00\x00\x00\x2d\x00\x00\x00\x01\x00\x02\x00\x1a\x00\x32\x00\x3a\x00\x3b\x00\x1b\x00\x1c\x00\x3a\x00\x3b\x00\x03\x00\x16\x00\x05\x00\x00\x00\x3d\x00\x00\x00\x01\x00\x02\x00\x41\x00\x42\x00\x0d\x00\x44\x00\x0f\x00\x10\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x15\x00\x10\x00\x02\x00\x12\x00\x03\x00\x28\x00\x05\x00\x07\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x22\x00\x0d\x00\x24\x00\x0f\x00\x10\x00\x00\x00\x47\x00\x31\x00\x2a\x00\x47\x00\x48\x00\x00\x00\x47\x00\x48\x00\x38\x00\x06\x00\x32\x00\x1d\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x22\x00\x31\x00\x24\x00\x43\x00\x44\x00\x3d\x00\x13\x00\x12\x00\x38\x00\x41\x00\x42\x00\x00\x00\x44\x00\x00\x00\x1f\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x43\x00\x44\x00\x26\x00\x00\x00\x03\x00\x00\x00\x05\x00\x00\x00\x3d\x00\x08\x00\x48\x00\x00\x00\x41\x00\x42\x00\x0d\x00\x44\x00\x0f\x00\x10\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x0e\x00\x1f\x00\x2d\x00\x12\x00\x03\x00\x10\x00\x05\x00\x12\x00\x26\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x22\x00\x0d\x00\x3a\x00\x0f\x00\x10\x00\x00\x00\x01\x00\x02\x00\x03\x00\x02\x00\x28\x00\x29\x00\x2a\x00\x06\x00\x03\x00\x00\x00\x05\x00\x00\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x22\x00\x03\x00\x0d\x00\x05\x00\x0f\x00\x10\x00\x00\x00\x01\x00\x02\x00\x03\x00\x2f\x00\x0d\x00\x31\x00\x0f\x00\x10\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x22\x00\x0b\x00\x14\x00\x2b\x00\x0e\x00\x1e\x00\x1f\x00\x20\x00\x21\x00\x22\x00\x28\x00\x29\x00\x2a\x00\x35\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x00\x00\x01\x00\x02\x00\x03\x00\x00\x00\x00\x00\x01\x00\x02\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x47\x00\x03\x00\x00\x00\x05\x00\x00\x00\x35\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x00\x00\x00\x00\x3c\x00\x04\x00\x10\x00\x47\x00\x48\x00\x49\x00\x4a\x00\x0a\x00\x0b\x00\x45\x00\x46\x00\x19\x00\x00\x00\x17\x00\x00\x00\x01\x00\x02\x00\x19\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x21\x00\x03\x00\x04\x00\x05\x00\x23\x00\x35\x00\x31\x00\x32\x00\x0a\x00\x0b\x00\x0c\x00\x03\x00\x3c\x00\x05\x00\x10\x00\x28\x00\x28\x00\x29\x00\x2a\x00\x0b\x00\x16\x00\x45\x00\x46\x00\x19\x00\x10\x00\x03\x00\x33\x00\x05\x00\x00\x00\x36\x00\x48\x00\x00\x00\x0a\x00\x19\x00\x47\x00\x48\x00\x49\x00\x00\x00\x10\x00\x00\x00\x31\x00\x32\x00\x00\x00\x01\x00\x02\x00\x00\x00\x37\x00\x19\x00\x39\x00\x00\x00\x01\x00\x02\x00\x00\x00\x01\x00\x02\x00\x2c\x00\x41\x00\x42\x00\x2f\x00\x1c\x00\x00\x00\x01\x00\x02\x00\x00\x00\x01\x00\x02\x00\x1d\x00\x24\x00\x1d\x00\x47\x00\x48\x00\x49\x00\x00\x00\x01\x00\x02\x00\x09\x00\x27\x00\x00\x00\x27\x00\x47\x00\x48\x00\x49\x00\x28\x00\x29\x00\x2a\x00\x13\x00\x14\x00\x4c\x00\x16\x00\x17\x00\x18\x00\x31\x00\x32\x00\x47\x00\x48\x00\x49\x00\x00\x00\x37\x00\x31\x00\x39\x00\x07\x00\x31\x00\x32\x00\x0a\x00\x04\x00\x38\x00\x11\x00\x41\x00\x42\x00\x31\x00\x32\x00\x12\x00\x31\x00\x32\x00\x3e\x00\x37\x00\x40\x00\x39\x00\x37\x00\x00\x00\x39\x00\x31\x00\x32\x00\x00\x00\x2c\x00\x41\x00\x42\x00\x2f\x00\x41\x00\x42\x00\x00\x00\x01\x00\x02\x00\x03\x00\x3e\x00\x45\x00\x40\x00\x25\x00\x00\x00\x27\x00\x28\x00\x29\x00\x00\x00\x2b\x00\x00\x00\x00\x00\x01\x00\x02\x00\x00\x00\x01\x00\x02\x00\x33\x00\x34\x00\x35\x00\x36\x00\x04\x00\x02\x00\x39\x00\x16\x00\x3b\x00\x3c\x00\x0a\x00\x3e\x00\x00\x00\x01\x00\x02\x00\x03\x00\x43\x00\x00\x00\x01\x00\x02\x00\x03\x00\x1e\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x28\x00\x25\x00\x00\x00\x01\x00\x28\x00\x35\x00\x00\x00\x01\x00\x02\x00\x03\x00\x00\x00\x33\x00\x3c\x00\x3d\x00\x36\x00\x3f\x00\x31\x00\x00\x00\x01\x00\x31\x00\x32\x00\x49\x00\x4a\x00\x38\x00\x00\x00\x01\x00\x02\x00\x03\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x2b\x00\x2c\x00\x2d\x00\x1a\x00\x1b\x00\x35\x00\x00\x00\x01\x00\x02\x00\x00\x00\x35\x00\x00\x00\x3c\x00\x3d\x00\x00\x00\x3f\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x00\x00\x01\x00\x02\x00\x03\x00\x00\x00\x35\x00\x00\x00\x01\x00\x02\x00\x03\x00\x3a\x00\x3b\x00\x3c\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x00\x00\x01\x00\x02\x00\x03\x00\x00\x00\x35\x00\x00\x00\x01\x00\x02\x00\x03\x00\x3a\x00\x3b\x00\x3c\x00\x04\x00\x05\x00\x00\x00\x31\x00\x32\x00\x00\x00\x01\x00\x02\x00\x03\x00\x37\x00\x00\x00\x39\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x2b\x00\x2c\x00\x2d\x00\x04\x00\x35\x00\x00\x00\x01\x00\x02\x00\x03\x00\x0a\x00\x35\x00\x3c\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x2b\x00\x2c\x00\x2d\x00\x0c\x00\x35\x00\x00\x00\x01\x00\x02\x00\x03\x00\x0e\x00\x35\x00\x3c\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x30\x00\x00\x00\x00\x00\x00\x00\x06\x00\x35\x00\x00\x00\x01\x00\x02\x00\x03\x00\x07\x00\x08\x00\x3c\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x00\x00\x01\x00\x02\x00\x03\x00\x06\x00\x35\x00\x00\x00\x01\x00\x02\x00\x03\x00\x43\x00\x00\x00\x3c\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x00\x00\x01\x00\x02\x00\x03\x00\x05\x00\x35\x00\x28\x00\x29\x00\x2a\x00\x10\x00\x47\x00\x12\x00\x3c\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x00\x00\x01\x00\x02\x00\x03\x00\x01\x00\x35\x00\x04\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x3c\x00\x2b\x00\x2c\x00\x00\x00\x02\x00\x35\x00\x00\x00\x01\x00\x02\x00\x03\x00\x06\x00\x35\x00\x3c\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x00\x00\x01\x00\x02\x00\x03\x00\x06\x00\x35\x00\x00\x00\x01\x00\x02\x00\x03\x00\x00\x00\x06\x00\x3c\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x00\x00\x01\x00\x02\x00\x03\x00\x01\x00\x35\x00\x47\x00\x28\x00\x29\x00\x2a\x00\x47\x00\x07\x00\x3c\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x00\x00\x01\x00\x02\x00\x03\x00\x0c\x00\x35\x00\x0b\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x3c\x00\x2b\x00\x28\x00\x29\x00\x2a\x00\x35\x00\x00\x00\x01\x00\x02\x00\x03\x00\x2d\x00\x35\x00\x3c\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x00\x00\x01\x00\x02\x00\x03\x00\x0c\x00\x35\x00\x00\x00\x01\x00\x02\x00\x03\x00\x02\x00\x2d\x00\x3c\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x00\x00\x01\x00\x02\x00\x03\x00\x00\x00\x35\x00\x47\x00\x00\x00\x0a\x00\x03\x00\x47\x00\x02\x00\x3c\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x00\x00\x01\x00\x02\x00\x03\x00\x08\x00\x35\x00\x02\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x3c\x00\x2b\x00\x1c\x00\x1a\x00\x1b\x00\x35\x00\x00\x00\x01\x00\x02\x00\x03\x00\x24\x00\x35\x00\x3c\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x00\x00\x01\x00\x02\x00\x03\x00\x47\x00\x35\x00\x04\x00\x01\x00\x1b\x00\x47\x00\x06\x00\x04\x00\x3c\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x00\x00\x01\x00\x02\x00\x03\x00\x0e\x00\x35\x00\x00\x00\x04\x00\x04\x00\x11\x00\x47\x00\x04\x00\x3c\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x00\x00\x01\x00\x02\x00\x03\x00\x01\x00\x35\x00\x02\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x3c\x00\x19\x00\x06\x00\x11\x00\x0a\x00\x35\x00\x00\x00\x01\x00\x02\x00\x03\x00\x2d\x00\x23\x00\x3c\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x00\x00\x01\x00\x02\x00\x03\x00\x02\x00\x35\x00\x47\x00\x04\x00\x01\x00\x01\x00\x47\x00\x02\x00\x3c\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x00\x00\x01\x00\x02\x00\x03\x00\x01\x00\x35\x00\x02\x00\x01\x00\x00\x00\x07\x00\x01\x00\x01\x00\x3c\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x00\x00\x01\x00\x02\x00\x03\x00\x02\x00\x35\x00\x02\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x3c\x00\x17\x00\x01\x00\x47\x00\x38\x00\x35\x00\x00\x00\x01\x00\x02\x00\x03\x00\x23\x00\x21\x00\x3c\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x00\x00\x01\x00\x02\x00\x03\x00\x03\x00\x35\x00\x37\x00\x04\x00\x37\x00\x07\x00\x47\x00\x04\x00\x3c\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x00\x00\x01\x00\x02\x00\x03\x00\x01\x00\x35\x00\x0c\x00\x0e\x00\x16\x00\x04\x00\x01\x00\x01\x00\x3c\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x00\x00\x01\x00\x02\x00\x03\x00\x47\x00\x35\x00\x00\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x3c\x00\x07\x00\x08\x00\x04\x00\x47\x00\x35\x00\x00\x00\x01\x00\x02\x00\x03\x00\x01\x00\x04\x00\x3c\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x00\x00\x01\x00\x02\x00\x00\x00\x00\x00\x35\x00\x00\x00\x01\x00\x02\x00\x00\x00\x01\x00\x02\x00\x3c\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x08\x00\x00\x00\x00\x00\x03\x00\x0b\x00\x35\x00\x00\x00\x15\x00\x49\x00\x18\x00\x06\x00\x16\x00\x3c\x00\x2b\x00\x2c\x00\x2d\x00\x2e\x00\x2f\x00\x20\x00\x22\x00\x00\x00\x00\x00\x15\x00\x35\x00\x00\x00\x28\x00\x28\x00\x00\x00\x47\x00\x00\x00\x3c\x00\x31\x00\x1e\x00\x20\x00\x00\x00\x47\x00\x1e\x00\x31\x00\x38\x00\x25\x00\x31\x00\x28\x00\x28\x00\x25\x00\x38\x00\x15\x00\x28\x00\x38\x00\x15\x00\x00\x00\x1e\x00\x1e\x00\x00\x00\x18\x00\x00\x00\x15\x00\x20\x00\x25\x00\x25\x00\x20\x00\x28\x00\x28\x00\x0b\x00\x22\x00\x28\x00\x23\x00\x20\x00\x28\x00\x26\x00\x28\x00\x15\x00\x03\x00\x07\x00\x15\x00\x28\x00\x15\x00\x47\x00\x04\x00\x30\x00\x31\x00\x47\x00\x20\x00\x06\x00\x0e\x00\x20\x00\x0a\x00\x20\x00\x11\x00\x07\x00\x28\x00\x08\x00\x37\x00\x28\x00\x3f\x00\x28\x00\x0a\x00\x25\x00\x43\x00\x27\x00\x28\x00\x29\x00\x2d\x00\x2b\x00\x47\x00\x01\x00\x0a\x00\x01\x00\x03\x00\x47\x00\x02\x00\x33\x00\x34\x00\x35\x00\x36\x00\x02\x00\x01\x00\x39\x00\x4c\x00\x3b\x00\x3c\x00\x4c\x00\x3e\x00\x03\x00\x03\x00\x47\x00\x03\x00\x43\x00\x03\x00\x47\x00\x08\x00\x2e\x00\x4c\x00\x47\x00\x12\x00\x0b\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff"#

happyTable :: HappyAddr
happyTable = HappyA# "\x00\x00\x3a\x00\x3b\x00\x3a\x00\x3b\x00\x3a\x00\x3b\x00\x3a\x00\x3b\x00\x3a\x00\x3b\x00\x3a\x00\x3b\x00\x3a\x00\x52\x00\x70\x00\xa6\x01\xc6\x00\x56\x00\x4f\x00\x48\x01\xca\x00\x57\x00\x48\x01\x57\x00\xd6\x00\x9a\x01\x12\x00\x06\x00\x13\x00\xc7\x00\xd7\x00\xc8\x00\xa3\x01\x70\x00\x4b\x01\x72\x01\x14\x00\xac\x01\x15\x00\x16\x00\xad\x01\xa4\x01\x45\x01\x48\x00\x17\x00\x15\x00\x16\x00\x46\x01\x57\x00\x66\x01\x4b\x01\x51\x01\x18\x00\x19\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x06\x00\x1e\x00\x19\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x1f\x00\x71\x00\x06\x00\x61\x00\x06\x00\x52\x00\x53\x00\x0c\x01\x20\x00\x52\x00\x3c\x00\xcd\x00\x3c\x00\x3d\x00\xb8\x00\x12\x00\xb9\x00\x13\x00\xba\x00\x21\x00\xbc\x00\x06\x00\xff\xff\x22\x00\x23\x00\x14\x00\x24\x00\x15\x00\x16\x00\x06\x00\x25\x00\x26\x00\x27\x00\x17\x00\xa7\x01\x06\x00\x06\x00\x25\x00\x26\x00\x27\x00\x30\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x52\x01\x1e\x00\x3f\x00\x06\x00\x06\x00\x4a\x00\x2b\x00\x1f\x00\x5d\x00\x94\x01\x61\x00\x8c\x00\x8d\x00\x8e\x00\x73\x00\x20\x00\x53\x00\x88\x00\x40\x00\x41\x00\x53\x00\x54\x00\x12\x00\xa9\x00\x13\x00\x48\x01\x21\x00\x8c\x00\x8d\x00\x8e\x00\x22\x00\x23\x00\x14\x00\x24\x00\x15\x00\x16\x00\x06\x00\x25\x00\x26\x00\x27\x00\x17\x00\x8e\x01\x9b\x00\x55\x01\x12\x00\x16\x01\x47\x00\x9c\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x14\x00\x1e\x00\x15\x00\x16\x00\xe3\x00\x06\x00\x8f\x00\x1f\x00\x06\x00\x25\x00\x48\x01\x06\x00\x25\x00\x90\x00\x2a\x00\x20\x00\x18\x00\x19\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x8f\x00\x1e\x00\x91\x00\x23\x01\x21\x00\x2b\x00\x87\x01\x90\x00\x22\x00\x23\x00\xe3\x00\x24\x00\x95\x01\xe4\x00\x06\x00\x25\x00\x26\x00\x27\x00\x91\x00\x92\x00\x6a\x01\x88\x01\x12\x00\x4a\x00\x47\x00\x48\x01\x21\x00\x42\xff\x84\x01\x48\x01\x22\x00\x23\x00\x14\x00\x24\x00\x15\x00\x16\x00\x06\x00\x25\x00\x26\x00\x27\x00\x89\x01\xe4\x00\xab\x01\x49\x01\x12\x00\x54\x01\x47\x00\x55\x01\xe5\x00\x19\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x14\x00\xac\x01\x15\x00\x16\x00\x43\x00\x07\x00\x08\x00\x09\x00\x91\x01\x4b\x00\x4c\x00\xfb\x00\x92\x01\x70\x00\x4a\x00\x47\x00\x8c\x01\x19\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x46\x00\x48\x00\x47\x00\x15\x00\x16\x00\x06\x00\x07\x00\x08\x00\x09\x00\x5a\x01\x48\x00\x5b\x01\x15\x00\x16\x00\x06\x00\x25\x00\x26\x00\x27\x00\x19\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x84\x00\x58\x01\x6f\x01\x85\x00\x19\x00\x1a\x00\x1b\x00\x1c\x00\x1d\x00\x4b\x00\x4c\x00\x17\x01\x0f\x00\x06\x00\x25\x00\x26\x00\x27\x00\x06\x00\x07\x00\x08\x00\x09\x00\x69\x01\xee\x00\x8d\x00\x8e\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x2d\x01\x70\x01\x94\x00\xea\x00\x95\x00\xe7\x00\x0f\x00\x06\x00\x25\x00\x26\x00\x27\x00\x4a\x00\x19\x01\x10\x00\x7d\x00\x96\x00\x06\x00\x25\x00\x26\x00\x27\x00\x7e\x00\x7f\x00\x2e\x01\x7e\x01\x97\x00\x21\x01\xeb\x00\xee\x00\x8d\x00\x8e\x00\xe8\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x2d\x01\x72\x01\x94\x00\x7d\x00\x95\x00\x6e\x01\x0f\x00\xa1\x00\x7a\x01\x7e\x00\xf6\x00\x63\xff\x94\x00\x10\x00\x95\x00\x96\x00\x03\x01\x4b\x00\x4c\x00\x62\x00\xf6\x00\x63\xff\x2e\x01\x2f\x01\x97\x00\x96\x00\x94\x00\x04\x01\x95\x00\x31\x01\x7b\x01\x37\x01\xd8\x00\x7e\x00\x97\x00\x06\x00\x25\x00\x26\x00\x62\x01\x96\x00\x62\x01\xa1\x00\xa2\x00\xa0\x00\x8d\x00\x8e\x00\x4b\x01\xa3\x00\x97\x00\xa4\x00\x8c\x00\x8d\x00\x8e\x00\xee\x00\x8d\x00\x8e\x00\x2d\x00\xa5\x00\x20\x01\x2e\x00\xd9\x00\xee\x00\x8d\x00\x8e\x00\xee\x00\x8d\x00\x8e\x00\x63\x01\x66\x01\x63\x01\x06\x00\x25\x00\x26\x00\xee\x00\x8d\x00\x8e\x00\x65\x00\x93\x01\x4c\x01\x64\x01\x06\x00\x25\x00\x26\x00\x4b\x00\x4c\x00\x62\x00\x66\x00\x67\x00\xf7\xff\x68\x00\x69\x00\x6a\x00\xa1\x00\xa2\x00\x06\x00\x25\x00\x26\x00\x4d\x01\xa3\x00\x8f\x00\xa4\x00\x48\xff\xa1\x00\xfe\x00\x48\xff\x90\x01\x73\x01\x4e\x01\xa5\x00\xa6\x00\xa1\x00\xa2\x00\x6e\x00\xa1\x00\xa2\x00\xff\x00\xa3\x00\x79\x01\xa4\x00\xa3\x00\x12\x01\xa4\x00\xa1\x00\xfe\x00\x15\x01\x2d\x00\xa5\x00\x34\x01\x2e\x00\xa5\x00\xef\x00\x06\x00\x07\x00\x08\x00\x09\x00\xff\x00\x6b\x00\x00\x01\xab\x00\x02\x01\xac\x00\xad\x00\xae\x00\x4a\x00\xaf\x00\x7f\x00\x8c\x00\x8d\x00\x8e\x00\xee\x00\x8d\x00\x8e\x00\xb0\x00\xb1\x00\xb2\x00\xb3\x00\x7d\x00\x18\x01\xb4\x00\xa9\x00\xb5\x00\xb6\x00\x7e\x00\xb7\x00\x06\x00\x07\x00\x08\x00\x09\x00\xb8\x00\x06\x00\x07\x00\x08\x00\x09\x00\xd2\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x10\x01\x03\x01\x60\x01\x9f\x00\x5b\x00\xd4\x00\x0f\x00\x5d\x00\x07\x00\x08\x00\x09\x00\x6b\x01\x04\x01\x10\x00\x58\x00\x05\x01\x11\x01\x8f\x00\x5a\x00\x5b\x00\xa1\x00\x01\x01\x27\x00\x28\x00\xf4\x00\x5d\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x57\x00\x0a\x00\x0b\x00\x77\x00\x6c\x01\x96\x01\x0f\x00\xee\x00\x8d\x00\x8e\x00\xbd\x00\x0f\x00\xbe\x00\x10\x00\x58\x00\xbf\x00\x59\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x5e\x00\x06\x00\x07\x00\x08\x00\x09\x00\xc0\x00\x0f\x00\x06\x00\x07\x00\x08\x00\x09\x00\x53\x00\x7f\x01\x10\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x5e\x00\x06\x00\x07\x00\x08\x00\x09\x00\xc1\x00\x0f\x00\x06\x00\x07\x00\x08\x00\x09\x00\x53\x00\x5f\x00\x10\x00\x2e\x00\x2f\x00\xc2\x00\xa1\x00\xa2\x00\x06\x00\x07\x00\x08\x00\x09\x00\xa3\x00\x31\x00\x32\x01\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x9d\x00\x30\x01\x0a\x00\x0b\x00\x78\x00\x28\x01\x0f\x00\x06\x00\x07\x00\x08\x00\x09\x00\x7e\x00\x0f\x00\x10\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x9d\x00\x9e\x00\x0a\x00\x0b\x00\x79\x00\x32\x00\x0f\x00\x06\x00\x07\x00\x08\x00\x09\x00\x41\x00\x0f\x00\x10\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x9d\x00\xa8\x00\x51\x00\x4a\x00\x9b\x01\xaf\x01\x0f\x00\x06\x00\x07\x00\x08\x00\x09\x00\x9c\x01\xa5\x01\x10\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x98\x01\x06\x00\x07\x00\x08\x00\x09\x00\xb0\x01\x0f\x00\x43\x00\x07\x00\x08\x00\x09\x00\xaa\x01\x48\x01\x10\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x92\x01\x06\x00\x07\x00\x08\x00\x09\x00\xa9\x01\x0f\x00\x4b\x00\x4c\x00\x97\x00\x56\x01\x06\x00\x55\x01\x10\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x7d\x01\x06\x00\x07\x00\x08\x00\x09\x00\xa0\x01\x0f\x00\x9f\x01\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x86\x01\x10\x00\x0a\x00\x6b\x00\x4a\x00\xa1\x01\x0f\x00\x06\x00\x07\x00\x08\x00\x09\x00\xa2\x01\x0f\x00\x10\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x5e\x01\x06\x00\x07\x00\x08\x00\x09\x00\xa3\x01\x0f\x00\x43\x00\x07\x00\x08\x00\x09\x00\x61\x00\x9a\x01\x10\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x5f\x01\x06\x00\x07\x00\x08\x00\x09\x00\x8e\x01\x0f\x00\x06\x00\x4b\x00\x4c\x00\x4d\x00\x06\x00\x98\x01\x10\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x61\x01\x06\x00\x07\x00\x08\x00\x09\x00\x81\x01\x0f\x00\x82\x01\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x68\x01\x10\x00\x6e\x00\x4b\x00\x4c\x00\x62\x00\x0f\x00\x06\x00\x07\x00\x08\x00\x09\x00\x83\x01\x0f\x00\x10\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x77\x01\x06\x00\x07\x00\x08\x00\x09\x00\x84\x01\x0f\x00\x43\x00\x07\x00\x08\x00\x09\x00\x86\x01\x8b\x01\x10\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x78\x01\x06\x00\x07\x00\x08\x00\x09\x00\xd8\x00\x0f\x00\x06\x00\x6b\x01\x8c\x01\x58\x01\x06\x00\x54\x01\x10\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x1f\x01\x06\x00\x07\x00\x08\x00\x09\x00\x5c\x01\x0f\x00\x5d\x01\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x22\x01\x10\x00\x44\x00\xd9\x00\x6c\x01\x6d\x01\x0f\x00\x06\x00\x07\x00\x08\x00\x09\x00\xda\x00\x0f\x00\x10\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x33\x01\x06\x00\x07\x00\x08\x00\x09\x00\x06\x00\x0f\x00\x75\x01\x76\x01\x77\x01\x06\x00\x1d\x01\x7d\x01\x10\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\xf9\x00\x06\x00\x07\x00\x08\x00\x09\x00\x1e\x01\x0f\x00\xe7\x00\x1b\x01\x1c\x01\x1f\x01\x06\x00\x25\x01\x10\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\xfa\x00\x06\x00\x07\x00\x08\x00\x09\x00\x26\x01\x0f\x00\x27\x01\x0a\x00\x0b\x00\x0c\x00\x0d\x00\xfc\x00\x10\x00\xe8\x00\x29\x01\x2a\x01\x2b\x01\x0f\x00\x06\x00\x07\x00\x08\x00\x09\x00\x2c\x01\xe9\x00\x10\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0d\x01\x06\x00\x07\x00\x08\x00\x09\x00\x2d\x01\x0f\x00\x06\x00\x36\x01\x37\x01\x39\x01\x06\x00\x3a\x01\x10\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0f\x01\x06\x00\x07\x00\x08\x00\x09\x00\x3b\x01\x0f\x00\x3c\x01\x3e\x01\xea\x00\x3d\x01\x3f\x01\x44\x01\x10\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x13\x01\x06\x00\x07\x00\x08\x00\x09\x00\x40\x01\x0f\x00\x43\x01\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x74\x00\x10\x00\xeb\x00\x47\x01\x06\x00\x50\x01\x0f\x00\x06\x00\x07\x00\x08\x00\x09\x00\x53\x01\xec\x00\x10\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x75\x00\x06\x00\x07\x00\x08\x00\x09\x00\xc6\x00\x0f\x00\xcb\x00\xee\x00\xcc\x00\xcd\x00\x06\x00\xf1\x00\x10\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x76\x00\x06\x00\x07\x00\x08\x00\x09\x00\xf2\x00\x0f\x00\xf4\x00\x85\x00\xf3\x00\xf7\x00\xf8\x00\xf9\x00\x10\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x7a\x00\x06\x00\x07\x00\x08\x00\x09\x00\x06\x00\x0f\x00\x9b\x01\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x9c\x00\x10\x00\x9c\x01\x9d\x01\xfe\x00\x06\x00\x0f\x00\x06\x00\x07\x00\x08\x00\x09\x00\x08\x01\x07\x01\x10\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x5e\x00\x8c\x00\x8d\x00\x8e\x00\x4a\x00\xce\x00\x0f\x00\x8c\x00\x8d\x00\x8e\x00\x8c\x00\x8d\x00\x8e\x00\x10\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x50\x00\x09\x01\xce\x00\x4a\x00\x0c\x01\x0b\x01\x0f\x00\x4a\x00\xcf\x00\x26\x00\xe0\x00\x15\x01\x0f\x01\x10\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x5d\x01\x67\x01\x4a\x00\x4a\x00\xcf\x00\x0f\x00\xce\x00\xe2\x00\xd1\x00\xce\x00\x06\x00\x4a\x00\x10\x00\x8f\x00\xd2\x00\xd0\x00\xce\x00\x06\x00\xd2\x00\x8f\x00\x47\x01\x40\x01\x8f\x00\xd1\x00\xd4\x00\x41\x01\xf4\x00\xcf\x00\xd4\x00\x09\x01\xcf\x00\xce\x00\xd2\x00\xd2\x00\xce\x00\xe0\x00\xce\x00\xcf\x00\xd7\x00\xd3\x00\xde\x00\xdb\x00\xd4\x00\xd4\x00\x6d\x00\xe1\x00\xd1\x00\x34\x00\xdc\x00\xd1\x00\x35\x00\xe2\x00\xcf\x00\x74\x00\x81\x00\xcf\x00\xd1\x00\xcf\x00\x06\x00\x7c\x00\x36\x00\x37\x00\x06\x00\xdd\x00\x82\x00\x83\x00\xdf\x00\x87\x00\xe6\x00\x86\x00\x88\x00\xd1\x00\x8a\x00\x8c\x00\xd1\x00\x38\x00\xd1\x00\x8b\x00\xab\x00\x39\x00\xac\x00\xad\x00\xae\x00\x99\x00\xaf\x00\x06\x00\x9a\x00\x7e\x00\xbc\x00\xa8\x00\x06\x00\xc4\x00\xb0\x00\xb1\x00\xb2\x00\xb3\x00\xc5\x00\x3a\x00\xb4\x00\xff\xff\xb5\x00\xb6\x00\xff\xff\xb7\x00\x43\x00\x49\x00\x06\x00\x4a\x00\xb8\x00\x50\x00\x06\x00\x64\x00\x2a\x00\xff\xff\x06\x00\x6e\x00\x6d\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

happyReduceArr = array (4, 223) [
	(4 , happyReduce_4),
	(5 , happyReduce_5),
	(6 , happyReduce_6),
	(7 , happyReduce_7),
	(8 , happyReduce_8),
	(9 , happyReduce_9),
	(10 , happyReduce_10),
	(11 , happyReduce_11),
	(12 , happyReduce_12),
	(13 , happyReduce_13),
	(14 , happyReduce_14),
	(15 , happyReduce_15),
	(16 , happyReduce_16),
	(17 , happyReduce_17),
	(18 , happyReduce_18),
	(19 , happyReduce_19),
	(20 , happyReduce_20),
	(21 , happyReduce_21),
	(22 , happyReduce_22),
	(23 , happyReduce_23),
	(24 , happyReduce_24),
	(25 , happyReduce_25),
	(26 , happyReduce_26),
	(27 , happyReduce_27),
	(28 , happyReduce_28),
	(29 , happyReduce_29),
	(30 , happyReduce_30),
	(31 , happyReduce_31),
	(32 , happyReduce_32),
	(33 , happyReduce_33),
	(34 , happyReduce_34),
	(35 , happyReduce_35),
	(36 , happyReduce_36),
	(37 , happyReduce_37),
	(38 , happyReduce_38),
	(39 , happyReduce_39),
	(40 , happyReduce_40),
	(41 , happyReduce_41),
	(42 , happyReduce_42),
	(43 , happyReduce_43),
	(44 , happyReduce_44),
	(45 , happyReduce_45),
	(46 , happyReduce_46),
	(47 , happyReduce_47),
	(48 , happyReduce_48),
	(49 , happyReduce_49),
	(50 , happyReduce_50),
	(51 , happyReduce_51),
	(52 , happyReduce_52),
	(53 , happyReduce_53),
	(54 , happyReduce_54),
	(55 , happyReduce_55),
	(56 , happyReduce_56),
	(57 , happyReduce_57),
	(58 , happyReduce_58),
	(59 , happyReduce_59),
	(60 , happyReduce_60),
	(61 , happyReduce_61),
	(62 , happyReduce_62),
	(63 , happyReduce_63),
	(64 , happyReduce_64),
	(65 , happyReduce_65),
	(66 , happyReduce_66),
	(67 , happyReduce_67),
	(68 , happyReduce_68),
	(69 , happyReduce_69),
	(70 , happyReduce_70),
	(71 , happyReduce_71),
	(72 , happyReduce_72),
	(73 , happyReduce_73),
	(74 , happyReduce_74),
	(75 , happyReduce_75),
	(76 , happyReduce_76),
	(77 , happyReduce_77),
	(78 , happyReduce_78),
	(79 , happyReduce_79),
	(80 , happyReduce_80),
	(81 , happyReduce_81),
	(82 , happyReduce_82),
	(83 , happyReduce_83),
	(84 , happyReduce_84),
	(85 , happyReduce_85),
	(86 , happyReduce_86),
	(87 , happyReduce_87),
	(88 , happyReduce_88),
	(89 , happyReduce_89),
	(90 , happyReduce_90),
	(91 , happyReduce_91),
	(92 , happyReduce_92),
	(93 , happyReduce_93),
	(94 , happyReduce_94),
	(95 , happyReduce_95),
	(96 , happyReduce_96),
	(97 , happyReduce_97),
	(98 , happyReduce_98),
	(99 , happyReduce_99),
	(100 , happyReduce_100),
	(101 , happyReduce_101),
	(102 , happyReduce_102),
	(103 , happyReduce_103),
	(104 , happyReduce_104),
	(105 , happyReduce_105),
	(106 , happyReduce_106),
	(107 , happyReduce_107),
	(108 , happyReduce_108),
	(109 , happyReduce_109),
	(110 , happyReduce_110),
	(111 , happyReduce_111),
	(112 , happyReduce_112),
	(113 , happyReduce_113),
	(114 , happyReduce_114),
	(115 , happyReduce_115),
	(116 , happyReduce_116),
	(117 , happyReduce_117),
	(118 , happyReduce_118),
	(119 , happyReduce_119),
	(120 , happyReduce_120),
	(121 , happyReduce_121),
	(122 , happyReduce_122),
	(123 , happyReduce_123),
	(124 , happyReduce_124),
	(125 , happyReduce_125),
	(126 , happyReduce_126),
	(127 , happyReduce_127),
	(128 , happyReduce_128),
	(129 , happyReduce_129),
	(130 , happyReduce_130),
	(131 , happyReduce_131),
	(132 , happyReduce_132),
	(133 , happyReduce_133),
	(134 , happyReduce_134),
	(135 , happyReduce_135),
	(136 , happyReduce_136),
	(137 , happyReduce_137),
	(138 , happyReduce_138),
	(139 , happyReduce_139),
	(140 , happyReduce_140),
	(141 , happyReduce_141),
	(142 , happyReduce_142),
	(143 , happyReduce_143),
	(144 , happyReduce_144),
	(145 , happyReduce_145),
	(146 , happyReduce_146),
	(147 , happyReduce_147),
	(148 , happyReduce_148),
	(149 , happyReduce_149),
	(150 , happyReduce_150),
	(151 , happyReduce_151),
	(152 , happyReduce_152),
	(153 , happyReduce_153),
	(154 , happyReduce_154),
	(155 , happyReduce_155),
	(156 , happyReduce_156),
	(157 , happyReduce_157),
	(158 , happyReduce_158),
	(159 , happyReduce_159),
	(160 , happyReduce_160),
	(161 , happyReduce_161),
	(162 , happyReduce_162),
	(163 , happyReduce_163),
	(164 , happyReduce_164),
	(165 , happyReduce_165),
	(166 , happyReduce_166),
	(167 , happyReduce_167),
	(168 , happyReduce_168),
	(169 , happyReduce_169),
	(170 , happyReduce_170),
	(171 , happyReduce_171),
	(172 , happyReduce_172),
	(173 , happyReduce_173),
	(174 , happyReduce_174),
	(175 , happyReduce_175),
	(176 , happyReduce_176),
	(177 , happyReduce_177),
	(178 , happyReduce_178),
	(179 , happyReduce_179),
	(180 , happyReduce_180),
	(181 , happyReduce_181),
	(182 , happyReduce_182),
	(183 , happyReduce_183),
	(184 , happyReduce_184),
	(185 , happyReduce_185),
	(186 , happyReduce_186),
	(187 , happyReduce_187),
	(188 , happyReduce_188),
	(189 , happyReduce_189),
	(190 , happyReduce_190),
	(191 , happyReduce_191),
	(192 , happyReduce_192),
	(193 , happyReduce_193),
	(194 , happyReduce_194),
	(195 , happyReduce_195),
	(196 , happyReduce_196),
	(197 , happyReduce_197),
	(198 , happyReduce_198),
	(199 , happyReduce_199),
	(200 , happyReduce_200),
	(201 , happyReduce_201),
	(202 , happyReduce_202),
	(203 , happyReduce_203),
	(204 , happyReduce_204),
	(205 , happyReduce_205),
	(206 , happyReduce_206),
	(207 , happyReduce_207),
	(208 , happyReduce_208),
	(209 , happyReduce_209),
	(210 , happyReduce_210),
	(211 , happyReduce_211),
	(212 , happyReduce_212),
	(213 , happyReduce_213),
	(214 , happyReduce_214),
	(215 , happyReduce_215),
	(216 , happyReduce_216),
	(217 , happyReduce_217),
	(218 , happyReduce_218),
	(219 , happyReduce_219),
	(220 , happyReduce_220),
	(221 , happyReduce_221),
	(222 , happyReduce_222),
	(223 , happyReduce_223)
	]

happy_n_terms = 77 :: Int
happy_n_nonterms = 77 :: Int

happyReduce_4 = happySpecReduce_1 0# happyReduction_4
happyReduction_4 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TV happy_var_1)) -> 
	happyIn7
		 (identC happy_var_1 --H
	)}

happyReduce_5 = happySpecReduce_1 1# happyReduction_5
happyReduction_5 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TL happy_var_1)) -> 
	happyIn8
		 (happy_var_1
	)}

happyReduce_6 = happySpecReduce_1 2# happyReduction_6
happyReduction_6 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TI happy_var_1)) -> 
	happyIn9
		 ((read happy_var_1) :: Integer
	)}

happyReduce_7 = happySpecReduce_1 3# happyReduction_7
happyReduction_7 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (T_LString happy_var_1)) -> 
	happyIn10
		 (LString happy_var_1
	)}

happyReduce_8 = happySpecReduce_1 4# happyReduction_8
happyReduction_8 happy_x_1
	 =  case happyOut12 happy_x_1 of { happy_var_1 -> 
	happyIn11
		 (Gr (reverse happy_var_1)
	)}

happyReduce_9 = happySpecReduce_0 5# happyReduction_9
happyReduction_9  =  happyIn12
		 ([]
	)

happyReduce_10 = happySpecReduce_2 5# happyReduction_10
happyReduction_10 happy_x_2
	happy_x_1
	 =  case happyOut12 happy_x_1 of { happy_var_1 -> 
	case happyOut13 happy_x_2 of { happy_var_2 -> 
	happyIn12
		 (flip (:) happy_var_1 happy_var_2
	)}}

happyReduce_11 = happySpecReduce_2 6# happyReduction_11
happyReduction_11 happy_x_2
	happy_x_1
	 =  case happyOut13 happy_x_1 of { happy_var_1 -> 
	happyIn13
		 (happy_var_1
	)}

happyReduce_12 = happyReduce 10# 6# happyReduction_12
happyReduction_12 (happy_x_10 `HappyStk`
	happy_x_9 `HappyStk`
	happy_x_8 `HappyStk`
	happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut7 happy_x_2 of { happy_var_2 -> 
	case happyOut7 happy_x_7 of { happy_var_7 -> 
	case happyOut15 happy_x_9 of { happy_var_9 -> 
	happyIn13
		 (MMain happy_var_2 happy_var_7 happy_var_9
	) `HappyStk` happyRest}}}

happyReduce_13 = happyReduce 4# 6# happyReduction_13
happyReduction_13 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut26 happy_x_1 of { happy_var_1 -> 
	case happyOut19 happy_x_2 of { happy_var_2 -> 
	case happyOut20 happy_x_4 of { happy_var_4 -> 
	happyIn13
		 (MModule happy_var_1 happy_var_2 happy_var_4
	) `HappyStk` happyRest}}}

happyReduce_14 = happySpecReduce_3 7# happyReduction_14
happyReduction_14 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut16 happy_x_3 of { happy_var_3 -> 
	happyIn14
		 (ConcSpec happy_var_1 happy_var_3
	)}}

happyReduce_15 = happySpecReduce_0 8# happyReduction_15
happyReduction_15  =  happyIn15
		 ([]
	)

happyReduce_16 = happySpecReduce_1 8# happyReduction_16
happyReduction_16 happy_x_1
	 =  case happyOut14 happy_x_1 of { happy_var_1 -> 
	happyIn15
		 ((:[]) happy_var_1
	)}

happyReduce_17 = happySpecReduce_3 8# happyReduction_17
happyReduction_17 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut14 happy_x_1 of { happy_var_1 -> 
	case happyOut15 happy_x_3 of { happy_var_3 -> 
	happyIn15
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_18 = happySpecReduce_2 9# happyReduction_18
happyReduction_18 happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut17 happy_x_2 of { happy_var_2 -> 
	happyIn16
		 (ConcExp happy_var_1 (reverse happy_var_2)
	)}}

happyReduce_19 = happySpecReduce_0 10# happyReduction_19
happyReduction_19  =  happyIn17
		 ([]
	)

happyReduce_20 = happySpecReduce_2 10# happyReduction_20
happyReduction_20 happy_x_2
	happy_x_1
	 =  case happyOut17 happy_x_1 of { happy_var_1 -> 
	case happyOut18 happy_x_2 of { happy_var_2 -> 
	happyIn17
		 (flip (:) happy_var_1 happy_var_2
	)}}

happyReduce_21 = happyReduce 5# 11# happyReduction_21
happyReduction_21 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut25 happy_x_4 of { happy_var_4 -> 
	happyIn18
		 (TransferIn happy_var_4
	) `HappyStk` happyRest}

happyReduce_22 = happyReduce 5# 11# happyReduction_22
happyReduction_22 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut25 happy_x_4 of { happy_var_4 -> 
	happyIn18
		 (TransferOut happy_var_4
	) `HappyStk` happyRest}

happyReduce_23 = happySpecReduce_2 12# happyReduction_23
happyReduction_23 happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_2 of { happy_var_2 -> 
	happyIn19
		 (MTAbstract happy_var_2
	)}

happyReduce_24 = happySpecReduce_2 12# happyReduction_24
happyReduction_24 happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_2 of { happy_var_2 -> 
	happyIn19
		 (MTResource happy_var_2
	)}

happyReduce_25 = happySpecReduce_2 12# happyReduction_25
happyReduction_25 happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_2 of { happy_var_2 -> 
	happyIn19
		 (MTInterface happy_var_2
	)}

happyReduce_26 = happyReduce 4# 12# happyReduction_26
happyReduction_26 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut7 happy_x_2 of { happy_var_2 -> 
	case happyOut7 happy_x_4 of { happy_var_4 -> 
	happyIn19
		 (MTConcrete happy_var_2 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_27 = happyReduce 4# 12# happyReduction_27
happyReduction_27 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut7 happy_x_2 of { happy_var_2 -> 
	case happyOut7 happy_x_4 of { happy_var_4 -> 
	happyIn19
		 (MTInstance happy_var_2 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_28 = happyReduce 6# 12# happyReduction_28
happyReduction_28 (happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut7 happy_x_2 of { happy_var_2 -> 
	case happyOut25 happy_x_4 of { happy_var_4 -> 
	case happyOut25 happy_x_6 of { happy_var_6 -> 
	happyIn19
		 (MTTransfer happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest}}}

happyReduce_29 = happyReduce 5# 13# happyReduction_29
happyReduction_29 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut22 happy_x_1 of { happy_var_1 -> 
	case happyOut24 happy_x_2 of { happy_var_2 -> 
	case happyOut21 happy_x_4 of { happy_var_4 -> 
	happyIn20
		 (MBody happy_var_1 happy_var_2 (reverse happy_var_4)
	) `HappyStk` happyRest}}}

happyReduce_30 = happySpecReduce_3 13# happyReduction_30
happyReduction_30 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut23 happy_x_3 of { happy_var_3 -> 
	happyIn20
		 (MWith happy_var_1 happy_var_3
	)}}

happyReduce_31 = happySpecReduce_2 13# happyReduction_31
happyReduction_31 happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_2 of { happy_var_2 -> 
	happyIn20
		 (MReuse happy_var_2
	)}

happyReduce_32 = happySpecReduce_0 14# happyReduction_32
happyReduction_32  =  happyIn21
		 ([]
	)

happyReduce_33 = happySpecReduce_2 14# happyReduction_33
happyReduction_33 happy_x_2
	happy_x_1
	 =  case happyOut21 happy_x_1 of { happy_var_1 -> 
	case happyOut29 happy_x_2 of { happy_var_2 -> 
	happyIn21
		 (flip (:) happy_var_1 happy_var_2
	)}}

happyReduce_34 = happySpecReduce_2 15# happyReduction_34
happyReduction_34 happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	happyIn22
		 (Ext happy_var_1
	)}

happyReduce_35 = happySpecReduce_0 15# happyReduction_35
happyReduction_35  =  happyIn22
		 (NoExt
	)

happyReduce_36 = happySpecReduce_0 16# happyReduction_36
happyReduction_36  =  happyIn23
		 ([]
	)

happyReduce_37 = happySpecReduce_1 16# happyReduction_37
happyReduction_37 happy_x_1
	 =  case happyOut25 happy_x_1 of { happy_var_1 -> 
	happyIn23
		 ((:[]) happy_var_1
	)}

happyReduce_38 = happySpecReduce_3 16# happyReduction_38
happyReduction_38 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut25 happy_x_1 of { happy_var_1 -> 
	case happyOut23 happy_x_3 of { happy_var_3 -> 
	happyIn23
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_39 = happySpecReduce_0 17# happyReduction_39
happyReduction_39  =  happyIn24
		 (NoOpens
	)

happyReduce_40 = happySpecReduce_3 17# happyReduction_40
happyReduction_40 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut23 happy_x_2 of { happy_var_2 -> 
	happyIn24
		 (Opens happy_var_2
	)}

happyReduce_41 = happySpecReduce_1 18# happyReduction_41
happyReduction_41 happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	happyIn25
		 (OName happy_var_1
	)}

happyReduce_42 = happyReduce 4# 18# happyReduction_42
happyReduction_42 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut27 happy_x_2 of { happy_var_2 -> 
	case happyOut7 happy_x_3 of { happy_var_3 -> 
	happyIn25
		 (OQualQO happy_var_2 happy_var_3
	) `HappyStk` happyRest}}

happyReduce_43 = happyReduce 6# 18# happyReduction_43
happyReduction_43 (happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut27 happy_x_2 of { happy_var_2 -> 
	case happyOut7 happy_x_3 of { happy_var_3 -> 
	case happyOut7 happy_x_5 of { happy_var_5 -> 
	happyIn25
		 (OQual happy_var_2 happy_var_3 happy_var_5
	) `HappyStk` happyRest}}}

happyReduce_44 = happySpecReduce_0 19# happyReduction_44
happyReduction_44  =  happyIn26
		 (CMCompl
	)

happyReduce_45 = happySpecReduce_1 19# happyReduction_45
happyReduction_45 happy_x_1
	 =  happyIn26
		 (CMIncompl
	)

happyReduce_46 = happySpecReduce_0 20# happyReduction_46
happyReduction_46  =  happyIn27
		 (QOCompl
	)

happyReduce_47 = happySpecReduce_1 20# happyReduction_47
happyReduction_47 happy_x_1
	 =  happyIn27
		 (QOIncompl
	)

happyReduce_48 = happySpecReduce_1 20# happyReduction_48
happyReduction_48 happy_x_1
	 =  happyIn27
		 (QOInterface
	)

happyReduce_49 = happySpecReduce_3 21# happyReduction_49
happyReduction_49 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut47 happy_x_1 of { happy_var_1 -> 
	case happyOut54 happy_x_3 of { happy_var_3 -> 
	happyIn28
		 (DDecl happy_var_1 happy_var_3
	)}}

happyReduce_50 = happySpecReduce_3 21# happyReduction_50
happyReduction_50 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut47 happy_x_1 of { happy_var_1 -> 
	case happyOut54 happy_x_3 of { happy_var_3 -> 
	happyIn28
		 (DDef happy_var_1 happy_var_3
	)}}

happyReduce_51 = happyReduce 4# 21# happyReduction_51
happyReduction_51 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut63 happy_x_2 of { happy_var_2 -> 
	case happyOut54 happy_x_4 of { happy_var_4 -> 
	happyIn28
		 (DPatt happy_var_1 happy_var_2 happy_var_4
	) `HappyStk` happyRest}}}

happyReduce_52 = happyReduce 5# 21# happyReduction_52
happyReduction_52 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut47 happy_x_1 of { happy_var_1 -> 
	case happyOut54 happy_x_3 of { happy_var_3 -> 
	case happyOut54 happy_x_5 of { happy_var_5 -> 
	happyIn28
		 (DFull happy_var_1 happy_var_3 happy_var_5
	) `HappyStk` happyRest}}}

happyReduce_53 = happySpecReduce_2 22# happyReduction_53
happyReduction_53 happy_x_2
	happy_x_1
	 =  case happyOut40 happy_x_2 of { happy_var_2 -> 
	happyIn29
		 (DefCat happy_var_2
	)}

happyReduce_54 = happySpecReduce_2 22# happyReduction_54
happyReduction_54 happy_x_2
	happy_x_1
	 =  case happyOut41 happy_x_2 of { happy_var_2 -> 
	happyIn29
		 (DefFun happy_var_2
	)}

happyReduce_55 = happySpecReduce_2 22# happyReduction_55
happyReduction_55 happy_x_2
	happy_x_1
	 =  case happyOut39 happy_x_2 of { happy_var_2 -> 
	happyIn29
		 (DefDef happy_var_2
	)}

happyReduce_56 = happySpecReduce_2 22# happyReduction_56
happyReduction_56 happy_x_2
	happy_x_1
	 =  case happyOut42 happy_x_2 of { happy_var_2 -> 
	happyIn29
		 (DefData happy_var_2
	)}

happyReduce_57 = happySpecReduce_2 22# happyReduction_57
happyReduction_57 happy_x_2
	happy_x_1
	 =  case happyOut39 happy_x_2 of { happy_var_2 -> 
	happyIn29
		 (DefTrans happy_var_2
	)}

happyReduce_58 = happySpecReduce_2 22# happyReduction_58
happyReduction_58 happy_x_2
	happy_x_1
	 =  case happyOut43 happy_x_2 of { happy_var_2 -> 
	happyIn29
		 (DefPar happy_var_2
	)}

happyReduce_59 = happySpecReduce_2 22# happyReduction_59
happyReduction_59 happy_x_2
	happy_x_1
	 =  case happyOut39 happy_x_2 of { happy_var_2 -> 
	happyIn29
		 (DefOper happy_var_2
	)}

happyReduce_60 = happySpecReduce_2 22# happyReduction_60
happyReduction_60 happy_x_2
	happy_x_1
	 =  case happyOut44 happy_x_2 of { happy_var_2 -> 
	happyIn29
		 (DefLincat happy_var_2
	)}

happyReduce_61 = happySpecReduce_2 22# happyReduction_61
happyReduction_61 happy_x_2
	happy_x_1
	 =  case happyOut39 happy_x_2 of { happy_var_2 -> 
	happyIn29
		 (DefLindef happy_var_2
	)}

happyReduce_62 = happySpecReduce_2 22# happyReduction_62
happyReduction_62 happy_x_2
	happy_x_1
	 =  case happyOut39 happy_x_2 of { happy_var_2 -> 
	happyIn29
		 (DefLin happy_var_2
	)}

happyReduce_63 = happySpecReduce_3 22# happyReduction_63
happyReduction_63 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut44 happy_x_3 of { happy_var_3 -> 
	happyIn29
		 (DefPrintCat happy_var_3
	)}

happyReduce_64 = happySpecReduce_3 22# happyReduction_64
happyReduction_64 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut44 happy_x_3 of { happy_var_3 -> 
	happyIn29
		 (DefPrintFun happy_var_3
	)}

happyReduce_65 = happySpecReduce_2 22# happyReduction_65
happyReduction_65 happy_x_2
	happy_x_1
	 =  case happyOut45 happy_x_2 of { happy_var_2 -> 
	happyIn29
		 (DefFlag happy_var_2
	)}

happyReduce_66 = happySpecReduce_2 22# happyReduction_66
happyReduction_66 happy_x_2
	happy_x_1
	 =  case happyOut44 happy_x_2 of { happy_var_2 -> 
	happyIn29
		 (DefPrintOld happy_var_2
	)}

happyReduce_67 = happySpecReduce_2 22# happyReduction_67
happyReduction_67 happy_x_2
	happy_x_1
	 =  case happyOut39 happy_x_2 of { happy_var_2 -> 
	happyIn29
		 (DefLintype happy_var_2
	)}

happyReduce_68 = happySpecReduce_2 22# happyReduction_68
happyReduction_68 happy_x_2
	happy_x_1
	 =  case happyOut39 happy_x_2 of { happy_var_2 -> 
	happyIn29
		 (DefPattern happy_var_2
	)}

happyReduce_69 = happySpecReduce_2 23# happyReduction_69
happyReduction_69 happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut79 happy_x_2 of { happy_var_2 -> 
	happyIn30
		 (CatDef happy_var_1 (reverse happy_var_2)
	)}}

happyReduce_70 = happySpecReduce_3 24# happyReduction_70
happyReduction_70 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut47 happy_x_1 of { happy_var_1 -> 
	case happyOut54 happy_x_3 of { happy_var_3 -> 
	happyIn31
		 (FunDef happy_var_1 happy_var_3
	)}}

happyReduce_71 = happySpecReduce_3 25# happyReduction_71
happyReduction_71 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut34 happy_x_3 of { happy_var_3 -> 
	happyIn32
		 (DataDef happy_var_1 happy_var_3
	)}}

happyReduce_72 = happySpecReduce_1 26# happyReduction_72
happyReduction_72 happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	happyIn33
		 (DataId happy_var_1
	)}

happyReduce_73 = happySpecReduce_3 26# happyReduction_73
happyReduction_73 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut7 happy_x_3 of { happy_var_3 -> 
	happyIn33
		 (DataQId happy_var_1 happy_var_3
	)}}

happyReduce_74 = happySpecReduce_0 27# happyReduction_74
happyReduction_74  =  happyIn34
		 ([]
	)

happyReduce_75 = happySpecReduce_1 27# happyReduction_75
happyReduction_75 happy_x_1
	 =  case happyOut33 happy_x_1 of { happy_var_1 -> 
	happyIn34
		 ((:[]) happy_var_1
	)}

happyReduce_76 = happySpecReduce_3 27# happyReduction_76
happyReduction_76 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut33 happy_x_1 of { happy_var_1 -> 
	case happyOut34 happy_x_3 of { happy_var_3 -> 
	happyIn34
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_77 = happySpecReduce_3 28# happyReduction_77
happyReduction_77 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut46 happy_x_3 of { happy_var_3 -> 
	happyIn35
		 (ParDef happy_var_1 happy_var_3
	)}}

happyReduce_78 = happyReduce 6# 28# happyReduction_78
happyReduction_78 (happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut7 happy_x_5 of { happy_var_5 -> 
	happyIn35
		 (ParDefIndir happy_var_1 happy_var_5
	) `HappyStk` happyRest}}

happyReduce_79 = happySpecReduce_1 28# happyReduction_79
happyReduction_79 happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	happyIn35
		 (ParDefAbs happy_var_1
	)}

happyReduce_80 = happySpecReduce_2 29# happyReduction_80
happyReduction_80 happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut79 happy_x_2 of { happy_var_2 -> 
	happyIn36
		 (ParConstr happy_var_1 (reverse happy_var_2)
	)}}

happyReduce_81 = happySpecReduce_3 30# happyReduction_81
happyReduction_81 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut47 happy_x_1 of { happy_var_1 -> 
	case happyOut54 happy_x_3 of { happy_var_3 -> 
	happyIn37
		 (PrintDef happy_var_1 happy_var_3
	)}}

happyReduce_82 = happySpecReduce_3 31# happyReduction_82
happyReduction_82 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut7 happy_x_3 of { happy_var_3 -> 
	happyIn38
		 (FlagDef happy_var_1 happy_var_3
	)}}

happyReduce_83 = happySpecReduce_2 32# happyReduction_83
happyReduction_83 happy_x_2
	happy_x_1
	 =  case happyOut28 happy_x_1 of { happy_var_1 -> 
	happyIn39
		 ((:[]) happy_var_1
	)}

happyReduce_84 = happySpecReduce_3 32# happyReduction_84
happyReduction_84 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut28 happy_x_1 of { happy_var_1 -> 
	case happyOut39 happy_x_3 of { happy_var_3 -> 
	happyIn39
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_85 = happySpecReduce_2 33# happyReduction_85
happyReduction_85 happy_x_2
	happy_x_1
	 =  case happyOut30 happy_x_1 of { happy_var_1 -> 
	happyIn40
		 ((:[]) happy_var_1
	)}

happyReduce_86 = happySpecReduce_3 33# happyReduction_86
happyReduction_86 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut30 happy_x_1 of { happy_var_1 -> 
	case happyOut40 happy_x_3 of { happy_var_3 -> 
	happyIn40
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_87 = happySpecReduce_2 34# happyReduction_87
happyReduction_87 happy_x_2
	happy_x_1
	 =  case happyOut31 happy_x_1 of { happy_var_1 -> 
	happyIn41
		 ((:[]) happy_var_1
	)}

happyReduce_88 = happySpecReduce_3 34# happyReduction_88
happyReduction_88 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut31 happy_x_1 of { happy_var_1 -> 
	case happyOut41 happy_x_3 of { happy_var_3 -> 
	happyIn41
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_89 = happySpecReduce_2 35# happyReduction_89
happyReduction_89 happy_x_2
	happy_x_1
	 =  case happyOut32 happy_x_1 of { happy_var_1 -> 
	happyIn42
		 ((:[]) happy_var_1
	)}

happyReduce_90 = happySpecReduce_3 35# happyReduction_90
happyReduction_90 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut32 happy_x_1 of { happy_var_1 -> 
	case happyOut42 happy_x_3 of { happy_var_3 -> 
	happyIn42
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_91 = happySpecReduce_2 36# happyReduction_91
happyReduction_91 happy_x_2
	happy_x_1
	 =  case happyOut35 happy_x_1 of { happy_var_1 -> 
	happyIn43
		 ((:[]) happy_var_1
	)}

happyReduce_92 = happySpecReduce_3 36# happyReduction_92
happyReduction_92 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut35 happy_x_1 of { happy_var_1 -> 
	case happyOut43 happy_x_3 of { happy_var_3 -> 
	happyIn43
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_93 = happySpecReduce_2 37# happyReduction_93
happyReduction_93 happy_x_2
	happy_x_1
	 =  case happyOut37 happy_x_1 of { happy_var_1 -> 
	happyIn44
		 ((:[]) happy_var_1
	)}

happyReduce_94 = happySpecReduce_3 37# happyReduction_94
happyReduction_94 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut37 happy_x_1 of { happy_var_1 -> 
	case happyOut44 happy_x_3 of { happy_var_3 -> 
	happyIn44
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_95 = happySpecReduce_2 38# happyReduction_95
happyReduction_95 happy_x_2
	happy_x_1
	 =  case happyOut38 happy_x_1 of { happy_var_1 -> 
	happyIn45
		 ((:[]) happy_var_1
	)}

happyReduce_96 = happySpecReduce_3 38# happyReduction_96
happyReduction_96 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut38 happy_x_1 of { happy_var_1 -> 
	case happyOut45 happy_x_3 of { happy_var_3 -> 
	happyIn45
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_97 = happySpecReduce_0 39# happyReduction_97
happyReduction_97  =  happyIn46
		 ([]
	)

happyReduce_98 = happySpecReduce_1 39# happyReduction_98
happyReduction_98 happy_x_1
	 =  case happyOut36 happy_x_1 of { happy_var_1 -> 
	happyIn46
		 ((:[]) happy_var_1
	)}

happyReduce_99 = happySpecReduce_3 39# happyReduction_99
happyReduction_99 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut36 happy_x_1 of { happy_var_1 -> 
	case happyOut46 happy_x_3 of { happy_var_3 -> 
	happyIn46
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_100 = happySpecReduce_1 40# happyReduction_100
happyReduction_100 happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	happyIn47
		 ((:[]) happy_var_1
	)}

happyReduce_101 = happySpecReduce_3 40# happyReduction_101
happyReduction_101 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut47 happy_x_3 of { happy_var_3 -> 
	happyIn47
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_102 = happySpecReduce_3 41# happyReduction_102
happyReduction_102 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut47 happy_x_1 of { happy_var_1 -> 
	case happyOut54 happy_x_3 of { happy_var_3 -> 
	happyIn48
		 (LDDecl happy_var_1 happy_var_3
	)}}

happyReduce_103 = happySpecReduce_3 41# happyReduction_103
happyReduction_103 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut47 happy_x_1 of { happy_var_1 -> 
	case happyOut54 happy_x_3 of { happy_var_3 -> 
	happyIn48
		 (LDDef happy_var_1 happy_var_3
	)}}

happyReduce_104 = happyReduce 5# 41# happyReduction_104
happyReduction_104 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut47 happy_x_1 of { happy_var_1 -> 
	case happyOut54 happy_x_3 of { happy_var_3 -> 
	case happyOut54 happy_x_5 of { happy_var_5 -> 
	happyIn48
		 (LDFull happy_var_1 happy_var_3 happy_var_5
	) `HappyStk` happyRest}}}

happyReduce_105 = happySpecReduce_0 42# happyReduction_105
happyReduction_105  =  happyIn49
		 ([]
	)

happyReduce_106 = happySpecReduce_1 42# happyReduction_106
happyReduction_106 happy_x_1
	 =  case happyOut48 happy_x_1 of { happy_var_1 -> 
	happyIn49
		 ((:[]) happy_var_1
	)}

happyReduce_107 = happySpecReduce_3 42# happyReduction_107
happyReduction_107 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut48 happy_x_1 of { happy_var_1 -> 
	case happyOut49 happy_x_3 of { happy_var_3 -> 
	happyIn49
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_108 = happySpecReduce_1 43# happyReduction_108
happyReduction_108 happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	happyIn50
		 (EIdent happy_var_1
	)}

happyReduce_109 = happySpecReduce_3 43# happyReduction_109
happyReduction_109 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_2 of { happy_var_2 -> 
	happyIn50
		 (EConstr happy_var_2
	)}

happyReduce_110 = happySpecReduce_3 43# happyReduction_110
happyReduction_110 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_2 of { happy_var_2 -> 
	happyIn50
		 (ECons happy_var_2
	)}

happyReduce_111 = happySpecReduce_1 43# happyReduction_111
happyReduction_111 happy_x_1
	 =  case happyOut60 happy_x_1 of { happy_var_1 -> 
	happyIn50
		 (ESort happy_var_1
	)}

happyReduce_112 = happySpecReduce_1 43# happyReduction_112
happyReduction_112 happy_x_1
	 =  case happyOut8 happy_x_1 of { happy_var_1 -> 
	happyIn50
		 (EString happy_var_1
	)}

happyReduce_113 = happySpecReduce_1 43# happyReduction_113
happyReduction_113 happy_x_1
	 =  case happyOut9 happy_x_1 of { happy_var_1 -> 
	happyIn50
		 (EInt happy_var_1
	)}

happyReduce_114 = happySpecReduce_1 43# happyReduction_114
happyReduction_114 happy_x_1
	 =  happyIn50
		 (EMeta
	)

happyReduce_115 = happySpecReduce_2 43# happyReduction_115
happyReduction_115 happy_x_2
	happy_x_1
	 =  happyIn50
		 (EEmpty
	)

happyReduce_116 = happySpecReduce_3 43# happyReduction_116
happyReduction_116 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut8 happy_x_2 of { happy_var_2 -> 
	happyIn50
		 (EStrings happy_var_2
	)}

happyReduce_117 = happySpecReduce_3 43# happyReduction_117
happyReduction_117 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut49 happy_x_2 of { happy_var_2 -> 
	happyIn50
		 (ERecord happy_var_2
	)}

happyReduce_118 = happySpecReduce_3 43# happyReduction_118
happyReduction_118 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut70 happy_x_2 of { happy_var_2 -> 
	happyIn50
		 (ETuple happy_var_2
	)}

happyReduce_119 = happyReduce 4# 43# happyReduction_119
happyReduction_119 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut7 happy_x_3 of { happy_var_3 -> 
	happyIn50
		 (EIndir happy_var_3
	) `HappyStk` happyRest}

happyReduce_120 = happyReduce 5# 43# happyReduction_120
happyReduction_120 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut54 happy_x_2 of { happy_var_2 -> 
	case happyOut54 happy_x_4 of { happy_var_4 -> 
	happyIn50
		 (ETyped happy_var_2 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_121 = happySpecReduce_3 43# happyReduction_121
happyReduction_121 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut54 happy_x_2 of { happy_var_2 -> 
	happyIn50
		 (happy_var_2
	)}

happyReduce_122 = happySpecReduce_1 43# happyReduction_122
happyReduction_122 happy_x_1
	 =  case happyOut10 happy_x_1 of { happy_var_1 -> 
	happyIn50
		 (ELString happy_var_1
	)}

happyReduce_123 = happySpecReduce_3 44# happyReduction_123
happyReduction_123 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut51 happy_x_1 of { happy_var_1 -> 
	case happyOut59 happy_x_3 of { happy_var_3 -> 
	happyIn51
		 (EProj happy_var_1 happy_var_3
	)}}

happyReduce_124 = happyReduce 5# 44# happyReduction_124
happyReduction_124 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut7 happy_x_2 of { happy_var_2 -> 
	case happyOut7 happy_x_4 of { happy_var_4 -> 
	happyIn51
		 (EQConstr happy_var_2 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_125 = happyReduce 5# 44# happyReduction_125
happyReduction_125 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut7 happy_x_2 of { happy_var_2 -> 
	case happyOut7 happy_x_4 of { happy_var_4 -> 
	happyIn51
		 (EQCons happy_var_2 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_126 = happySpecReduce_1 44# happyReduction_126
happyReduction_126 happy_x_1
	 =  case happyOut50 happy_x_1 of { happy_var_1 -> 
	happyIn51
		 (happy_var_1
	)}

happyReduce_127 = happySpecReduce_2 45# happyReduction_127
happyReduction_127 happy_x_2
	happy_x_1
	 =  case happyOut52 happy_x_1 of { happy_var_1 -> 
	case happyOut51 happy_x_2 of { happy_var_2 -> 
	happyIn52
		 (EApp happy_var_1 happy_var_2
	)}}

happyReduce_128 = happyReduce 4# 45# happyReduction_128
happyReduction_128 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut73 happy_x_3 of { happy_var_3 -> 
	happyIn52
		 (ETable happy_var_3
	) `HappyStk` happyRest}

happyReduce_129 = happyReduce 5# 45# happyReduction_129
happyReduction_129 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut50 happy_x_2 of { happy_var_2 -> 
	case happyOut73 happy_x_4 of { happy_var_4 -> 
	happyIn52
		 (ETTable happy_var_2 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_130 = happyReduce 6# 45# happyReduction_130
happyReduction_130 (happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut54 happy_x_2 of { happy_var_2 -> 
	case happyOut73 happy_x_5 of { happy_var_5 -> 
	happyIn52
		 (ECase happy_var_2 happy_var_5
	) `HappyStk` happyRest}}

happyReduce_131 = happyReduce 4# 45# happyReduction_131
happyReduction_131 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut55 happy_x_3 of { happy_var_3 -> 
	happyIn52
		 (EVariants happy_var_3
	) `HappyStk` happyRest}

happyReduce_132 = happyReduce 6# 45# happyReduction_132
happyReduction_132 (happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut54 happy_x_3 of { happy_var_3 -> 
	case happyOut77 happy_x_5 of { happy_var_5 -> 
	happyIn52
		 (EPre happy_var_3 happy_var_5
	) `HappyStk` happyRest}}

happyReduce_133 = happyReduce 4# 45# happyReduction_133
happyReduction_133 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut55 happy_x_3 of { happy_var_3 -> 
	happyIn52
		 (EStrs happy_var_3
	) `HappyStk` happyRest}

happyReduce_134 = happySpecReduce_3 45# happyReduction_134
happyReduction_134 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut50 happy_x_3 of { happy_var_3 -> 
	happyIn52
		 (EConAt happy_var_1 happy_var_3
	)}}

happyReduce_135 = happySpecReduce_1 45# happyReduction_135
happyReduction_135 happy_x_1
	 =  case happyOut51 happy_x_1 of { happy_var_1 -> 
	happyIn52
		 (happy_var_1
	)}

happyReduce_136 = happySpecReduce_2 45# happyReduction_136
happyReduction_136 happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_2 of { happy_var_2 -> 
	happyIn52
		 (ELin happy_var_2
	)}

happyReduce_137 = happySpecReduce_3 46# happyReduction_137
happyReduction_137 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut53 happy_x_1 of { happy_var_1 -> 
	case happyOut52 happy_x_3 of { happy_var_3 -> 
	happyIn53
		 (ESelect happy_var_1 happy_var_3
	)}}

happyReduce_138 = happySpecReduce_3 46# happyReduction_138
happyReduction_138 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut53 happy_x_1 of { happy_var_1 -> 
	case happyOut52 happy_x_3 of { happy_var_3 -> 
	happyIn53
		 (ETupTyp happy_var_1 happy_var_3
	)}}

happyReduce_139 = happySpecReduce_3 46# happyReduction_139
happyReduction_139 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut53 happy_x_1 of { happy_var_1 -> 
	case happyOut52 happy_x_3 of { happy_var_3 -> 
	happyIn53
		 (EExtend happy_var_1 happy_var_3
	)}}

happyReduce_140 = happySpecReduce_1 46# happyReduction_140
happyReduction_140 happy_x_1
	 =  case happyOut52 happy_x_1 of { happy_var_1 -> 
	happyIn53
		 (happy_var_1
	)}

happyReduce_141 = happyReduce 4# 47# happyReduction_141
happyReduction_141 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut66 happy_x_2 of { happy_var_2 -> 
	case happyOut54 happy_x_4 of { happy_var_4 -> 
	happyIn54
		 (EAbstr happy_var_2 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_142 = happyReduce 5# 47# happyReduction_142
happyReduction_142 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut66 happy_x_3 of { happy_var_3 -> 
	case happyOut54 happy_x_5 of { happy_var_5 -> 
	happyIn54
		 (ECTable happy_var_3 happy_var_5
	) `HappyStk` happyRest}}

happyReduce_143 = happySpecReduce_3 47# happyReduction_143
happyReduction_143 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut67 happy_x_1 of { happy_var_1 -> 
	case happyOut54 happy_x_3 of { happy_var_3 -> 
	happyIn54
		 (EProd happy_var_1 happy_var_3
	)}}

happyReduce_144 = happySpecReduce_3 47# happyReduction_144
happyReduction_144 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut53 happy_x_1 of { happy_var_1 -> 
	case happyOut54 happy_x_3 of { happy_var_3 -> 
	happyIn54
		 (ETType happy_var_1 happy_var_3
	)}}

happyReduce_145 = happySpecReduce_3 47# happyReduction_145
happyReduction_145 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut53 happy_x_1 of { happy_var_1 -> 
	case happyOut54 happy_x_3 of { happy_var_3 -> 
	happyIn54
		 (EConcat happy_var_1 happy_var_3
	)}}

happyReduce_146 = happySpecReduce_3 47# happyReduction_146
happyReduction_146 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut53 happy_x_1 of { happy_var_1 -> 
	case happyOut54 happy_x_3 of { happy_var_3 -> 
	happyIn54
		 (EGlue happy_var_1 happy_var_3
	)}}

happyReduce_147 = happyReduce 6# 47# happyReduction_147
happyReduction_147 (happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut49 happy_x_3 of { happy_var_3 -> 
	case happyOut54 happy_x_6 of { happy_var_6 -> 
	happyIn54
		 (ELet happy_var_3 happy_var_6
	) `HappyStk` happyRest}}

happyReduce_148 = happyReduce 4# 47# happyReduction_148
happyReduction_148 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut49 happy_x_2 of { happy_var_2 -> 
	case happyOut54 happy_x_4 of { happy_var_4 -> 
	happyIn54
		 (ELetb happy_var_2 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_149 = happyReduce 5# 47# happyReduction_149
happyReduction_149 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut53 happy_x_1 of { happy_var_1 -> 
	case happyOut49 happy_x_4 of { happy_var_4 -> 
	happyIn54
		 (EWhere happy_var_1 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_150 = happyReduce 4# 47# happyReduction_150
happyReduction_150 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut75 happy_x_3 of { happy_var_3 -> 
	happyIn54
		 (EEqs happy_var_3
	) `HappyStk` happyRest}

happyReduce_151 = happySpecReduce_1 47# happyReduction_151
happyReduction_151 happy_x_1
	 =  case happyOut53 happy_x_1 of { happy_var_1 -> 
	happyIn54
		 (happy_var_1
	)}

happyReduce_152 = happySpecReduce_0 48# happyReduction_152
happyReduction_152  =  happyIn55
		 ([]
	)

happyReduce_153 = happySpecReduce_1 48# happyReduction_153
happyReduction_153 happy_x_1
	 =  case happyOut54 happy_x_1 of { happy_var_1 -> 
	happyIn55
		 ((:[]) happy_var_1
	)}

happyReduce_154 = happySpecReduce_3 48# happyReduction_154
happyReduction_154 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut54 happy_x_1 of { happy_var_1 -> 
	case happyOut55 happy_x_3 of { happy_var_3 -> 
	happyIn55
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_155 = happySpecReduce_1 49# happyReduction_155
happyReduction_155 happy_x_1
	 =  happyIn56
		 (PW
	)

happyReduce_156 = happySpecReduce_1 49# happyReduction_156
happyReduction_156 happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	happyIn56
		 (PV happy_var_1
	)}

happyReduce_157 = happySpecReduce_3 49# happyReduction_157
happyReduction_157 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_2 of { happy_var_2 -> 
	happyIn56
		 (PCon happy_var_2
	)}

happyReduce_158 = happySpecReduce_3 49# happyReduction_158
happyReduction_158 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut7 happy_x_3 of { happy_var_3 -> 
	happyIn56
		 (PQ happy_var_1 happy_var_3
	)}}

happyReduce_159 = happySpecReduce_1 49# happyReduction_159
happyReduction_159 happy_x_1
	 =  case happyOut9 happy_x_1 of { happy_var_1 -> 
	happyIn56
		 (PInt happy_var_1
	)}

happyReduce_160 = happySpecReduce_1 49# happyReduction_160
happyReduction_160 happy_x_1
	 =  case happyOut8 happy_x_1 of { happy_var_1 -> 
	happyIn56
		 (PStr happy_var_1
	)}

happyReduce_161 = happySpecReduce_3 49# happyReduction_161
happyReduction_161 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut61 happy_x_2 of { happy_var_2 -> 
	happyIn56
		 (PR happy_var_2
	)}

happyReduce_162 = happySpecReduce_3 49# happyReduction_162
happyReduction_162 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut71 happy_x_2 of { happy_var_2 -> 
	happyIn56
		 (PTup happy_var_2
	)}

happyReduce_163 = happySpecReduce_3 49# happyReduction_163
happyReduction_163 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut57 happy_x_2 of { happy_var_2 -> 
	happyIn56
		 (happy_var_2
	)}

happyReduce_164 = happySpecReduce_2 50# happyReduction_164
happyReduction_164 happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut63 happy_x_2 of { happy_var_2 -> 
	happyIn57
		 (PC happy_var_1 happy_var_2
	)}}

happyReduce_165 = happyReduce 4# 50# happyReduction_165
happyReduction_165 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut7 happy_x_3 of { happy_var_3 -> 
	case happyOut63 happy_x_4 of { happy_var_4 -> 
	happyIn57
		 (PQC happy_var_1 happy_var_3 happy_var_4
	) `HappyStk` happyRest}}}

happyReduce_166 = happySpecReduce_1 50# happyReduction_166
happyReduction_166 happy_x_1
	 =  case happyOut56 happy_x_1 of { happy_var_1 -> 
	happyIn57
		 (happy_var_1
	)}

happyReduce_167 = happySpecReduce_3 51# happyReduction_167
happyReduction_167 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut47 happy_x_1 of { happy_var_1 -> 
	case happyOut57 happy_x_3 of { happy_var_3 -> 
	happyIn58
		 (PA happy_var_1 happy_var_3
	)}}

happyReduce_168 = happySpecReduce_1 52# happyReduction_168
happyReduction_168 happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	happyIn59
		 (LIdent happy_var_1
	)}

happyReduce_169 = happySpecReduce_2 52# happyReduction_169
happyReduction_169 happy_x_2
	happy_x_1
	 =  case happyOut9 happy_x_2 of { happy_var_2 -> 
	happyIn59
		 (LVar happy_var_2
	)}

happyReduce_170 = happySpecReduce_1 53# happyReduction_170
happyReduction_170 happy_x_1
	 =  happyIn60
		 (Sort_Type
	)

happyReduce_171 = happySpecReduce_1 53# happyReduction_171
happyReduction_171 happy_x_1
	 =  happyIn60
		 (Sort_PType
	)

happyReduce_172 = happySpecReduce_1 53# happyReduction_172
happyReduction_172 happy_x_1
	 =  happyIn60
		 (Sort_Tok
	)

happyReduce_173 = happySpecReduce_1 53# happyReduction_173
happyReduction_173 happy_x_1
	 =  happyIn60
		 (Sort_Str
	)

happyReduce_174 = happySpecReduce_1 53# happyReduction_174
happyReduction_174 happy_x_1
	 =  happyIn60
		 (Sort_Strs
	)

happyReduce_175 = happySpecReduce_0 54# happyReduction_175
happyReduction_175  =  happyIn61
		 ([]
	)

happyReduce_176 = happySpecReduce_1 54# happyReduction_176
happyReduction_176 happy_x_1
	 =  case happyOut58 happy_x_1 of { happy_var_1 -> 
	happyIn61
		 ((:[]) happy_var_1
	)}

happyReduce_177 = happySpecReduce_3 54# happyReduction_177
happyReduction_177 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut58 happy_x_1 of { happy_var_1 -> 
	case happyOut61 happy_x_3 of { happy_var_3 -> 
	happyIn61
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_178 = happySpecReduce_1 55# happyReduction_178
happyReduction_178 happy_x_1
	 =  case happyOut57 happy_x_1 of { happy_var_1 -> 
	happyIn62
		 (AltP happy_var_1
	)}

happyReduce_179 = happySpecReduce_1 56# happyReduction_179
happyReduction_179 happy_x_1
	 =  case happyOut56 happy_x_1 of { happy_var_1 -> 
	happyIn63
		 ((:[]) happy_var_1
	)}

happyReduce_180 = happySpecReduce_2 56# happyReduction_180
happyReduction_180 happy_x_2
	happy_x_1
	 =  case happyOut56 happy_x_1 of { happy_var_1 -> 
	case happyOut63 happy_x_2 of { happy_var_2 -> 
	happyIn63
		 ((:) happy_var_1 happy_var_2
	)}}

happyReduce_181 = happySpecReduce_1 57# happyReduction_181
happyReduction_181 happy_x_1
	 =  case happyOut62 happy_x_1 of { happy_var_1 -> 
	happyIn64
		 ((:[]) happy_var_1
	)}

happyReduce_182 = happySpecReduce_3 57# happyReduction_182
happyReduction_182 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut62 happy_x_1 of { happy_var_1 -> 
	case happyOut64 happy_x_3 of { happy_var_3 -> 
	happyIn64
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_183 = happySpecReduce_1 58# happyReduction_183
happyReduction_183 happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	happyIn65
		 (BIdent happy_var_1
	)}

happyReduce_184 = happySpecReduce_1 58# happyReduction_184
happyReduction_184 happy_x_1
	 =  happyIn65
		 (BWild
	)

happyReduce_185 = happySpecReduce_0 59# happyReduction_185
happyReduction_185  =  happyIn66
		 ([]
	)

happyReduce_186 = happySpecReduce_1 59# happyReduction_186
happyReduction_186 happy_x_1
	 =  case happyOut65 happy_x_1 of { happy_var_1 -> 
	happyIn66
		 ((:[]) happy_var_1
	)}

happyReduce_187 = happySpecReduce_3 59# happyReduction_187
happyReduction_187 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut65 happy_x_1 of { happy_var_1 -> 
	case happyOut66 happy_x_3 of { happy_var_3 -> 
	happyIn66
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_188 = happyReduce 5# 60# happyReduction_188
happyReduction_188 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut66 happy_x_2 of { happy_var_2 -> 
	case happyOut54 happy_x_4 of { happy_var_4 -> 
	happyIn67
		 (DDec happy_var_2 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_189 = happySpecReduce_1 60# happyReduction_189
happyReduction_189 happy_x_1
	 =  case happyOut52 happy_x_1 of { happy_var_1 -> 
	happyIn67
		 (DExp happy_var_1
	)}

happyReduce_190 = happySpecReduce_1 61# happyReduction_190
happyReduction_190 happy_x_1
	 =  case happyOut54 happy_x_1 of { happy_var_1 -> 
	happyIn68
		 (TComp happy_var_1
	)}

happyReduce_191 = happySpecReduce_1 62# happyReduction_191
happyReduction_191 happy_x_1
	 =  case happyOut57 happy_x_1 of { happy_var_1 -> 
	happyIn69
		 (PTComp happy_var_1
	)}

happyReduce_192 = happySpecReduce_0 63# happyReduction_192
happyReduction_192  =  happyIn70
		 ([]
	)

happyReduce_193 = happySpecReduce_1 63# happyReduction_193
happyReduction_193 happy_x_1
	 =  case happyOut68 happy_x_1 of { happy_var_1 -> 
	happyIn70
		 ((:[]) happy_var_1
	)}

happyReduce_194 = happySpecReduce_3 63# happyReduction_194
happyReduction_194 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut68 happy_x_1 of { happy_var_1 -> 
	case happyOut70 happy_x_3 of { happy_var_3 -> 
	happyIn70
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_195 = happySpecReduce_0 64# happyReduction_195
happyReduction_195  =  happyIn71
		 ([]
	)

happyReduce_196 = happySpecReduce_1 64# happyReduction_196
happyReduction_196 happy_x_1
	 =  case happyOut69 happy_x_1 of { happy_var_1 -> 
	happyIn71
		 ((:[]) happy_var_1
	)}

happyReduce_197 = happySpecReduce_3 64# happyReduction_197
happyReduction_197 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut69 happy_x_1 of { happy_var_1 -> 
	case happyOut71 happy_x_3 of { happy_var_3 -> 
	happyIn71
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_198 = happySpecReduce_3 65# happyReduction_198
happyReduction_198 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut64 happy_x_1 of { happy_var_1 -> 
	case happyOut54 happy_x_3 of { happy_var_3 -> 
	happyIn72
		 (Case happy_var_1 happy_var_3
	)}}

happyReduce_199 = happySpecReduce_1 66# happyReduction_199
happyReduction_199 happy_x_1
	 =  case happyOut72 happy_x_1 of { happy_var_1 -> 
	happyIn73
		 ((:[]) happy_var_1
	)}

happyReduce_200 = happySpecReduce_3 66# happyReduction_200
happyReduction_200 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut72 happy_x_1 of { happy_var_1 -> 
	case happyOut73 happy_x_3 of { happy_var_3 -> 
	happyIn73
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_201 = happySpecReduce_3 67# happyReduction_201
happyReduction_201 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut63 happy_x_1 of { happy_var_1 -> 
	case happyOut54 happy_x_3 of { happy_var_3 -> 
	happyIn74
		 (Equ happy_var_1 happy_var_3
	)}}

happyReduce_202 = happySpecReduce_0 68# happyReduction_202
happyReduction_202  =  happyIn75
		 ([]
	)

happyReduce_203 = happySpecReduce_1 68# happyReduction_203
happyReduction_203 happy_x_1
	 =  case happyOut74 happy_x_1 of { happy_var_1 -> 
	happyIn75
		 ((:[]) happy_var_1
	)}

happyReduce_204 = happySpecReduce_3 68# happyReduction_204
happyReduction_204 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut74 happy_x_1 of { happy_var_1 -> 
	case happyOut75 happy_x_3 of { happy_var_3 -> 
	happyIn75
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_205 = happySpecReduce_3 69# happyReduction_205
happyReduction_205 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut54 happy_x_1 of { happy_var_1 -> 
	case happyOut54 happy_x_3 of { happy_var_3 -> 
	happyIn76
		 (Alt happy_var_1 happy_var_3
	)}}

happyReduce_206 = happySpecReduce_0 70# happyReduction_206
happyReduction_206  =  happyIn77
		 ([]
	)

happyReduce_207 = happySpecReduce_1 70# happyReduction_207
happyReduction_207 happy_x_1
	 =  case happyOut76 happy_x_1 of { happy_var_1 -> 
	happyIn77
		 ((:[]) happy_var_1
	)}

happyReduce_208 = happySpecReduce_3 70# happyReduction_208
happyReduction_208 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut76 happy_x_1 of { happy_var_1 -> 
	case happyOut77 happy_x_3 of { happy_var_3 -> 
	happyIn77
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_209 = happyReduce 5# 71# happyReduction_209
happyReduction_209 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut66 happy_x_2 of { happy_var_2 -> 
	case happyOut54 happy_x_4 of { happy_var_4 -> 
	happyIn78
		 (DDDec happy_var_2 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_210 = happySpecReduce_1 71# happyReduction_210
happyReduction_210 happy_x_1
	 =  case happyOut50 happy_x_1 of { happy_var_1 -> 
	happyIn78
		 (DDExp happy_var_1
	)}

happyReduce_211 = happySpecReduce_0 72# happyReduction_211
happyReduction_211  =  happyIn79
		 ([]
	)

happyReduce_212 = happySpecReduce_2 72# happyReduction_212
happyReduction_212 happy_x_2
	happy_x_1
	 =  case happyOut79 happy_x_1 of { happy_var_1 -> 
	case happyOut78 happy_x_2 of { happy_var_2 -> 
	happyIn79
		 (flip (:) happy_var_1 happy_var_2
	)}}

happyReduce_213 = happySpecReduce_2 73# happyReduction_213
happyReduction_213 happy_x_2
	happy_x_1
	 =  case happyOut81 happy_x_1 of { happy_var_1 -> 
	case happyOut21 happy_x_2 of { happy_var_2 -> 
	happyIn80
		 (OldGr happy_var_1 (reverse happy_var_2)
	)}}

happyReduce_214 = happySpecReduce_0 74# happyReduction_214
happyReduction_214  =  happyIn81
		 (NoIncl
	)

happyReduce_215 = happySpecReduce_2 74# happyReduction_215
happyReduction_215 happy_x_2
	happy_x_1
	 =  case happyOut83 happy_x_2 of { happy_var_2 -> 
	happyIn81
		 (Incl happy_var_2
	)}

happyReduce_216 = happySpecReduce_1 75# happyReduction_216
happyReduction_216 happy_x_1
	 =  case happyOut8 happy_x_1 of { happy_var_1 -> 
	happyIn82
		 (FString happy_var_1
	)}

happyReduce_217 = happySpecReduce_1 75# happyReduction_217
happyReduction_217 happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	happyIn82
		 (FIdent happy_var_1
	)}

happyReduce_218 = happySpecReduce_2 75# happyReduction_218
happyReduction_218 happy_x_2
	happy_x_1
	 =  case happyOut82 happy_x_2 of { happy_var_2 -> 
	happyIn82
		 (FSlash happy_var_2
	)}

happyReduce_219 = happySpecReduce_2 75# happyReduction_219
happyReduction_219 happy_x_2
	happy_x_1
	 =  case happyOut82 happy_x_2 of { happy_var_2 -> 
	happyIn82
		 (FDot happy_var_2
	)}

happyReduce_220 = happySpecReduce_2 75# happyReduction_220
happyReduction_220 happy_x_2
	happy_x_1
	 =  case happyOut82 happy_x_2 of { happy_var_2 -> 
	happyIn82
		 (FMinus happy_var_2
	)}

happyReduce_221 = happySpecReduce_2 75# happyReduction_221
happyReduction_221 happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut82 happy_x_2 of { happy_var_2 -> 
	happyIn82
		 (FAddId happy_var_1 happy_var_2
	)}}

happyReduce_222 = happySpecReduce_2 76# happyReduction_222
happyReduction_222 happy_x_2
	happy_x_1
	 =  case happyOut82 happy_x_1 of { happy_var_1 -> 
	happyIn83
		 ((:[]) happy_var_1
	)}

happyReduce_223 = happySpecReduce_3 76# happyReduction_223
happyReduction_223 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut82 happy_x_1 of { happy_var_1 -> 
	case happyOut83 happy_x_3 of { happy_var_3 -> 
	happyIn83
		 ((:) happy_var_1 happy_var_3
	)}}

happyNewToken action sts stk [] =
	happyDoAction 76# (error "reading EOF!") action sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = happyDoAction i tk action sts stk tks in
	case tk of {
	PT _ (TS ";") -> cont 1#;
	PT _ (TS "=") -> cont 2#;
	PT _ (TS "{") -> cont 3#;
	PT _ (TS "}") -> cont 4#;
	PT _ (TS "(") -> cont 5#;
	PT _ (TS ")") -> cont 6#;
	PT _ (TS ":") -> cont 7#;
	PT _ (TS "->") -> cont 8#;
	PT _ (TS "**") -> cont 9#;
	PT _ (TS ",") -> cont 10#;
	PT _ (TS ".") -> cont 11#;
	PT _ (TS "|") -> cont 12#;
	PT _ (TS "[") -> cont 13#;
	PT _ (TS "]") -> cont 14#;
	PT _ (TS "?") -> cont 15#;
	PT _ (TS "<") -> cont 16#;
	PT _ (TS ">") -> cont 17#;
	PT _ (TS "@") -> cont 18#;
	PT _ (TS "!") -> cont 19#;
	PT _ (TS "*") -> cont 20#;
	PT _ (TS "\\") -> cont 21#;
	PT _ (TS "=>") -> cont 22#;
	PT _ (TS "++") -> cont 23#;
	PT _ (TS "+") -> cont 24#;
	PT _ (TS "_") -> cont 25#;
	PT _ (TS "$") -> cont 26#;
	PT _ (TS "/") -> cont 27#;
	PT _ (TS "-") -> cont 28#;
	PT _ (TS "Lin") -> cont 29#;
	PT _ (TS "PType") -> cont 30#;
	PT _ (TS "Str") -> cont 31#;
	PT _ (TS "Strs") -> cont 32#;
	PT _ (TS "Tok") -> cont 33#;
	PT _ (TS "Type") -> cont 34#;
	PT _ (TS "abstract") -> cont 35#;
	PT _ (TS "case") -> cont 36#;
	PT _ (TS "cat") -> cont 37#;
	PT _ (TS "concrete") -> cont 38#;
	PT _ (TS "data") -> cont 39#;
	PT _ (TS "def") -> cont 40#;
	PT _ (TS "flags") -> cont 41#;
	PT _ (TS "fn") -> cont 42#;
	PT _ (TS "fun") -> cont 43#;
	PT _ (TS "grammar") -> cont 44#;
	PT _ (TS "in") -> cont 45#;
	PT _ (TS "include") -> cont 46#;
	PT _ (TS "incomplete") -> cont 47#;
	PT _ (TS "instance") -> cont 48#;
	PT _ (TS "interface") -> cont 49#;
	PT _ (TS "let") -> cont 50#;
	PT _ (TS "lin") -> cont 51#;
	PT _ (TS "lincat") -> cont 52#;
	PT _ (TS "lindef") -> cont 53#;
	PT _ (TS "lintype") -> cont 54#;
	PT _ (TS "of") -> cont 55#;
	PT _ (TS "open") -> cont 56#;
	PT _ (TS "oper") -> cont 57#;
	PT _ (TS "out") -> cont 58#;
	PT _ (TS "param") -> cont 59#;
	PT _ (TS "pattern") -> cont 60#;
	PT _ (TS "pre") -> cont 61#;
	PT _ (TS "printname") -> cont 62#;
	PT _ (TS "resource") -> cont 63#;
	PT _ (TS "reuse") -> cont 64#;
	PT _ (TS "strs") -> cont 65#;
	PT _ (TS "table") -> cont 66#;
	PT _ (TS "transfer") -> cont 67#;
	PT _ (TS "variants") -> cont 68#;
	PT _ (TS "where") -> cont 69#;
	PT _ (TS "with") -> cont 70#;
	PT _ (TV happy_dollar_dollar) -> cont 71#;
	PT _ (TL happy_dollar_dollar) -> cont 72#;
	PT _ (TI happy_dollar_dollar) -> cont 73#;
	PT _ (T_LString happy_dollar_dollar) -> cont 74#;
	_ -> cont 75#;
	_ -> happyError tks
	}

happyThen :: Err a -> (a -> Err b) -> Err b
happyThen = (thenM)
happyReturn :: a -> Err a
happyReturn = (returnM)
happyThen1 m k tks = (thenM) m (\a -> k a tks)
happyReturn1 = \a tks -> (returnM) a

pGrammar tks = happyThen (happyParse 0# tks) (\x -> happyReturn (happyOut11 x))

pModDef tks = happyThen (happyParse 1# tks) (\x -> happyReturn (happyOut13 x))

pOldGrammar tks = happyThen (happyParse 2# tks) (\x -> happyReturn (happyOut80 x))

pExp tks = happyThen (happyParse 3# tks) (\x -> happyReturn (happyOut54 x))

happySeq = happyDontSeq

returnM :: a -> Err a
returnM = return

thenM :: Err a -> (a -> Err b) -> Err b
thenM = (>>=)

happyError :: [Token] -> Err a
happyError ts =
  Bad $ "syntax error at " ++ tokenPos ts ++ if null ts then [] else (" before " ++ unwords (map prToken (take 4 ts)))

myLexer = tokens
{-# LINE 1 "GenericTemplate.hs" #-}
-- $Id: ParGF.hs,v 1.1 2003/11/11 16:44:26 aarne Exp $













{-# LINE 27 "GenericTemplate.hs" #-}



data Happy_IntList = HappyCons Int# Happy_IntList






































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

happyAccept j tk st sts (HappyStk ans _) = (happyTcHack j 
				                  (happyTcHack st))
					   (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action



happyDoAction i tk st
	= {- nothing -}


	  case action of
		0#		  -> {- nothing -}
				     happyFail i tk st
		-1# 	  -> {- nothing -}
				     happyAccept i tk st
		n | (n <# (0# :: Int#)) -> {- nothing -}

				     (happyReduceArr ! rule) i tk st
				     where rule = (I# ((negateInt# ((n +# (1# :: Int#))))))
		n		  -> {- nothing -}


				     happyShift new_state i tk st
				     where new_state = (n -# (1# :: Int#))
   where off    = indexShortOffAddr happyActOffsets st
	 off_i  = (off +# i)
	 check  = if (off_i >=# (0# :: Int#))
			then (indexShortOffAddr happyCheck off_i ==#  i)
			else False
 	 action | check     = indexShortOffAddr happyTable off_i
		| otherwise = indexShortOffAddr happyDefActions st











indexShortOffAddr (HappyA# arr) off =
#if __GLASGOW_HASKELL__ > 500
	narrow16Int# i
#elif __GLASGOW_HASKELL__ == 500
	intToInt16# i
#else
	(i `iShiftL#` 16#) `iShiftRA#` 16#
#endif
  where
#if __GLASGOW_HASKELL__ >= 503
	i = word2Int# ((high `uncheckedShiftL#` 8#) `or#` low)
#else
	i = word2Int# ((high `shiftL#` 8#) `or#` low)
#endif
	high = int2Word# (ord# (indexCharOffAddr# arr (off' +# 1#)))
	low  = int2Word# (ord# (indexCharOffAddr# arr off'))
	off' = off *# 2#





data HappyAddr = HappyA# Addr#




-----------------------------------------------------------------------------
-- HappyState data type (not arrays)

{-# LINE 165 "GenericTemplate.hs" #-}


-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state 0# tk st sts stk@(x `HappyStk` _) =
     let i = (case unsafeCoerce# x of { (I# (i)) -> i }) in
--     trace "shifting the error token" $
     happyDoAction i tk new_state (HappyCons (st) (sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state (HappyCons (st) (sts)) ((happyInTok (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happySpecReduce_0 nt fn j tk st@((action)) sts stk
     = happyGoto nt j tk st (HappyCons (st) (sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@((HappyCons (st@(action)) (_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happySpecReduce_2 nt fn j tk _ (HappyCons (_) (sts@((HappyCons (st@(action)) (_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happySpecReduce_3 nt fn j tk _ (HappyCons (_) ((HappyCons (_) (sts@((HappyCons (st@(action)) (_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k -# (1# :: Int#)) sts of
	 sts1@((HappyCons (st1@(action)) (_))) ->
        	let r = fn stk in  -- it doesn't hurt to always seq here...
       		happyDoSeq r (happyGoto nt j tk st1 sts1 r)

happyMonadReduce k nt fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
        happyThen1 (fn stk) (\r -> happyGoto nt j tk st1 sts1 (r `HappyStk` drop_stk))
       where sts1@((HappyCons (st1@(action)) (_))) = happyDrop k (HappyCons (st) (sts))
             drop_stk = happyDropStk k stk

happyDrop 0# l = l
happyDrop n (HappyCons (_) (t)) = happyDrop (n -# (1# :: Int#)) t

happyDropStk 0# l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n -# (1#::Int#)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction


happyGoto nt j tk st = 
   {- nothing -}
   happyDoAction j tk new_state
   where off    = indexShortOffAddr happyGotoOffsets st
	 off_i  = (off +# nt)
 	 new_state = indexShortOffAddr happyTable off_i




-----------------------------------------------------------------------------
-- Error recovery (0# is the error token)

-- parse error if we are in recovery and we fail again
happyFail  0# tk old_st _ stk =
--	trace "failing" $ 
    	happyError


{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  0# tk old_st (HappyCons ((action)) (sts)) 
						(saved_tok `HappyStk` _ `HappyStk` stk) =
--	trace ("discarding state, depth " ++ show (length stk))  $
	happyDoAction 0# tk action sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail  i tk (action) sts stk =
--      trace "entering error recovery" $
	happyDoAction 0# tk action sts ( (unsafeCoerce# (I# (i))) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions


happyTcHack :: Int# -> a -> a
happyTcHack x y = y
{-# INLINE happyTcHack #-}


-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--	happySeq = happyDoSeq
-- otherwise it emits
-- 	happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.


{-# NOINLINE happyDoAction #-}
{-# NOINLINE happyTable #-}
{-# NOINLINE happyCheck #-}
{-# NOINLINE happyActOffsets #-}
{-# NOINLINE happyGotoOffsets #-}
{-# NOINLINE happyDefActions #-}

{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.

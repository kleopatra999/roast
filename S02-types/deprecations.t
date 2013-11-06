use v6;

use Test;

plan 23;

# currently deprecated core features

my $line;

# Any
#?niecza skip 'is DEPRECATED NYI'
#?pugs   skip 'is DEPRECATED NYI'
{
    $line = $?LINE; Any.exists("a");
    is Deprecation.report, qq:to/TEXT/.chop, 'deprecation Any.exists("a")';
Saw 1 call to deprecated code during execution.
================================================================================
Method exists (from Any) called at:
  $*PROGRAM_NAME, line $line
Please use the :exists adverb instead.
--------------------------------------------------------------------------------
TEXT

    $line = $?LINE; Any.delete("a");
    Any.delete("a");
    is Deprecation.report, qq:to/TEXT/.chop, 'deprecation for Any.delete("a")';
Saw 1 call to deprecated code during execution.
================================================================================
Method delete (from Any) called at:
  $*PROGRAM_NAME, lines $line,{$line + 1}
Please use the :delete adverb instead.
--------------------------------------------------------------------------------
TEXT

    $line = $?LINE; Any.KeySet;
    is Deprecation.report, qq:to/TEXT/.chop, 'deprecation Any.KeySet';
Saw 1 call to deprecated code during execution.
================================================================================
Method KeySet (from Any) called at:
  $*PROGRAM_NAME, line $line
Please use 'SetHash' instead.
--------------------------------------------------------------------------------
TEXT

    $line = $?LINE; Any.KeyBag;
    Any.KeyBag;
    is Deprecation.report, qq:to/TEXT/.chop, 'deprecation for Any.KeyBag';
Saw 1 call to deprecated code during execution.
================================================================================
Method KeyBag (from Any) called at:
  $*PROGRAM_NAME, lines $line,{$line + 1}
Please use 'BagHash' instead.
--------------------------------------------------------------------------------
TEXT
} #4

# Array
#?niecza skip 'is DEPRECATED NYI'
#?pugs   skip 'is DEPRECATED NYI'
{
    $line = $?LINE; [].delete(1);
    is Deprecation.report, qq:to/TEXT/.chop, 'deprecation Array.delete(1)';
Saw 1 call to deprecated code during execution.
================================================================================
Method delete (from Array) called at:
  $*PROGRAM_NAME, line $line
Please use the :delete adverb instead.
--------------------------------------------------------------------------------
TEXT
} #1

# Bag
#?niecza skip 'is DEPRECATED NYI'
#?pugs   skip 'is DEPRECATED NYI'
{
    $line = $?LINE; try Bag.new.delete("a"); # try because cannot mutate Bag
    is Deprecation.report, qq:to/TEXT/.chop, 'deprecation Bag.new.delete("a")';
Saw 1 call to deprecated code during execution.
================================================================================
Method delete (from Bag) called at:
  $*PROGRAM_NAME, line $line
Please use the :delete adverb instead.
--------------------------------------------------------------------------------
TEXT
} #1

# BagHash
#?niecza skip 'is DEPRECATED NYI'
#?pugs   skip 'is DEPRECATED NYI'
{
    $line = $?LINE; BagHash.new.delete("a");
    is Deprecation.report, qq:to/TEXT/.chop, 'depr. BagHash.new.delete("a")';
Saw 1 call to deprecated code during execution.
================================================================================
Method delete (from BagHash) called at:
  $*PROGRAM_NAME, line $line
Please use the :delete adverb instead.
--------------------------------------------------------------------------------
TEXT
} #1

# Baggy
#?niecza skip 'is DEPRECATED NYI'
#?pugs   skip 'is DEPRECATED NYI'
{
    $line = $?LINE; Bag.new.exists("a");
    Bag.new.exists("a");
    is Deprecation.report, qq:to/TEXT/.chop, 'deprecation Bag.new.exists("a")';
Saw 1 call to deprecated code during execution.
================================================================================
Method exists (from Baggy) called at:
  $*PROGRAM_NAME, lines $line,{$line + 1}
Please use the :exists adverb instead.
--------------------------------------------------------------------------------
TEXT

    $line = $?LINE; BagHash.new.exists("a");
    BagHash.new.exists("a");
    is Deprecation.report, qq:to/TEXT/.chop, 'depr. BagHash.new.exists("a")';
Saw 1 call to deprecated code during execution.
================================================================================
Method exists (from Baggy) called at:
  $*PROGRAM_NAME, lines $line,{$line + 1}
Please use the :exists adverb instead.
--------------------------------------------------------------------------------
TEXT
} #2

# Capture
#?niecza skip 'is DEPRECATED NYI'
#?pugs   skip 'is DEPRECATED NYI'
{
    $line = $?LINE; Capture.new.exists("a");
    is Deprecation.report, qq:to/TEXT/.chop, 'depr. Capture.new.exists("a")';
Saw 1 call to deprecated code during execution.
================================================================================
Method exists (from Capture) called at:
  $*PROGRAM_NAME, line $line
Please use the :exists adverb instead.
--------------------------------------------------------------------------------
TEXT
} #1

# Cool
#?niecza skip 'is DEPRECATED NYI'
#?pugs   skip 'is DEPRECATED NYI'
{
    $line = $?LINE; "a".ucfirst;
    is Deprecation.report, qq:to/TEXT/.chop, 'deprecation "a".ucfirst';
Saw 1 call to deprecated code during execution.
================================================================================
Method ucfirst (from Cool) called at:
  $*PROGRAM_NAME, line $line
Please use 'tc' instead.
--------------------------------------------------------------------------------
TEXT
} #1

# EnumMap
#?niecza skip 'is DEPRECATED NYI'
#?pugs   skip 'is DEPRECATED NYI'
{
    $line = $?LINE; EnumMap.exists;
    is Deprecation.report, qq:to/TEXT/.chop, 'deprecation EnumMap.exists';
Saw 1 call to deprecated code during execution.
================================================================================
Method exists (from EnumMap) called at:
  $*PROGRAM_NAME, line $line
Please use the :exists adverb instead.
--------------------------------------------------------------------------------
TEXT

    $line = $?LINE; EnumMap.new.exists("a");
    EnumMap.new.exists("a");
    is Deprecation.report, qq:to/TEXT/.chop, 'depr. EnumMap.new.exists("a")';
Saw 1 call to deprecated code during execution.
================================================================================
Method exists (from EnumMap) called at:
  $*PROGRAM_NAME, lines $line,{$line + 1}
Please use the :exists adverb instead.
--------------------------------------------------------------------------------
TEXT
} #2

# GLOBAL
#?niecza skip 'is DEPRECATED NYI'
#?pugs   skip 'is DEPRECATED NYI'
{

    $line = $?LINE; ucfirst("a");
    is Deprecation.report, qq:to/TEXT/.chop, 'deprecation ucfirst("a")';
Saw 1 call to deprecated code during execution.
================================================================================
Sub ucfirst (from GLOBAL) called at:
  $*PROGRAM_NAME, line $line
Please use 'tc' instead.
--------------------------------------------------------------------------------
TEXT
} #1

# Hash
#?niecza skip 'is DEPRECATED NYI'
#?pugs   skip 'is DEPRECATED NYI'
{
    $line = $?LINE; Hash.delete;
    is Deprecation.report, qq:to/TEXT/.chop, 'deprecation Hash.delete';
Saw 1 call to deprecated code during execution.
================================================================================
Method delete (from Hash) called at:
  $*PROGRAM_NAME, line $line
Please use the :delete adverb instead.
--------------------------------------------------------------------------------
TEXT

    $line = $?LINE; Hash.new.delete("a");
    Hash.new.delete("a");
    is Deprecation.report, qq:to/TEXT/.chop, 'deprecation Hash.new.delete("a")';
Saw 1 call to deprecated code during execution.
================================================================================
Method delete (from Hash) called at:
  $*PROGRAM_NAME, lines $line,{$line + 1}
Please use the :delete adverb instead.
--------------------------------------------------------------------------------
TEXT
} #2

# List
#?niecza skip 'is DEPRECATED NYI'
#?pugs   skip 'is DEPRECATED NYI'
{
    $line = $?LINE; List.new.exists(1);
    is Deprecation.report, qq:to/TEXT/.chop, 'deprecation List.new.exists(1)';
Saw 1 call to deprecated code during execution.
================================================================================
Method exists (from List) called at:
  $*PROGRAM_NAME, line $line
Please use the :exists adverb instead.
--------------------------------------------------------------------------------
TEXT
} #1

# Mix
#?niecza skip 'is DEPRECATED NYI'
#?pugs   skip 'is DEPRECATED NYI'
{
    $line = $?LINE; try Mix.new.delete("a"); # try because cannot mutate Mix
    is Deprecation.report, qq:to/TEXT/.chop, 'deprecation Mix.new.delete("a")';
Saw 1 call to deprecated code during execution.
================================================================================
Method delete (from Mix) called at:
  $*PROGRAM_NAME, line $line
Please use the :delete adverb instead.
--------------------------------------------------------------------------------
TEXT
} #1

# MixHash
#?niecza skip 'is DEPRECATED NYI'
#?pugs   skip 'is DEPRECATED NYI'
{
    $line = $?LINE; MixHash.new.delete("a");
    is Deprecation.report, qq:to/TEXT/.chop, 'depr. MixHash.new.delete("a")';
Saw 1 call to deprecated code during execution.
================================================================================
Method delete (from MixHash) called at:
  $*PROGRAM_NAME, line $line
Please use the :delete adverb instead.
--------------------------------------------------------------------------------
TEXT
} #1

# Set
#?niecza skip 'is DEPRECATED NYI'
#?pugs   skip 'is DEPRECATED NYI'
{
    $line = $?LINE; try Set.new.delete("a"); # try because cannot mutate Set
    is Deprecation.report, qq:to/TEXT/.chop, 'deprecation Set.new.delete("a")';
Saw 1 call to deprecated code during execution.
================================================================================
Method delete (from Set) called at:
  $*PROGRAM_NAME, line $line
Please use the :delete adverb instead.
--------------------------------------------------------------------------------
TEXT
} #1

# SetHash
#?niecza skip 'is DEPRECATED NYI'
#?pugs   skip 'is DEPRECATED NYI'
{
    $line = $?LINE; SetHash.new.delete("a");
    is Deprecation.report, qq:to/TEXT/.chop, 'depr. SetHash.new.delete("a")';
Saw 1 call to deprecated code during execution.
================================================================================
Method delete (from SetHash) called at:
  $*PROGRAM_NAME, line $line
Please use the :delete adverb instead.
--------------------------------------------------------------------------------
TEXT
} #1

# Setty
#?niecza skip 'is DEPRECATED NYI'
#?pugs   skip 'is DEPRECATED NYI'
{
    $line = $?LINE; Set.new.exists("a");
    Set.new.exists("a");
    is Deprecation.report, qq:to/TEXT/.chop, 'deprecation Set.new.exists("a")';
Saw 1 call to deprecated code during execution.
================================================================================
Method exists (from Setty) called at:
  $*PROGRAM_NAME, lines $line,{$line + 1}
Please use the :exists adverb instead.
--------------------------------------------------------------------------------
TEXT

    $line = $?LINE; SetHash.new.exists("a");
    SetHash.new.exists("a");
    is Deprecation.report, qq:to/TEXT/.chop, 'depr. SetHash.new.exists("a")';
Saw 1 call to deprecated code during execution.
================================================================================
Method exists (from Setty) called at:
  $*PROGRAM_NAME, lines $line,{$line + 1}
Please use the :exists adverb instead.
--------------------------------------------------------------------------------
TEXT
} #2

# vim:set ft=perl6
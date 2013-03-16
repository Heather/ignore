use v6;
use Test;

plan 3;

my $f = '.gitignore';
my $i = 'Makefile';

unlink $f if $f.IO.e;
nok $f.IO.e;

run (<perl6 bin/ignore --git>, $i);
ok $f.IO.e;

given open $f, :r {
  ok .lines[0] eq "/$i";
  .close
  }

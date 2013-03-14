Easiest way to ignore junk in your VCS folder
=============================================

``` shell
Currently supported : hg, git

TODO :
 - multiply ignore files

Usage:
  bin/ignore [--debug] [--git] [--hg] [--all] <source>
```

``` perl
sub file($f,&b,*%h) {
    given open $f, |%h {
        .&b; .close
    ...
sub ignore($ifile, $pattern) {
    my $res = find(:dir<.>, :name($ifile));
    given $res.elems {
        when 1 {
            log $res[0].fmt('found single ignore file at %s');
            if analyze( $res[0], $pattern ) {
                log 'this file is already in ignore file';
                }
            else {
                log 'adding new node to ignore file';
                file $res[0], :a, {
                    .say( $pattern );
                ...
sub MAIN($source, Bool :$debug = False, Bool :$git = False, Bool :$hg = False, Bool :$all = False) {
    ...
```

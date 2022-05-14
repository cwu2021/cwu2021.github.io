!/usr/bin/env perl
# https://www.perl.com/article/perl-and-cgi/
# https://www.perl.com/article/perl-and-cgi/#why-not-to-use-cgi
use strict;
use warnings;

print <<'END';
Status: 200
Content-type: text/html

<!doctype html>
<html> HTML Goes Here
END

#my $mytext = `bash text.sh`;
my $mytext = `curl http://your.server.ip`;
print "<h1>$mytext</h1></html>";

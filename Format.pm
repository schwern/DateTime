# $Id: Format.pm,v 1.5 2003/04/07 18:44:34 philip Exp $
# $Name:  $

package DateTime::Format;
use strict;
use warnings FATAL => 'all';
use Carp;

use Date::Format;
use Time::Format;

require Exporter;
#use AutoLoader qw(AUTOLOAD);

our @ISA = qw(Exporter);

our %EXPORT_TAGS = ( 'all' => [ qw(

) ] );

our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

our @EXPORT = qw(
  dt_format
);

our $VERSION = do { my @r = (q$Revision: 1.5 $ =~ /\d+/g); sprintf " %d." . "%02d" x $#r, @r };

sub dt_format ($$) {

  my ($dt, $mask) = @_;

  my $str = Date::Format::date_format($dt, $mask);
  $str    = Time::Format::time_format($dt, $str);

  return $str;
}

1;
__END__
=head1 NAME
    
DateTime - Routines for Manipulating Date/Time Strings
    
=head1 SYNOPSIS   
    
  use DateTime::Format
 
=head2 EXPORT

=head1 AUTHOR

Philip M. Gollucci, E<lt>philip@p6m7g8.comE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright 2003 by Philip M. Gollucci

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 ChangeLog

 $Log: Format.pm,v $
 Revision 1.5  2003/04/07 18:44:34  philip
 Add warnings in.

 Revision 1.4  2003/03/16 18:03:22  philip
 Removed # from ChangeLog sections in perldocumation so it formats correctly

 Revision 1.3  2003/03/16 17:59:24  philip
 Moved =cut to end so that ChangeLog can be part of perldoc

 Revision 1.2  2003/03/16 17:52:55  philip
 s/<gt>/E<gt>/g;
 Bug in h2xs generation doc stub

 Revision 1.1.1.1  2003/03/16 05:40:39  philip
 Imported Sources

=cut

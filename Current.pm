# $Id: Current.pm,v 1.4 2003/03/16 18:03:22 philip Exp $
# $Name:  $

package DateTime::Current;
use strict;
use warnings FATAL => 'all';
use Carp;

use Date::Current;
use Time::Current;

require Exporter;
#use AutoLoader qw(AUTOLOAD);

our @ISA = qw(Exporter);

our %EXPORT_TAGS = ( 'all' => [ qw(

) ] );

our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

our @EXPORT = qw(
  dt_get
);

our $VERSION = do { my @r = (q$Revision: 1.4 $ =~ /\d+/g); sprintf " %d." . "%02d" x $#r, @r };

sub dt_get () {

  if (wantarray) {
    return (&date_get(), &time_get());
  }
  else {
    return &date_get() . " " . &time_get();
  }
}

1;
__END__
=head1 NAME
    
DateTime::Current - Current Date/Time
    
=head1 SYNOPSIS   
    
  use DateTime::Current;
  
=head2 EXPORT

=head1 AUTHOR

Philip M. Gollucci, E<lt>philip@p6m7g8.comE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright 2003 by Philip M. Gollucci

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 ChangeLog

 $Log: Current.pm,v $
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

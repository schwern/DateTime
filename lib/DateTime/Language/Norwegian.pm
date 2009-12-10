##
## Norwegian tables
##

package DateTime::Language::Norwegian;

use strict;

use DateTime::Language;
use vars qw(@ISA @DayNames @DayAbbreviations @MonthNames @MonthAbbreviations @AMPM);
@ISA = qw(DateTime::Language);


@MonthNames = qw(Januar Februar Mars April Mai Juni
                 Juli August September Oktober November Desember);
@MonthAbbreviations = qw(Jan Feb Mar Apr Mai Jun Jul Aug Sep Okt Nov Des);
@DayNames = qw(S�ndag Mandag Tirsdag Onsdag Torsdag Fredag L�rdag S�ndag);
@DayAbbreviations = qw(S�n Man Tir Ons Tor Fre L�r S�n);

require DateTime::Language::English;
@AMPM = @DateTime::Language::English::AMPM;

1;

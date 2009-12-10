##
## Swedish tables
##

package DateTime::Language::Swedish;

use strict;

use DateTime::Language;
use vars qw(@ISA @DayNames @DayAbbreviations @MonthNames @MonthAbbreviations @AMPM);
@ISA = qw(DateTime::Language);

@MonthNames = qw(Januari Februari Mars April Maj Juni Juli
                 Augusti September Oktober November December);
@MonthAbbreviations = map { substr( $_, 0, 3 ) } @MonthNames;
@DayNames = qw(S�ndag M�ndag Tisdag Onsdag Torsdag Fredag L�rdag S�ndag);
@DayAbbreviations = map { substr( $_, 0, 3 ) } @DayNames;

require DateTime::Language::English;
@AMPM = @DateTime::Language::English::AMPM;

1;

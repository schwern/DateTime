##
## French tables, contributed by Emmanuel Bataille (bem@residents.frmug.org)
##

package DateTime::Language::French;

use DateTime::Language;
use vars qw(@ISA @DayNames @DayAbbreviations @MonthNames @MonthAbbreviations @AMPM $VERSION);
@ISA = qw(DateTime::Language);
$VERSION = "1.02";

@DayNames = qw(lundi mardi mercredi jeudi vendredi samedi dimanche);
@MonthNames = qw(janvier f�vrier mars avril mai juin 
          juillet ao�t septembre octobre novembre d�cembre);
@DayAbbreviations = map { substr($_,0,3) } @DayNames;
@MonthAbbreviations = map { substr($_,0,4) } @MonthNames; # 4 insteed of 3 'cause [juin] [juil]let
@AMPM = qw(AM PM);

1;

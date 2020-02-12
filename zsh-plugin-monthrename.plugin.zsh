#!/usr/bin/zsh
# Renames any file with a month name or abbreviation
# (February, Feb, feb) with the corresponding number
# so that it can then be renamed to an ISO formatted
# date (eg. 2020-02-12)

autoload -Uz zmv

function monthrename() {
  mmv '*[Jj]anuary*' '#1\01#3' || true
  mmv '*[Jj]an*' '#1\01#3' || true
  mmv '*[Ff]ebruary*' '#1\02#3' || true
  mmv '*[Ff]eb*' '#1\02#3' || true
  mmv '*[Mm]arch*' '#1\03#3' || true
  mmv '*[Mm]ar*' '#1\03#3' || true
  mmv '*[Aa]pril*' '#1\04#3' || true
  mmv '*[Aa]pr*' '#1\04#3' || true
  mmv '*[Mm]ay*' '#1\05#3' || true
  mmv '*[Jj]une*' '#1\06#3' || true
  mmv '*[Jj]un*' '#1\06#3' || true
  mmv '*[Jj]uly*' '#1\07#3' || true
  mmv '*[Jj]ul*' '#1\07#3' || true
  mmv '*[Aa]ugust*' '#1\08#3' || true
  mmv '*[Aa]ug*' '#1\08#3' || true
  mmv '*[Ss]eptember*' '#1\09#3' || true
  mmv '*[Ss]ept*' '#1\09#3' || true
  mmv '*[Ss]ep*' '#1\09#3' || true
  mmv '*[Oo]ctober*' '#1\10#3' || true
  mmv '*[Oo]ct*' '#1\10#3' || true
  mmv '*[Nn]ovember*' '#1\11#3' || true
  mmv '*[Nn]ov*' '#1\11#3' || true
  mmv '*[Dd]ecember*' '#1\12#3' || true
  mmv '*[Dd]ec*' '#1\12#3' || true
}

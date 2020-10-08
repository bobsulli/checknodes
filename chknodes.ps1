# chknodes.ps1 by Bob Sullivan for Salve Regina University
# to check status of Heartland door controllers, POS, kitchen printers, etc.
$itis = Get-Date -format F
$outfile = 'c:\users\bob.sullivan\chknodes.log'
'Heartland nodes status {0}' -f $itis >> $outfile
If (Test-Connection 192.168.121.43  -count 1 -quiet) `
  { Write 'P1016-P1017 UP   Conley Hall'        >> $outfile } else { Write 'P1016-P1017 DOWN Conley Hall'        >> $outfile }
If (Test-Connection 10.25.80.11     -count 1 -quiet) `
  { Write 'P1101-P1102 UP   Rodgers 4dr'        >> $outfile } else { Write 'P1101-P1102 DOWN Rodgers 4dr'        >> $outfile }
If (Test-Connection 10.37.10.14     -count 1 -quiet) `
  { Write 'P1173-P1173 UP   Health Svcs DCT3'   >> $outfile } else { Write 'P1173-P1173 DOWN Health Svcs DCT3'   >> $outfile }
# end of chknodes.ps1

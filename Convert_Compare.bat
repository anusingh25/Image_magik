echo off
if %~x1==.pdf (
"H:\Program Files\gs\gs9.19\bin\gswin64c.exe" -dSAFER -dBATCH -dNOPAUSE -sDEVICE=png16m -r300 -sOutputFile=%~dpn1.png %1
)
if %~x2==.pdf (
"H:\Program Files\gs\gs9.19\bin\gswin64c.exe" -dSAFER -dBATCH -dNOPAUSE -sDEVICE=png16m -r300 -sOutputFile=%~dpn2.png %2
)
"C:\Users\asingh\Downloads\Utilities\ImageMagick-7.0.2-10-portable-Q16-x64\compare" %~dpn1.png %~dpn2.png -compose difference %~dpn1_diff.png

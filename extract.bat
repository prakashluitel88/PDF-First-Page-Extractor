if not exist "outputfile\temp" mkdir outputfile\temp

for %%I in (inputfiles\*.pdf) do "pdftk.exe" "%%I" cat 1 output "outputfile\temp\%%~nI-page1.pdf"

pdftk outputfile\temp\*-page1.pdf cat output outputfile\final.pdf

@RD /S /Q "outputfile\temp"

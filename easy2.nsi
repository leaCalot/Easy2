; NSIS installer
; @author Lea Calot

!include FileFunc.nsh

; Set the name of the application
Name "Easy 2"

; Set the output directory for the installer
OutFile "build/easy2_installer.exe"

; Set the default installation directory
InstallDir "$PROGRAMFILES\Easy2"

; Copy the necessary files to the installation directory
Section
  SetOutPath $INSTDIR
  File "build/src/easy2.exe"
  File "/usr/lib/gcc/x86_64-w64-mingw32/10-posix/libgcc_s_seh-1.dll"
  File "/usr/lib/gcc/x86_64-w64-mingw32/10-posix/libstdc++-6.dll"
SectionEnd

; Create an uninstaller
Section "Uninstall"
  Delete "$INSTDIR\easy2.exe"
  RMDir "$INSTDIR"
SectionEnd

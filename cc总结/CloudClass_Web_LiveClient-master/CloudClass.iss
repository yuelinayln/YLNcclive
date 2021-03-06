; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "xmt"
#define MyAppVersion "0.1.0"
#define InstallAppName "新铭堂客户端"
#define MyAppPublisher "北京千百课网络技术有限公司"
#define MyAppURL "http://xmt.1000best.cn/"
#define MyDefalutDir "xmt"
#define MyAppPath "src"        
#define GroupUninstallName  "卸载新铭堂客户端" 
#define MyAppExeName "xmt.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{3D1FFD04-7F1C-45B7-9058-67EFF87DB401}
AppName={#MyAppName}
AppVersion={#MyAppVersion}AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DisableProgramGroupPage=yes
OutputDir=Install
OutputBaseFilename={#InstallAppName}-{#MyAppVersion}
Compression=lzma
SolidCompression=yes
SetupIconFile=.\app\renderer\image\xmt.ico
VersionInfoCompany=http://xmt.1000best.cn/
VersionInfoDescription="新铭堂客户端"
VersionInfoVersion=0.1.0
VersionInfoCopyright=Copyright(C)2017-2020 xmt


[Languages]                                                                                                                                              
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "chinese"; MessagesFile: "compiler:Languages/ChineseSimplified.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Users\yuelina\Desktop\CloudClass_Web_LiveClient-master\packagers\xmt-win32-ia32\xmt.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\yuelina\Desktop\CloudClass_Web_LiveClient-master\packagers\xmt-win32-ia32\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{commonprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
;Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{group}\卸载 {#MyAppName}"; Filename: "{uninstallexe}"

[Registry]
Root: HKCR; Subkey: "xmt"; ValueType: "string"; ValueData: "xmt";Flags: uninsdeletevalue
Root: HKCR; Subkey: "xmt"; ValueType: "string"; ValueName: "URL Protocol"; ValueData: "";Flags: uninsdeletevalue
Root: HKCR; Subkey: "xmt\shell\open\command"; ValueType: "string"; ValueData: """{app}\xmt.exe"" ""%1""";Flags: uninsdeletevalue


[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent unchecked

[UninstallRun]
Filename: "{cmd}"; Parameters: "/c rd /s /q ""{app}"""; Flags: hidewizard runhidden

[UninstallDelete]
Name: {app}; Type: filesandordirs


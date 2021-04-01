#define MyAppVersion "1.4"
#define MyAppName "LemmaAll"
#define MyAppPublisher "LEMMA"
#define MyAppURL "https://lemma-group.ru/"
;Имя мониторинга
#define MyAppMonitoring "LemmaMonitoring.exe" 
#define MonVer = "0.94"
;Имя апдейтера
#define MyAppUpdater "LemmaUpdater.exe"
#define UpdVer = "0.95"
#define CustomPassGlob ""





[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{FEFAF470-5F87-4F1C-A9F5-549A4361CC5C}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={sd}\Program Files\LemmaAll
DisableProgramGroupPage=yes
; Remove the following line to run in administrative install mode (install for all users.)
OutputDir=C:\Google Диск\8.Lemma\InnoInstallerLemmaMonitoring
OutputBaseFilename=LemmaAll_{#MyAppVersion}_MonitoringV{#MonVer}_UpdaterV{#UpdVer}
Password=2700805
Compression=lzma
SolidCompression=yes
//WizardStyle=modern
PrivilegesRequired=admin
SetupLogging=yes



[Languages]
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
;Source: "C:\Program Files\Inno Setup 6\Examples\MyProg.exe"; DestDir: "{app}"; Flags: ignoreversion
;Source: "E:\Google Диск\8.Lemma\InnoInstallerLemmaMonitoring\Dop\NDP472-KB4054531-Web.exe"; DestDir: "{tmp}"; DestName: "NDP472-KB4054531-Web.exe"; Flags: deleteafterinstall; AfterInstall: InstallFramework; Check: FrameworkIsNotInstalled
Source: "C:\Google Диск\8.Lemma\InnoInstallerLemmaMonitoring\Dop\NDP472-KB4054531-Web.exe"; DestDir: "{tmp}"; DestName: "NDP472-KB4054531-Web.exe"; Flags: deleteafterinstall; 
Source: "C:\Google Диск\8.Lemma\InnoInstallerLemmaMonitoring\Monitoring\*"; DestDir: "{app}\Monitoring"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Google Диск\8.Lemma\InnoInstallerLemmaMonitoring\Updater\*"; DestDir: "{app}\Updater"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Google Диск\8.Lemma\InnoInstallerLemmaMonitoring\Dop\vc_redist.x86.exe"; DestDir: "{tmp}"; DestName: "vc_redist.x86.exe"; Flags: deleteafterinstall;
Source: "C:\Google Диск\8.Lemma\InnoInstallerLemmaMonitoring\Dop\vc_redist.x64.exe"; DestDir: "{tmp}"; DestName: "vc_redist.x64.exe"; Flags: deleteafterinstall;


; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\{#'Запуск LemmaMonitoring'}"; Filename: "{app}\Monitoring\{#MyAppMonitoring}";
Name: "{autodesktop}\{#'Запуск LemmaMonitoring'}"; Filename: "{app}\Monitoring\{#MyAppMonitoring}"; Tasks: desktopicon
Name: "{autoprograms}\{#'Запуск LemmaUpdater'}"; Filename: "{app}\Updater\{#MyAppUpdater}";
Name: "{autodesktop}\{#'Запуск LemmaUpdater'}"; Filename: "{app}\Updater\{#MyAppUpdater}"; Tasks: desktopicon

[Registry]
;Root: HKLM; Subkey: "Software\Microsoft\Windows\CurrentVersion\Run"; ValueType: string; ValueName: "LemmaMonitoring"; ValueData: {app}\Monitoring\{#MyAppMonitoring};Flags: uninsdeletekey
;Root: HKLM; Subkey: "Software\Microsoft\Windows\CurrentVersion\Run"; ValueType: string; ValueName: "LemmaUpdater"; ValueData: {app}\Updater\{#MyAppUpdater};Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Microsoft\Windows\CurrentVersion\Run"; ValueType: string; ValueName: "LemmaMonitoring"; ValueData: "{app}\Monitoring\{#MyAppMonitoring}"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Microsoft\Windows\CurrentVersion\Run"; ValueType: string; ValueName: "LemmaUpdater"; ValueData: "{app}\Updater\{#MyAppUpdater}"; Flags: uninsdeletekey


Root: HKLM64; Subkey: "SOFTWARE\LemmaAll\Monitoring"; ValueType: string; ValueName: "onlyAd"; ValueData: "true"; Components: both or ad; Flags: createvalueifdoesntexist; Check: IsWin64
Root: HKLM32; Subkey: "SOFTWARE\LemmaAll\Monitoring"; ValueType: string; ValueName: "onlyAd"; ValueData: "true"; Components: both or ad; Flags: createvalueifdoesntexist; Check: not IsWin64  

Root: HKLM64; Subkey: "SOFTWARE\LemmaAll\Monitoring"; ValueType: string; ValueName: "onlyAd"; ValueData: "false"; Components: tv;Flags: createvalueifdoesntexist; Check: IsWin64 
Root: HKLM32; Subkey: "SOFTWARE\LemmaAll\Monitoring"; ValueType: string; ValueName: "onlyAd"; ValueData: "false"; Components: tv;Flags: createvalueifdoesntexist; Check: not IsWin64 

Root: HKLM64; Subkey: "SOFTWARE\LemmaAll\Monitoring"; ValueType: string; ValueName: "onlyTV"; ValueData: "true"; Components: both or tv;Flags: createvalueifdoesntexist; Check: IsWin64
Root: HKLM32; Subkey: "SOFTWARE\LemmaAll\Monitoring"; ValueType: string; ValueName: "onlyTV"; ValueData: "true"; Components: both or tv;Flags: createvalueifdoesntexist; Check: not IsWin64

Root: HKLM64; Subkey: "SOFTWARE\LemmaAll\Monitoring"; ValueType: string; ValueName: "onlyTV"; ValueData: "false"; Components: ad;Flags: createvalueifdoesntexist; Check: IsWin64
Root: HKLM32; Subkey: "SOFTWARE\LemmaAll\Monitoring"; ValueType: string; ValueName: "onlyTV"; ValueData: "false"; Components: ad;Flags: createvalueifdoesntexist; Check: not IsWin64

Root: HKLM64; Subkey: "SOFTWARE\LemmaAll\Monitoring"; ValueType: string; ValueName: "customPass"; ValueData: {code:GetCustomPass};Flags: createvalueifdoesntexist; Check: IsWin64
Root: HKLM32; Subkey: "SOFTWARE\LemmaAll\Monitoring"; ValueType: string; ValueName: "customPass"; ValueData: {code:GetCustomPass};Flags: createvalueifdoesntexist; Check: not IsWin64

Root: HKLM64; Subkey: "SOFTWARE\LemmaAll"; ValueType: string; ValueName: "typeNode"; ValueData: {code:GetTypeNode};Flags: createvalueifdoesntexist; Check: IsWin64
Root: HKLM32; Subkey: "SOFTWARE\LemmaAll"; ValueType: string; ValueName: "typeNode"; ValueData: {code:GetTypeNode};Flags: createvalueifdoesntexist; Check: not IsWin64


;Parameters: "/install /passive"; and not VCinstalled
;Parameters: "/install /passive"; not VCinstalled

[Run]
Filename: "{tmp}\NDP472-KB4054531-Web.exe";  StatusMsg: "Установка Framework"
Filename: "{tmp}\vc_redist.x86.exe";  StatusMsg: "Установка VC++ 2015 x86"; Check: not IsWin64
Filename: "{tmp}\vc_redist.x64.exe";  StatusMsg: "Установка VC++ 2015 x64"; Check: IsWin64
Filename: "{app}\Monitoring\{#MyAppMonitoring}"; Description: "{cm:LaunchProgram,{#StringChange('Monitoring', '&', '&&')}}"; Flags: runascurrentuser nowait postinstall skipifsilent
Filename: "{app}\Updater\{#MyAppUpdater}"; Description: "{cm:LaunchProgram,{#StringChange('Updater', '&', '&&')}}"; Flags: runascurrentuser nowait postinstall skipifsilent

[UninstallRun]
Filename: "{cmd}"; Parameters: "/C ""taskkill /im {#MyAppMonitoring} /f /t"
Filename: "{cmd}"; Parameters: "/C ""taskkill /im {#MyAppUpdater} /f /t"

[Types]
Name: "full"; Description: "Полная"
Name: "onlyad"; Description: "Только AnyDesk"
Name: "onlytv"; Description: "Только TeamViewer"

[Components]
Name: "both"; Description: "Всё"; Types: full
Name: "ad"; Description: "AnyDesk"; Types: onlyad 
Name: "tv"; Description: "TeamViewer"; Types: onlytv

[Code]
var UserInputsPage: TInputQueryWizardPage;
var CancelWithoutPrompt: boolean;
var TypeNodePage: TInputOptionWizardPage;
var IsFront: Boolean;
var IsBack: Boolean;
var IsServer: Boolean;


var VersionUpdOnSite: string;
var VersionMonOnSite: string;
var Response: string;
var WinHttpReq:Variant;

procedure SearchNewVersion();
var 
  updReal,MonReal,curUpd,curMon:double;
  temp,resultMessage,addressMon,addressUpd:string;
  ErrCode: integer;
begin
  { Create the page} 
  WinHttpReq := CreateOleObject('WinHttp.WinHttpRequest.5.1');
  WinHttpReq.Open('GET','https://blazor.red-home.tk/apiV1/Version',false);
  WinHttpReq.Send('');
  if (WinHttpReq.Status=200) then
  begin
    Response:=WinHttpReq.ResponseText;

    addressMon := copy(Response,pos('address":"',Response)+10,pos('version":"',Response)-13-pos('address":"',Response));
    delete(Response,pos('address":"',Response),4);
    VersionUpdOnSite := copy(Response,pos('version":"',Response)+10,4);
    delete(Response,pos('version":"',Response),4);
    addressUpd := copy(Response,pos('address":"',Response)+10,pos('version":"',Response)-13-pos('address":"',Response));
    VersionMonOnSite := copy(Response,pos('version":"',Response)+10,4);

    if((length(VersionUpdOnSite)>0) and (length(VersionMonOnSite)>0)) then
    begin 
       updReal := StrToFloat(VersionUpdOnSite);
       MonReal := StrToFloat(VersionMonOnSite);
       if ((updReal>{#UpdVer})OR(MonReal>{#MonVer})) then 
       begin
         if (MsgBox('Версия продукта ниже актуальной. Перейти к скачиванию актуальной версии?', mbConfirmation, MB_YESNO) = IDYES) then
          begin
            ShellExec('open', 'https://drive.google.com/drive/folders/1p3sFgj0fjvUQ5GqICojMmsq34OSU74h-','', '', SW_SHOW, ewNoWait, ErrCode);
          end;
       end;
    end;
  end;
        
 end;


function InitializeSetup(): Boolean;
begin
  { Create the page}
  SearchNewVersion();
  CancelWithoutPrompt := false;
  result := true;
end;


procedure CancelButtonClick(CurPageID: Integer; var Cancel, Confirm: Boolean);
begin
  if CurPageID=wpInstalling then
    Confirm := not CancelWithoutPrompt;
end;


var
      ForceClose: Boolean;
procedure Exterminate;
begin
       ForceClose:= True;
       WizardForm.Close;  
end;

procedure CancelButtonClick2(CurPageID: Integer; var Cancel, Confirm: Boolean);
begin
       Confirm:= not ForceClose;
end;

procedure InitializeWizard;
begin
  UserInputsPage :=
    CreateInputQueryPage(wpSelectComponents,
      'User information', 'Установка кастомного пароля для AnyDesk', 'Если поле оставить пустым - будет установлен стандартный пароль.');
  UserInputsPage.Add('Пароль:', False);

  TypeNodePage := CreateInputOptionPage(wpPassword,
  'Тип узла', 'Выберите тип узла','По умолчанию - Станция\Касса',
  True, False);

  // Add items
  TypeNodePage.Add('Станция\Касса');
  TypeNodePage.Add('Рабочее место бухгалтера');
  TypeNodePage.Add('Сервер');

  // Set initial values (optional)
  TypeNodePage.Values[0] := True;
  TypeNodePage.Values[1] := False;
  TypeNodePage.Values[2] := False;
end;



function GetCustomPass(Param: string):string;
var 
predCustPass: String;
begin
predCustPass := UserInputsPage.Values[0];
if  predCustPass <> '' then
  Result:= 'Key&# ' + predCustPass
else
  Result:='';
end;


function GetTypeNode(Param: string):string;
begin
IsFront := TypeNodePage.Values[0];
IsBack :=  TypeNodePage.Values[1];
IsServer :=  TypeNodePage.Values[2];


if IsFront then
Result := 'front';

if IsBack then
Result := 'back';

if IsServer then
Result := 'server';
end;








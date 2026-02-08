[Setup]
AppName=Pink Cat App (Installer Example)
AppVersion=1.0
DefaultDirName={autopf}\PinkCatApp
DefaultGroupName=Pink Cat App (Installer Example)
UninstallDisplayIcon={app}\Pink Cat App (Installer Example).exe
Compression=lzma2
SolidCompression=yes
OutputDir=F:\BACKUPS\Proyectos\Proyectos en Python\PinkCat App (Install Example)\Output
OutputBaseFilename=PinkCatApp_Setup
SetupIconFile=F:\BACKUPS\Proyectos\Proyectos en Python\PinkCat App (Install Example)\rsc\rosa.ico
; WizardImageFile=F:\BACKUPS\Proyectos\Proyectos en Python\PinkCat App (Install Example)\rsc\rosa.ico
; WizardSmallImageFile=F:\BACKUPS\Proyectos\Proyectos en Python\PinkCat App (Install Example)\rsc\rosa.ico

[Languages]
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"

[Files]
Source: "F:\BACKUPS\Proyectos\Proyectos en Python\PinkCat App (Install Example)\dist\Pink Cat App (Installer Example).exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "F:\BACKUPS\Proyectos\Proyectos en Python\PinkCat App (Install Example)\rsc\fake.bmp"; DestDir: "{tmp}"; Flags: dontcopy
Source: "F:\BACKUPS\Proyectos\Proyectos en Python\PinkCat App (Install Example)\rsc\ad.bmp"; DestDir: "{tmp}"; Flags: dontcopy

[Icons]
Name: "{group}\Pink Cat App (Installer Example)"; Filename: "{app}\Pink Cat App (Installer Example).exe"
Name: "{group}\Desinstalar Pink Cat App (Installer Example)"; Filename: "{uninstallexe}"
Name: "{autodesktop}\Pink Cat App (Installer Example)"; Filename: "{app}\Pink Cat App (Installer Example).exe"; Tasks: desktopicon

[Tasks]
Name: "desktopicon"; Description: "Crear un icono en el escritorio"; GroupDescription: "Iconos adicionales:"

[Code]
var
  LicensePage: TOutputMsgMemoWizardPage;
  CreditosPage: TOutputMsgMemoWizardPage;
  ProgramaFalsoPage: TWizardPage;
  PublicidadPage: TWizardPage;
  CheckboxProgramaFalso: TNewCheckBox;

procedure InitializeWizard;
var
  ImagenFake: TBitmapImage;
  ImagenAd: TBitmapImage;
begin
  // Extraer las imágenes del instalador al directorio temporal
  ExtractTemporaryFile('ad.bmp');
  ExtractTemporaryFile('fake.bmp');

  // Página de Créditos y Licencias (con scroll)
  CreditosPage := CreateOutputMsgMemoPage(wpWelcome,
    'Créditos y Atribuciones',
    'Respetando las licencias Creative Commons',
    '',
    '');
  
  // Agregar el texto al memo
  CreditosPage.RichEditViewer.Lines.Add('Este software utiliza recursos con licencias abiertas que debemos reconocer:');
  CreditosPage.RichEditViewer.Lines.Add('');
  CreditosPage.RichEditViewer.Lines.Add('═══════════════════════════════════════════');
  CreditosPage.RichEditViewer.Lines.Add('ICONO DE LA APLICACIÓN');
  CreditosPage.RichEditViewer.Lines.Add('═══════════════════════════════════════════');
  CreditosPage.RichEditViewer.Lines.Add('');
  CreditosPage.RichEditViewer.Lines.Add('El icono de la rosa fue descargado de:');
  CreditosPage.RichEditViewer.Lines.Add('https://www.flaticon.es/icono-gratis/rosa_774122');
  CreditosPage.RichEditViewer.Lines.Add('');
  CreditosPage.RichEditViewer.Lines.Add('Licencia: Creative Commons');
  CreditosPage.RichEditViewer.Lines.Add('');
  CreditosPage.RichEditViewer.Lines.Add('¿POR QUÉ ES IMPORTANTE ESTO?');
  CreditosPage.RichEditViewer.Lines.Add('Respetar las licencias Creative Commons y otros derechos de autor es fundamental en el desarrollo de software. Siempre debemos dar crédito a los creadores originales.');
  CreditosPage.RichEditViewer.Lines.Add('');
  CreditosPage.RichEditViewer.Lines.Add('Este es un buen ejemplo de cómo hacerlo correctamente.');

  // Página de "Léelo hasta el final" (con scroll)
  LicensePage := CreateOutputMsgMemoPage(CreditosPage.ID,
    'Términos y Condiciones IMPORTANTES',
    'Por favor, lee cuidadosamente todo el texto',
    '',
    '');
  
  // Agregar el texto al memo
  LicensePage.RichEditViewer.Lines.Add('ATENCIÓN: Este es un ejercicio educativo sobre instalación de software.');
  LicensePage.RichEditViewer.Lines.Add('Lee COMPLETAMENTE este texto antes de continuar.');
  LicensePage.RichEditViewer.Lines.Add('');
  LicensePage.RichEditViewer.Lines.Add('IMPORTANTE: Al final de este texto hay información crucial que NO debes ignorar.');
  LicensePage.RichEditViewer.Lines.Add('');
  LicensePage.RichEditViewer.Lines.Add('1. Este software es completamente gratuito y seguro.');
  LicensePage.RichEditViewer.Lines.Add('2. No recopila ningún dato personal.');
  LicensePage.RichEditViewer.Lines.Add('3. No contiene publicidad.');
  LicensePage.RichEditViewer.Lines.Add('4. No modificará la configuración de tu sistema.');
  LicensePage.RichEditViewer.Lines.Add('5. Puedes desinstalarlo en cualquier momento desde el Panel de Control.');
  LicensePage.RichEditViewer.Lines.Add('');
  LicensePage.RichEditViewer.Lines.Add('Muchas personas hacen clic en "Siguiente" sin leer. Esto es peligroso porque:');
  LicensePage.RichEditViewer.Lines.Add('- Pueden aceptar condiciones abusivas');
  LicensePage.RichEditViewer.Lines.Add('- Pueden instalar software no deseado');
  LicensePage.RichEditViewer.Lines.Add('- Pueden dar permisos innecesarios');
  LicensePage.RichEditViewer.Lines.Add('');
  LicensePage.RichEditViewer.Lines.Add('══════════════════════════════════════════');
  LicensePage.RichEditViewer.Lines.Add('MENSAJE IMPORTANTE (¿Llegaste hasta aquí?)');
  LicensePage.RichEditViewer.Lines.Add('══════════════════════════════════════════');
  LicensePage.RichEditViewer.Lines.Add('');
  LicensePage.RichEditViewer.Lines.Add('En las siguientes pantallas verás publicidad y una opción para instalar un "programa adicional".');
  LicensePage.RichEditViewer.Lines.Add('Son TRAMPAS educativas. Simplemente ignóralas y continúa. Es un ejemplo de software basura que muchos instaladores intentan colar.');
  LicensePage.RichEditViewer.Lines.Add('');
  LicensePage.RichEditViewer.Lines.Add('Si leíste esto, ya sabes qué hacer en las siguientes pantallas.');

  // Hacer scroll hacia arriba para mostrar el inicio del texto
  LicensePage.RichEditViewer.SelStart := 0;

  // Página de Publicidad (con imagen ad.bmp)
  PublicidadPage := CreateCustomPage(LicensePage.ID,
    '¡Oferta Especial!',
    'Aprovecha esta promoción exclusiva');

  // Cargar imagen de publicidad
  ImagenAd := TBitmapImage.Create(PublicidadPage);
  ImagenAd.Parent := PublicidadPage.Surface;
  ImagenAd.Left := 0;
  ImagenAd.Top := 0;
  ImagenAd.Width := PublicidadPage.SurfaceWidth;
  ImagenAd.Height := PublicidadPage.SurfaceHeight;
  ImagenAd.Stretch := True;
  ImagenAd.AutoSize := False;
  try
    ImagenAd.Bitmap.LoadFromFile(ExpandConstant('{tmp}\ad.bmp'));
  except
    // Si no se puede cargar la imagen, mostrar texto alternativo
    with TLabel.Create(PublicidadPage) do
    begin
      Parent := PublicidadPage.Surface;
      Left := 20;
      Top := 100;
      Width := PublicidadPage.SurfaceWidth - 40;
      Height := 100;
      AutoSize := False;
      WordWrap := True;
      Caption := '¡OFERTA LIMITADA!' + #13#10#13#10 +
                 'Esta es una publicidad típica que encontrarás en muchos instaladores.' + #13#10 +
                 'Simplemente haz clic en "Siguiente" para continuar.';
      Font.Size := 12;
      Alignment := taCenter;
    end;
  end;

  // Página del "Programa Falso" (trampa educativa con imagen fake.bmp)
  ProgramaFalsoPage := CreateCustomPage(PublicidadPage.ID,
    'Software Adicional Recomendado',
    'Mejora tu experiencia con nuestro software asociado');

 // Cargar imagen fake.bmp
  ImagenFake := TBitmapImage.Create(ProgramaFalsoPage);
  ImagenFake.Parent := ProgramaFalsoPage.Surface;
  ImagenFake.Left := 0;  // Cambiado de 10 a 0 (totalmente a la izquierda)
  ImagenFake.Top := 10;
  ImagenFake.Width := 180;
  ImagenFake.Height := 180;
  ImagenFake.Stretch := True;
  ImagenFake.AutoSize := False;
  try
    ImagenFake.Bitmap.LoadFromFile(ExpandConstant('{tmp}\fake.bmp'));
  except
    // Si falla cargar la imagen, continuar sin ella
  end;

CheckboxProgramaFalso := TNewCheckBox.Create(ProgramaFalsoPage);
  CheckboxProgramaFalso.Parent := ProgramaFalsoPage.Surface;
  CheckboxProgramaFalso.Left := 190;  // Cambiado de 200 a 190
  CheckboxProgramaFalso.Top := 30;
  CheckboxProgramaFalso.Width := ProgramaFalsoPage.SurfaceWidth - 190;
  CheckboxProgramaFalso.Height := 30;
  CheckboxProgramaFalso.Caption := 'Instalar SuperOptimizer Pro (Recomendado)';
  CheckboxProgramaFalso.Checked := False;

  with TLabel.Create(ProgramaFalsoPage) do
  begin
    Parent := ProgramaFalsoPage.Surface;
    Left := 190;  // Cambiado de 195 a 190
    Top := 70;
    Width := ProgramaFalsoPage.SurfaceWidth - 200;
    Height := 180;
    AutoSize := False;
    WordWrap := True;
    Caption := 'SuperOptimizer Pro es una herramienta gratuita que optimiza tu PC ' +
               'para un mejor rendimiento. Incluye:' + #13#10#13#10 +
               '• Limpieza de archivos temporales' + #13#10 +
               '• Optimización del registro' + #13#10 +
               '• Aceleración del sistema' + #13#10 +
               '• Protección en tiempo real' + #13#10#13#10 +
               '¡Más de 10 millones de usuarios confían en nosotros!';
  end;
  end;

function NextButtonClick(CurPageID: Integer): Boolean;
begin
  Result := True;
  
  // Verificar si marcaron el programa falso
  if CurPageID = ProgramaFalsoPage.ID then
  begin
    if CheckboxProgramaFalso.Checked then
    begin
      MsgBox('¡ATENCIÓN!' + #13#10#13#10 +
             'Has marcado la opción de instalar "SuperOptimizer Pro".' + #13#10#13#10 +
             'Este era un EJEMPLO de software basura que los instaladores ' +
             'intentan colar.' + #13#10#13#10 +
             'Si hubieras leído los términos y condiciones hasta el final, ' +
             'habrías visto la advertencia.' + #13#10#13#10 +
             'NO se instalará nada adicional. Esto es solo una lección educativa.' + #13#10#13#10 +
             'RECUERDA: Siempre lee completamente antes de aceptar.',
             mbInformation, MB_OK);
      CheckboxProgramaFalso.Checked := False;
    end;
  end;
end;


[Run]
Filename: "{app}\Pink Cat App (Installer Example).exe"; Description: "Ejecutar Pink Cat App"; Flags: nowait postinstall skipifsilent
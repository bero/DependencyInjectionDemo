program DependencyInjectionDemo;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  ServerFactories in 'ServerFactories.pas',
  ServerInterfaces in 'ServerInterfaces.pas',
  EBookingUpdate in 'EBookingUpdate.pas',
  BusinessClasses in 'BusinessClasses.pas';

var
  oBusClass: TBusinessClass;
  oFactory: IServerFactory;
begin
  try
    oFactory := TServerFactory.Create;   // As interface no free is needed
    oBusClass := TBusinessClass.Create;
    try
      oBusClass.PerformUpdate;
      ReadLn;
    finally
      oBusClass.Free;
    end;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.

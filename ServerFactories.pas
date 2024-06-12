unit ServerFactories;

interface

uses
  ServerInterfaces;

type
  IServerFactory = interface
  ['{11B9B879-AD5D-4254-AF1E-3B6C44B4477E}']
    function GetEBookingUpdateInf: IEBookingUpdate;
  end;

  TServerFactory = class(TInterfacedObject, IServerFactory)
  public
    function GetEBookingUpdateInf: IEBookingUpdate;
    // list of more methods that return interfaces
  end;

var
  ServerFactory: IServerFactory;

implementation

uses
  EBookingUpdate;

function TServerFactory.GetEBookingUpdateInf: IEBookingUpdate;
begin
  Result := TEbookingUpdate.Create;
end;

initialization
  ServerFactory := TServerFactory.Create;

end.

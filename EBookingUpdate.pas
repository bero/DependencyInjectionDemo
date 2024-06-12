unit EBookingUpdate;

interface

uses
  ServerInterfaces;

type
  TEbookingUpdate = class(TInterfacedObject, IEBookingUpdate)
  public
    procedure UpdateBooking;
  end;

implementation

{ TEbookingUpdate }

procedure TEbookingUpdate.UpdateBooking;
begin
  WriteLn('UpdateBooking called');
end;

end.

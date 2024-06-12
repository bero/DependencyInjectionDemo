unit BusinessClasses;

interface

uses
  ServerFactories,
  ServerInterfaces;

type
  TBusinessClass = class
  public
    procedure PerformUpdate;
  end;

implementation

{ TBusinessClass }

procedure TBusinessClass.PerformUpdate;
var
 BookingUpdaterIntf: IEBookingUpdate;
begin
  BookingUpdaterIntf := ServerFactory.GetEBookingUpdateInf;
  BookingUpdaterIntf.UpDateBooking;
end;

end.

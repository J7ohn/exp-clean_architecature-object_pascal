unit uUtils;

interface

uses system.SysUtils, uResponse;

function TratarException(e: Exception): Tresponse;

implementation

function TratarException(e: Exception): Tresponse;
var
   response: Tresponse;
begin
  response.success := false;
  response.Message := e.Message;
  response.ErrorCode := 0;
  response.Data := nil;

  result := response;
end;

end.

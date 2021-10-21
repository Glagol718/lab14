function IsLeapYear(year: integer): boolean;
begin
  if (year mod 4 = 0) and ((year mod 100 <> 0) or (year mod 400 = 0)) then begin
    result := true;
  end
  else result := false;
end;

function DaysInYear(year: integer): integer;
begin
  if IsLeapYear(year) = true then result := 366 else result := 365;
end;

function DaysInYearRange(year1, month1, year2, month2: integer): integer;
begin
  if month1 > month2 then result := day1;
  if month2 > month1 then result := day2;
  if month1 = month2 then begin
    if day1 > day2 then begin
      result := day1;
    end
    else result := day2;
  end;
end;

function LaterInYear(day1, month1, day2, month2: integer): integer;
begin
  if month1 > month2 then result := day1;
  if month2 > month1 then result := day2;
  if month1 = month2 then begin
    if day1 > day2 then result := day1 else result := day2;
  end;
end;

begin
  
end.
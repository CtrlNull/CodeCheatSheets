Declare @Sun TinyInt Set @Sun = 8
Declare @Mon TinyInt Set @Mon = 9
Declare @Tue TinyInt Set @Tue = 10
Declare @Wed TinyInt Set @Wed = 11
Declare @Thu TinyInt Set @Thu = 12
Declare @Fri TinyInt Set @Fri = 13
Declare @Sat TinyInt Set @Sat = 14
Declare @D Datetime, @FONM DateTime -- FirstofNextMonth 
Set @D = getdate()
Set @FONM = DateAdd(Month, 1+DateDiff(Month, 0, @D),0)
Select 
 DateAdd(day, (@Sun -DatePart(weekday, @FONM))%7, @FONM) firstSunInNextMonth,
 DateAdd(day, (@Mon -DatePart(weekday, @FONM))%7, @FONM) firstMonInNextMonth,
 DateAdd(day, (@Tue -DatePart(weekday, @FONM))%7, @FONM) firstTueInNextMonth,
 DateAdd(day, (@Wed -DatePart(weekday, @FONM))%7, @FONM) firstWedInNextMonth,
 DateAdd(day, (@Thu -DatePart(weekday, @FONM))%7, @FONM) firstThuInNextMonth,
 DateAdd(day, (@Fri -DatePart(weekday, @FONM))%7, @FONM) firstFriInNextMonth,
 DateAdd(day, (@Sat -DatePart(weekday, @FONM))%7, @FONM) firstSatInNextMonth
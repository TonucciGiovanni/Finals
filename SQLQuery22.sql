USE MyProject
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[StudentMst_UPDATE]
	
	@SID AS int,			
	@email AS NVARCHAR(256),
	@mobile AS NVARCHAR(256),	
	@image AS NVARCHAR(256),
	@add AS NVARCHAR(256),
	@city AS NVARCHAR(256),
	@pincode AS NVARCHAR(256)
AS
BEGIN
	
UPDATE StudentMst SET Email=@email,Mobile=@mobile,Image=@image,[Add]=@add,City=@city,Pincode=@pincode WHERE SID=@SID
	
	
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[StudentMst_SELECT_STD_DIV]
@std as nvarchar(256),
@div as nvarchar(256)	
AS
BEGIN
	
	SELECT * FROM StudentMst where StdName=@std and DivName=@div
	
	
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[StudentMst_SELECT_login]
	@uname as nvarchar(256),
	@pass as nvarchar(256)
AS
BEGIN
	
	SELECT * FROM StudentMst where Uname=@uname and Pass=@pass
	
	
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[StudentMST_SELECT_check_current_pass]
	
	@pass as nvarchar(256),
	@uname as nvarchar(256)
	
AS
BEGIN
	
	select * from StudentMst where Pass=@pass and Uname=@uname
	
	
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[StudentMST_SELECT_ChangePass]
	
	@pass as nvarchar(256),
	@uname as nvarchar(256)
	
AS
BEGIN
	
	update StudentMst set Pass=@pass where Uname=@uname
	
	
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[StudentMst_SELECT_BYID]
	
	@SID AS INT
AS
BEGIN
	
	SELECT * FROM StudentMst WHERE SID=@SID
	
	
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[StudentMst_SELECT_by_uname]
		@uname as nvarchar(256)
	 
AS
BEGIN
	
	SELECT * FROM StudentMst where Uname=@uname 
	
	
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[StudentMst_SELECT_by_email]
		@email as nvarchar(256)
	 
AS
BEGIN
	
	SELECT * FROM StudentMst where Email=@email
	
	
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[StudentMst_SELECT]
	
AS
BEGIN
	
	SELECT * FROM StudentMst
	
	
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[StudentMst_INSERT]
	
	@ROLLNO AS NVARCHAR(256),
	@NAME  AS NVARCHAR(256),
	@STDNAME  AS NVARCHAR(256),
	@DIVNAME  AS NVARCHAR(256),
	@EMAIL  AS NVARCHAR(256),
	@MOBILE AS NVARCHAR(256),
	@DOB AS nvarchar(500),
	@IMG  AS NVARCHAR(256),
	@ADD AS NVARCHAR(256),
	@CITY AS NVARCHAR(256),
	@PIN AS NVARCHAR(256),
	@UNAME AS NVARCHAR(256),
	@PASS AS NVARCHAR(256)
AS
BEGIN
	
	INSERT INTO StudentMst VALUES(@ROLLNO,@NAME,@STDNAME,@DIVNAME,@EMAIL,@MOBILE,@DOB,@IMG,@ADD,@CITY,@PIN,@UNAME,@PASS,GETDATE())
	
	
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[StudentMst_DELETE]
	
	@SID AS INT
AS
BEGIN
	
DELETE FROM StudentMst WHERE SID=@SID
	
	
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[StaffMst_UPDATE]
	
	@SID AS INT,	
	@email as nvarchar(256),
	@mobile as nvarchar(256),
	@image as nvarchar(256),
	@add as nvarchar(256),
	@city as nvarchar(256),
	@pincode as nvarchar(256)
	
	
AS
BEGIN
	
UPDATE StaffMst SET Email=@email,Mobile=@mobile,Image=@image,[Add]=@add,City=@city,Pincode=@pincode WHERE SID=@SID
	
	
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[StaffMST_SELECT_login]
	@uname as nvarchar(256),
	@pass as nvarchar(256)
AS
BEGIN
	
	SELECT * FROM StaffMst where Uname=@uname and Pass=@pass
	
	
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[StaffMST_SELECT_check_current_pass]
	
	@pass as nvarchar(256),
	@uname as nvarchar(256)
	
AS
BEGIN
	
	select * from StaffMst where Pass=@pass and Uname=@uname
	
	
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[StaffMST_SELECT_ChangePass]
	
	@pass as nvarchar(256),
	@uname as nvarchar(256)
	
AS
BEGIN
	
	update StaffMst set Pass=@pass where Uname=@uname
	
	
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[StaffMst_SELECT_BYID]
	
	@SID AS INT
AS
BEGIN
	
	SELECT * FROM StaffMst WHERE SID=@SID
	
	
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[StaffMST_SELECT_by_uname]
	@uname as nvarchar(256)
	
AS
BEGIN
	
	SELECT * FROM StaffMst where Uname=@uname 
	
	
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[StaffMST_SELECT_by_emial]
	@email as nvarchar(256)
	
AS
BEGIN
	
	SELECT * FROM StaffMst where Email=@email
	
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[StaffMST_SELECT]
	
AS
BEGIN
	
	SELECT * FROM StaffMst
	
	
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[staffmst_INSERT]
	
	@name as nvarchar(256),
	@stdname as nvarchar(256),
	@email as nvarchar(256),
	@mobile as nvarchar(256),
	@image as nvarchar(256),
	@qualification as nvarchar(256),
	@add as nvarchar(256),
	@city as nvarchar(256),
	@pincode as nvarchar(256),
	@uname as nvarchar(256),
	@pass as nvarchar(256),
	@gender as nvarchar(256)
	

	
	
	
AS
BEGIN
	
	INSERT INTO StaffMst VALUES(@name,@stdname,@email,@mobile,@image,@qualification,@add,@city,@pincode,@uname,@pass,@gender,GETDATE())
	
	
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[StaffMst_DELETE]
	
	@SID AS INT
AS
BEGIN
	
DELETE FROM StaffMst WHERE SID=@SID
	
	
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STDMST_UPDATE]
	
	@SID AS INT,
	@SNAME AS NVARCHAR(256)
AS
BEGIN
	
UPDATE StdMst SET StdName=@SNAME, EDate=GETDATE() WHERE SID=@SID
	
	
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STDMST_SELECT_BYID]
	
	@ID AS INT
AS
BEGIN
	
	SELECT * FROM StdMst WHERE SID=@ID
	
	
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STDMST_SELECT]
	
AS
BEGIN
	
	SELECT * FROM StdMst
	
	
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STDMST_INSERT]
	
	@STDNAME AS NVARCHAR(256)
AS
BEGIN
	
	INSERT INTO StdMst VALUES(@STDNAME,GETDATE())
	
	
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STDMST_DELETE]
	
	@SID AS INT
AS
BEGIN
	
DELETE FROM StdMst WHERE SID=@SID
	
	
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[LeaveMst_UPDATE_STATU]
	
	@LID AS INT,	
	@replay as nvarchar(256)
AS
BEGIN
	
UPDATE LeaveMst SET Reply=@replay, EDate=GETDATE() WHERE LID=@LID
	
	
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[LeaveMst_UPDATE]
	
	@LID AS INT,
	@rollno AS NVARCHAR(256),
	@name AS NVARCHAR(256),
	@sname AS nvarchar(256),
	@message as nvarchar(256),
	@nodays as int,
	@replay as nvarchar(256)
AS
BEGIN
	
UPDATE LeaveMst SET Rollno=@rollno,Name=@name,Stdname=@sname,Message=@message,Reply=@replay, EDate=GETDATE() WHERE LID=@LID
	
	
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Leavemst_SELECT_STD_STATUS]
	@std as nvarchar(256),
	@status as nvarchar(256)
AS
BEGIN
	
	SELECT * FROM LeaveMst where StdName=@std and Reply=@status
	
	
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Leavemst_SELECT_STD]
	@std as nvarchar(256)
AS
BEGIN
	
	SELECT * FROM LeaveMst where StdName=@std
	
	
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Leavemst_SELECT_rollno]
	@rno as nvarchar(256)
AS
BEGIN
	
	SELECT * FROM LeaveMst where Rollno=@rno
	
	
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[Leavemst_SELECT_BYID]
	
	@LID AS INT
AS
BEGIN
	
	SELECT * FROM LeaveMst WHERE LID=@LID
	
	
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Leavemst_SELECT]
	
AS
BEGIN
	
	SELECT * FROM LeaveMst
	
	
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Leavemst_INSERT]
	
	@rollno AS NVARCHAR(256),
	@name AS NVARCHAR(256),
	@stdname AS nvarchar(256),
	@message AS nvarchar(256),	
	@nodays as int,
	@replay AS nvarchar(256)
AS
BEGIN
	
	INSERT INTO LeaveMst VALUES(@rollno,@name,@stdname,@message,@nodays,@replay,GETDATE())
	
	
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[Leavemst_DELETE]
	
	@LID AS INT
AS
BEGIN
	
DELETE FROM LeaveMst WHERE LID=@LID
	
	
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FeedBackMst_SELECT]
	
AS
BEGIN
	
	SELECT * FROM FeedBackMst
	
	
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FeedBackMst_INSERT]
	
	@EMAIL AS NVARCHAR(256),
	@MOB AS NVARCHAR(256),
	@FEED AS NVARCHAR(256)
AS
BEGIN
	
INSERT INTO FeedBackMst VALUES (@EMAIL,@MOB,@FEED,GETDATE())
	
	
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FeedBackMst_DELETE]
	
@FID AS  INT
AS
BEGIN
	
DELETE FROM FeedBackMst WHERE FID=@FID
	
	
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DIVMST_UPDATE]
	
	@DID AS INT,
	@DIVNAME AS NVARCHAR(256),
	@STDNAME AS NVARCHAR(256),
	@SEAT AS INT
AS
BEGIN
	
UPDATE DivMst SET StdName=@STDNAME,DIVNAME=@DIVNAME,Seat=@SEAT, EDate=GETDATE() WHERE DID=@DID
	
	
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DIVMST_SELECT_BYID]
	
	@DID AS INT
AS
BEGIN
	
	SELECT * FROM DivMst WHERE DID=@DID
	
	
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DIVMST_SELECT_BY_STD]
	@STD AS NVARCHAR(256)
AS
BEGIN
	
	SELECT * FROM DivMst WHERE StdName=@STD
	
	
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DIVMST_SELECT]
	
AS
BEGIN
	
	SELECT * FROM DivMst
	
	
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[DivMst_INSERT]
	
	@DIVNAME AS NVARCHAR(256),
	@STDNAME AS NVARCHAR(256),
	@SEAT AS INT
	
AS
BEGIN
	
	INSERT INTO DivMst VALUES(@DIVNAME,@STDNAME,@SEAT,GETDATE())
	
	
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DivMst_DELETE]
	
	@DID AS INT
AS
BEGIN
	
DELETE FROM DivMst WHERE DID=@DID
	
	
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Complainmst_UPDATE_Reply]
	
	@CID AS INT,
	@replay AS Nvarchar(256)
	
	
AS
BEGIN
	
UPDATE Complainmst SET Reply=@replay,Edate=GETDATE() where CID=@CID 
	
	
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Complainmst_UPDATE]
	
	@CID AS INT,
	@rollno AS NVARCHAR(256),
	@name AS NVARCHAR(256),
	@subject AS Nvarchar(256),
	@message AS Nvarchar(256),
	@replay AS Nvarchar(256)
	
	
AS
BEGIN
	
UPDATE Complainmst SET Rollno=@rollno,Name=@name,Subject=@subject,Message=@message,Reply=@replay,Edate=GETDATE() where CID=@CID 
	
	
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Complainmst_SELECT_FOr_Teacher]
	@rno as nvarchar(200)
AS
BEGIN
	
	SELECT * FROM Complainmst where Rollno like @rno order by CID desc
	
	
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[Complainmst_SELECT_BYID]
	
	@CID AS INT
AS
BEGIN
	
	SELECT * FROM Complainmst WHERE CID=@CID
	
	
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Complainmst_SELECT_BY_ROLLNO]
	
	@roll as nvarchar(256)
	
	AS
BEGIN
	
	SELECT * FROM Complainmst WHERE Rollno=@roll
	
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[Complainmst_SELECT]
	
AS
BEGIN
	
	SELECT * FROM Complainmst
	
	
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[Complainmst_INSERT]
	
	@rollno AS NVARCHAR(256),
	@name AS NVARCHAR(256),
	@subject AS NVARCHAR(256),
	@message AS NVARCHAR(256),
	@replay AS NVARCHAR(256)
	
	
	
AS
BEGIN
	
	INSERT INTO Complainmst VALUES(@rollno,@name,@subject,@message,@replay,GETDATE())
	
	
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Complainmst_DELETE]
	
	@CID AS INT
AS
BEGIN
	
DELETE FROM Complainmst WHERE CID=@CID
	
	
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Attendancemst_UPDATE]
	
	@AID AS INT,
	@rollno AS NVARCHAR(256),
	@name AS NVARCHAR(256),
	@date AS datetime,
	@status as nvarchar(256),
	@staffname as nvarchar(256),
	@edate as datetime
AS
BEGIN
	
UPDATE Attendancemst SET Rollno=@rollno,Name=@name,Date=@date,Status=@status,Staffname=@staffname, EDate=GETDATE() WHERE AID=@AID
	
	
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Attendancemst_SELECT_Report]
	
	@rollno as nvarchar(256),
	@date as nvarchar(500)
AS
BEGIN
	
	SELECT * FROM Attendancemst where Rollno like @rollno and Date=@date
	
	
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Attendancemst_SELECT_BYID]
	
	@AID AS INT
AS
BEGIN
	
	SELECT * FROM Attendancemst WHERE AID=@AID
	
	
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Attendancemst_SELECT_BY_ROLLNO_month]
	
	@rollno as nvarchar(256),
	@month as nvarchar(256)
	
AS
BEGIN
	
	SELECT * FROM Attendancemst where Rollno = @rollno and Date like @month
	
	
	
	
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Attendancemst_SELECT_BY_ROLLNO_and_STATUS]
	
	@rollno as nvarchar(256),
	@status as nvarchar(256)
	
AS
BEGIN
	
	SELECT * FROM Attendancemst where Rollno = @rollno  and Status=@status
	
	
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Attendancemst_SELECT_BY_ROLLNO]
	
	@rollno as nvarchar(256)
	
AS
BEGIN
	
	SELECT * FROM Attendancemst where Rollno = @rollno 
	
	
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Attendancemst_SELECT_Allready_Saved]
	
	@rollno as nvarchar(256),
	@date as nvarchar(500)
AS
BEGIN
	
	SELECT * FROM Attendancemst where Rollno=@rollno and Date=@date
	
	
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Attendancemst_SELECT]
	
AS
BEGIN
	
	SELECT * FROM Attendancemst
	
	
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Attendancemst_INSERT]
	
	@rollno AS NVARCHAR(256),
	@name AS NVARCHAR(256),
	@date AS nvarchar(500),
	@status as nvarchar(256),
	@staffname as nvarchar(256)
	
	
AS
BEGIN
	
	INSERT INTO Attendancemst VALUES(@rollno,@name,@date,@status,@staffname,GETDATE())
	
	
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Attendancemst_DELETE]
	
	@AID AS INT
AS
BEGIN
	
DELETE FROM Attendancemst WHERE AID=@AID
	
	
END
GO

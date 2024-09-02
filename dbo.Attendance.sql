CREATE TABLE [dbo].[Attendance] (
    [AttendanceId] INT           NOT NULL,
    [Id]    NVARCHAR (50) NULL,
    [subject]      VARCHAR (50)  NULL,
    [date]         DATE          NULL,
    PRIMARY KEY CLUSTERED ([AttendanceId] ASC),
	FOREGN KEY Id REFERENCE AddStudent(Id)
);


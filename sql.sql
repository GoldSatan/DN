USE [master];
EXEC xp_instance_regwrite N'HKEY_LOCAL_MACHINE', 
     N'Software\Microsoft\MSSQLServer\MSSQLServer',
     N'LoginMode', REG_DWORD, 2;
GO
CREATE LOGIN WEB 
    WITH PASSWORD    = N'23062003Vadim',
    CHECK_POLICY     = ON,
    CHECK_EXPIRATION = OFF;
GO
EXEC sp_addsrvrolemember 
    @loginame = N'WEB', 
    @rolename = N'sysadmin';
GO
CREATE LOGIN PublicApi
    WITH PASSWORD    = N'23062003Vad',
    CHECK_POLICY     = ON,
    CHECK_EXPIRATION = OFF;
GO
EXEC sp_addsrvrolemember 
    @loginame = N'PublicApi', 
    @rolename = N'sysadmin';
GO
exit

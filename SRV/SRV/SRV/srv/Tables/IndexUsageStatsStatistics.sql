﻿CREATE TABLE [srv].[IndexUsageStatsStatistics] (
    [SERVER]               NVARCHAR (128) NOT NULL,
    [SCHEMA_NAME]          NVARCHAR (128) NULL,
    [OBJECT NAME]          NVARCHAR (128) NULL,
    [INDEX NAME]           [sysname]      NULL,
    [index_advantage]      BIGINT         NULL,
    [USER_SEEKS]           BIGINT         NOT NULL,
    [USER_SCANS]           BIGINT         NOT NULL,
    [USER_LOOKUPS]         BIGINT         NOT NULL,
    [USER_UPDATES]         BIGINT         NOT NULL,
    [Last_User_Seek]       DATETIME       NULL,
    [Last_User_Scan]       DATETIME       NULL,
    [Last_User_Lookup]     DATETIME       NULL,
    [Last_User_Update]     DATETIME       NULL,
    [System_Seeks]         BIGINT         NOT NULL,
    [System_Scans]         BIGINT         NOT NULL,
    [System_Lookups]       BIGINT         NOT NULL,
    [System_Updates]       BIGINT         NOT NULL,
    [Last_System_Seek]     DATETIME       NULL,
    [Last_System_Scan]     DATETIME       NULL,
    [Last_System_Lookup]   DATETIME       NULL,
    [Last_System_Update]   DATETIME       NULL,
    [schema_id]            INT            NOT NULL,
    [object_id]            INT            NOT NULL,
    [index_id]             INT            NOT NULL,
    [ObjectType]           CHAR (2)       NULL,
    [TYPE_DESC_OBJECT]     NVARCHAR (60)  NULL,
    [IndexType]            TINYINT        NOT NULL,
    [TYPE_DESC_INDEX]      NVARCHAR (60)  NULL,
    [Is_Unique]            BIT            NULL,
    [Data_Space_ID]        INT            NULL,
    [Ignore_Dup_Key]       BIT            NULL,
    [Is_Primary_Key]       BIT            NULL,
    [Is_Unique_Constraint] BIT            NULL,
    [Fill_Factor]          TINYINT        NOT NULL,
    [Is_Padded]            BIT            NULL,
    [Is_Disabled]          BIT            NULL,
    [Is_Hypothetical]      BIT            NULL,
    [Allow_Row_Locks]      BIT            NULL,
    [Allow_Page_Locks]     BIT            NULL,
    [Has_Filter]           BIT            NULL,
    [Filter_Definition]    NVARCHAR (MAX) NULL,
    [Columns]              NVARCHAR (MAX) NULL,
    [IncludeColumns]       NVARCHAR (MAX) NULL,
    [InsertUTCDate]        DATETIME       CONSTRAINT [DF_IndexUsageStatsStatistics_InsertUTCDate] DEFAULT (getutcdate()) NOT NULL
);


GO
CREATE CLUSTERED INDEX [indInsertUTCDate]
    ON [srv].[IndexUsageStatsStatistics]([InsertUTCDate] ASC) WITH (FILLFACTOR = 95);


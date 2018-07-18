USE [NextTripDB]
GO

/****** Object:  Table [dbo].[NextTrip]    Script Date: 4/3/2018 11:43:24 AM ******/
DROP TABLE [dbo].[NextTrip]
GO

/****** Object:  Table [dbo].[NextTrip]    Script Date: 4/3/2018 11:43:24 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[NextTrip](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Location] [varchar](250) NULL,
	[ImageUrl] [varchar](250) NULL,
	[Description] [text] NULL,
 CONSTRAINT [PK_NextTrip] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

USE [NextTripDB]
GO

/****** Object:  Table [dbo].[NextTripItem]    Script Date: 4/3/2018 11:43:24 AM ******/
DROP TABLE [dbo].[NextTripItem]
GO

/****** Object:  Table [dbo].[NextTripItem]    Script Date: 4/3/2018 11:43:24 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[NextTripItem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NextTripId] int NOT NULL,
	[Name] [varchar](250) NOT NULL,
	[Description] [text] NULL,
	FOREIGN KEY (NextTripId) REFERENCES NextTrip(ID),
 CONSTRAINT [PK_NextTripItem] PRIMARY KEY CLUSTERED
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


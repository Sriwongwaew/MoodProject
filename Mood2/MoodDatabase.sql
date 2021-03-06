USE [master]
GO
/****** Object:  Database [Mood2]    Script Date: 2018-10-23 10:46:23 ******/
CREATE DATABASE [Mood2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Mood2', FILENAME = N'C:\Users\Administrator\Mood2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Mood2_log', FILENAME = N'C:\Users\Administrator\Mood2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Mood2] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Mood2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Mood2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Mood2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Mood2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Mood2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Mood2] SET ARITHABORT OFF 
GO
ALTER DATABASE [Mood2] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Mood2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Mood2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Mood2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Mood2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Mood2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Mood2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Mood2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Mood2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Mood2] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Mood2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Mood2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Mood2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Mood2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Mood2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Mood2] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [Mood2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Mood2] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Mood2] SET  MULTI_USER 
GO
ALTER DATABASE [Mood2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Mood2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Mood2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Mood2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Mood2] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Mood2] SET QUERY_STORE = OFF
GO
USE [Mood2]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [Mood2]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2018-10-23 10:46:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 2018-10-23 10:46:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2018-10-23 10:46:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2018-10-23 10:46:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2018-10-23 10:46:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2018-10-23 10:46:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2018-10-23 10:46:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 2018-10-23 10:46:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmotionData]    Script Date: 2018-10-23 10:46:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmotionData](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_EmotionData] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[History]    Script Date: 2018-10-23 10:46:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[History](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DateWhenPlayed] [datetime2](7) NOT NULL,
	[Emotion] [nvarchar](max) NULL,
	[Playlist] [nvarchar](max) NULL,
 CONSTRAINT [PK_History] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Playlist]    Script Date: 2018-10-23 10:46:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Playlist](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PlaylistLink] [nvarchar](max) NULL,
	[EmotionDataId] [int] NOT NULL,
 CONSTRAINT [PK_Playlist] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20181022131224_playlist9', N'2.1.3-rtm-32065')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20181022131414_playlist10', N'2.1.3-rtm-32065')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20181023081946_NyDatabas', N'2.1.3-rtm-32065')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20181023084243_new-update', N'2.1.3-rtm-32065')
SET IDENTITY_INSERT [dbo].[EmotionData] ON 

INSERT [dbo].[EmotionData] ([Id], [Name]) VALUES (1, N'anger')
INSERT [dbo].[EmotionData] ([Id], [Name]) VALUES (2, N'happiness')
INSERT [dbo].[EmotionData] ([Id], [Name]) VALUES (3, N'fear')
INSERT [dbo].[EmotionData] ([Id], [Name]) VALUES (4, N'sadness')
INSERT [dbo].[EmotionData] ([Id], [Name]) VALUES (5, N'surprise')
INSERT [dbo].[EmotionData] ([Id], [Name]) VALUES (6, N'neutral')
SET IDENTITY_INSERT [dbo].[EmotionData] OFF
SET IDENTITY_INSERT [dbo].[History] ON 

INSERT [dbo].[History] ([Id], [DateWhenPlayed], [Emotion], [Playlist]) VALUES (1, CAST(N'2018-10-23T10:43:44.2773135' AS DateTime2), N'neutral', N'https://open.spotify.com/embed/user/spotify/playlist/37i9dQZF1DWTkxQvqMy4WW')
SET IDENTITY_INSERT [dbo].[History] OFF
SET IDENTITY_INSERT [dbo].[Playlist] ON 

INSERT [dbo].[Playlist] ([Id], [PlaylistLink], [EmotionDataId]) VALUES (1, N'https://open.spotify.com/embed/user/artkul/playlist/0ybhZEyc8RrHsVDFt9x5CI', 1)
INSERT [dbo].[Playlist] ([Id], [PlaylistLink], [EmotionDataId]) VALUES (2, N'https://open.spotify.com/embed/user/1239561108/playlist/29EOIjr2saw00KxpYdYSQM', 1)
INSERT [dbo].[Playlist] ([Id], [PlaylistLink], [EmotionDataId]) VALUES (3, N'https://open.spotify.com/embed/user/dvaughan2021/playlist/5Am1VHtu0oJAc5omSVHvat', 1)
INSERT [dbo].[Playlist] ([Id], [PlaylistLink], [EmotionDataId]) VALUES (4, N'https://open.spotify.com/embed/user/spotify/playlist/37i9dQZF1DXdPec7aLTmlC', 2)
INSERT [dbo].[Playlist] ([Id], [PlaylistLink], [EmotionDataId]) VALUES (5, N'https://open.spotify.com/embed/show/5XhS5WBxLYgN3S9KhEyrrF', 3)
INSERT [dbo].[Playlist] ([Id], [PlaylistLink], [EmotionDataId]) VALUES (6, N'https://open.spotify.com/embed/user/spotify/playlist/37i9dQZF1DX6SpcerLn1dx', 3)
INSERT [dbo].[Playlist] ([Id], [PlaylistLink], [EmotionDataId]) VALUES (7, N'https://open.spotify.com/embed/user/warnermusicus/playlist/59njg5yJwvLH2vAuaZdAZD', 3)
INSERT [dbo].[Playlist] ([Id], [PlaylistLink], [EmotionDataId]) VALUES (8, N'https://open.spotify.com/embed/user/spotify/playlist/37i9dQZF1DX3YSRoSdA634', 4)
INSERT [dbo].[Playlist] ([Id], [PlaylistLink], [EmotionDataId]) VALUES (9, N'https://open.spotify.com/embed/user/spotify/playlist/37i9dQZF1DX7qK8ma5wgG1', 4)
INSERT [dbo].[Playlist] ([Id], [PlaylistLink], [EmotionDataId]) VALUES (10, N'https://open.spotify.com/embed/user/funnybunny000000/playlist/4EoPt05ztUjVaujcWbUL2Z', 4)
INSERT [dbo].[Playlist] ([Id], [PlaylistLink], [EmotionDataId]) VALUES (11, N'https://open.spotify.com/embed/user/spotify/playlist/37i9dQZF1DX0Uv9tZ47pWo', 2)
INSERT [dbo].[Playlist] ([Id], [PlaylistLink], [EmotionDataId]) VALUES (12, N'https://open.spotify.com/embed/user/spotify/playlist/37i9dQZF1DWVs8I62NcHks', 2)
INSERT [dbo].[Playlist] ([Id], [PlaylistLink], [EmotionDataId]) VALUES (13, N'https://open.spotify.com/embed/user/ofinns/playlist/61CPcnHmTVMloD399c76et', 5)
INSERT [dbo].[Playlist] ([Id], [PlaylistLink], [EmotionDataId]) VALUES (14, N'https://open.spotify.com/embed/user/juandurfelworld/playlist/1SUu5S4mKpyOEeuImxGM64', 5)
INSERT [dbo].[Playlist] ([Id], [PlaylistLink], [EmotionDataId]) VALUES (15, N'https://open.spotify.com/embed/user/spotify/playlist/37i9dQZF1DWSEMER0I7qzl', 5)
INSERT [dbo].[Playlist] ([Id], [PlaylistLink], [EmotionDataId]) VALUES (16, N'https://open.spotify.com/embed/user/spotify/playlist/37i9dQZF1DXbITWG1ZJKYt', 6)
INSERT [dbo].[Playlist] ([Id], [PlaylistLink], [EmotionDataId]) VALUES (17, N'https://open.spotify.com/embed/user/spotify/playlist/37i9dQZF1DWTkxQvqMy4WW', 6)
INSERT [dbo].[Playlist] ([Id], [PlaylistLink], [EmotionDataId]) VALUES (18, N'https://open.spotify.com/embed/user/foilism/playlist/37qanRa2o6oa2l0TkMNdnD', 6)
SET IDENTITY_INSERT [dbo].[Playlist] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 2018-10-23 10:46:23 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 2018-10-23 10:46:23 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 2018-10-23 10:46:23 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 2018-10-23 10:46:23 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 2018-10-23 10:46:23 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 2018-10-23 10:46:23 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 2018-10-23 10:46:23 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Playlist_EmotionDataId]    Script Date: 2018-10-23 10:46:23 ******/
CREATE NONCLUSTERED INDEX [IX_Playlist_EmotionDataId] ON [dbo].[Playlist]
(
	[EmotionDataId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Playlist]  WITH CHECK ADD  CONSTRAINT [FK_Playlist_EmotionData_EmotionDataId] FOREIGN KEY([EmotionDataId])
REFERENCES [dbo].[EmotionData] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Playlist] CHECK CONSTRAINT [FK_Playlist_EmotionData_EmotionDataId]
GO
USE [master]
GO
ALTER DATABASE [Mood2] SET  READ_WRITE 
GO

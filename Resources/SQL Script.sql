USE [master]
GO
/****** Object:  Database [BookDb]    Script Date: 02-11-2023 11.19.12 PM ******/
CREATE DATABASE [BookDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BookDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\BookDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BookDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\BookDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BookDb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BookDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BookDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BookDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BookDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BookDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BookDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [BookDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BookDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BookDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BookDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BookDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BookDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BookDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BookDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BookDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BookDb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BookDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BookDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BookDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BookDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BookDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BookDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BookDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BookDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BookDb] SET  MULTI_USER 
GO
ALTER DATABASE [BookDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BookDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BookDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BookDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BookDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BookDb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [BookDb] SET QUERY_STORE = OFF
GO
USE [BookDb]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 02-11-2023 11.19.12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[BookId] [int] IDENTITY(1,1) NOT NULL,
	[Publisher] [nvarchar](100) NULL,
	[Title] [nvarchar](250) NULL,
	[AuthorLastName] [nvarchar](100) NULL,
	[AuthorFirstName] [nvarchar](100) NULL,
	[Price] [decimal](18, 2) NULL,
	[YearOfPublication] [int] NULL,
	[FootNotes] [nvarchar](500) NULL,
	[CreatedDate] [date] NULL,
	[UpdatedDate] [date] NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[BookId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Book] ON 

INSERT [dbo].[Book] ([BookId], [Publisher], [Title], [AuthorLastName], [AuthorFirstName], [Price], [YearOfPublication], [FootNotes], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (1, N'Penguin Books', N'1984', N'Orwell', N'George', CAST(14.99 AS Decimal(18, 2)), 1949, N'A dystopian novel that explores themes of totalitarianism, censorship, and surveillance.', CAST(N'2023-11-01' AS Date), NULL, 0)
INSERT [dbo].[Book] ([BookId], [Publisher], [Title], [AuthorLastName], [AuthorFirstName], [Price], [YearOfPublication], [FootNotes], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (2, N'HarperCollins', N'The Hobbit', N'Tolkien', N'J.R.R.', CAST(12.99 AS Decimal(18, 2)), 1937, N'An epic high-fantasy trilogy filled with adventure, magic, and a quest to destroy a powerful ring.', CAST(N'2023-11-01' AS Date), NULL, 0)
INSERT [dbo].[Book] ([BookId], [Publisher], [Title], [AuthorLastName], [AuthorFirstName], [Price], [YearOfPublication], [FootNotes], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (3, N'Random House', N'Harry Potter and the Philosopher Stone', N'Rowling', N'J.K.', CAST(16.99 AS Decimal(18, 2)), 1997, N'The start of the beloved series about a young wizard''s adventures at Hogwarts School of Witchcraft and Wizardry.', CAST(N'2023-11-01' AS Date), NULL, 0)
INSERT [dbo].[Book] ([BookId], [Publisher], [Title], [AuthorLastName], [AuthorFirstName], [Price], [YearOfPublication], [FootNotes], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (4, N'Vintage', N'The Great Gatsby', N'Fitzgerald', N'F. Scott', CAST(11.99 AS Decimal(18, 2)), 1925, N'A novella about an old Cuban fisherman''s epic battle with a giant marlin.', CAST(N'2023-11-01' AS Date), NULL, 0)
INSERT [dbo].[Book] ([BookId], [Publisher], [Title], [AuthorLastName], [AuthorFirstName], [Price], [YearOfPublication], [FootNotes], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (5, N'Simon & Schuster', N'The Old Man and the Sea', N'Hemingway', N'Ernest', CAST(9.99 AS Decimal(18, 2)), 1952, N'An epic high-fantasy trilogy filled with adventure, magic, and a quest to destroy a powerful ring.', CAST(N'2023-11-01' AS Date), NULL, 0)
INSERT [dbo].[Book] ([BookId], [Publisher], [Title], [AuthorLastName], [AuthorFirstName], [Price], [YearOfPublication], [FootNotes], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (6, N'Penguin Classics', N'Pride and Prejudice', N'Austen', N'Jane', CAST(13.99 AS Decimal(18, 2)), 1813, N'A novella about an old Cuban fisherman''s epic battle with a giant marlin.', CAST(N'2023-11-01' AS Date), NULL, 0)
INSERT [dbo].[Book] ([BookId], [Publisher], [Title], [AuthorLastName], [AuthorFirstName], [Price], [YearOfPublication], [FootNotes], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (7, N'Scholastic', N'Harry Potter and the Chamber of Secrets', N'Rowling', N'J.K.', CAST(14.99 AS Decimal(18, 2)), 1998, N'A surreal tale of a man who wakes up as a giant insect and the absurdity of human existence.', CAST(N'2023-11-01' AS Date), NULL, 0)
INSERT [dbo].[Book] ([BookId], [Publisher], [Title], [AuthorLastName], [AuthorFirstName], [Price], [YearOfPublication], [FootNotes], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (8, N'Harper Lee', N'To Kill a Mockingbird', N'Lee', N'Harper', CAST(12.99 AS Decimal(18, 2)), 1960, N'An epic high-fantasy trilogy filled with adventure, magic, and a quest to destroy a powerful ring.', CAST(N'2023-11-01' AS Date), NULL, 0)
INSERT [dbo].[Book] ([BookId], [Publisher], [Title], [AuthorLastName], [AuthorFirstName], [Price], [YearOfPublication], [FootNotes], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (9, N'Penguin Classics', N'The Odyssey', N'Homer', N'Homer', CAST(17.99 AS Decimal(18, 2)), 1908, N'The start of the beloved series about a young wizard''s adventures at Hogwarts School of Witchcraft and Wizardry.', CAST(N'2023-11-01' AS Date), NULL, 0)
INSERT [dbo].[Book] ([BookId], [Publisher], [Title], [AuthorLastName], [AuthorFirstName], [Price], [YearOfPublication], [FootNotes], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (10, N'Vintage', N'Of Mice and Men', N'Steinbeck', N'John', CAST(10.99 AS Decimal(18, 2)), 1937, N'A controversial novel narrated by a literature professor with a disturbing obsession.', CAST(N'2023-11-01' AS Date), NULL, 0)
INSERT [dbo].[Book] ([BookId], [Publisher], [Title], [AuthorLastName], [AuthorFirstName], [Price], [YearOfPublication], [FootNotes], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (11, N'Simon & Schuster', N'War and Peace', N'Tolstoy', N'Leo', CAST(24.99 AS Decimal(18, 2)), 1869, N'The start of the beloved series about a young wizard''s adventures at Hogwarts School of Witchcraft and Wizardry.', CAST(N'2023-11-01' AS Date), NULL, 0)
INSERT [dbo].[Book] ([BookId], [Publisher], [Title], [AuthorLastName], [AuthorFirstName], [Price], [YearOfPublication], [FootNotes], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (12, N'HarperCollins', N'The Shining', N'King', N'Stephen', CAST(15.99 AS Decimal(18, 2)), 1977, N'A story of wealth, excess, and the American Dream in the Roaring Twenties.', CAST(N'2023-11-01' AS Date), NULL, 0)
INSERT [dbo].[Book] ([BookId], [Publisher], [Title], [AuthorLastName], [AuthorFirstName], [Price], [YearOfPublication], [FootNotes], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (13, N'Penguin Books', N'Jane Eyre', N'Bronte', N'Charlotte', CAST(13.99 AS Decimal(18, 2)), 1847, N'A classic novel of manners and social dynamics in early 19th-century England.', CAST(N'2023-11-01' AS Date), NULL, 0)
INSERT [dbo].[Book] ([BookId], [Publisher], [Title], [AuthorLastName], [AuthorFirstName], [Price], [YearOfPublication], [FootNotes], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (14, N'Random House', N'Mrs. Dalloway', N'Woolf', N'Virginia', CAST(12.99 AS Decimal(18, 2)), 1925, N'The start of the beloved series about a young wizard''s adventures at Hogwarts School of Witchcraft and Wizardry.', CAST(N'2023-11-01' AS Date), NULL, 0)
INSERT [dbo].[Book] ([BookId], [Publisher], [Title], [AuthorLastName], [AuthorFirstName], [Price], [YearOfPublication], [FootNotes], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (15, N'Vintage', N'Crime and Punishment', N'Dostoevsky', N'Fyodor', CAST(18.99 AS Decimal(18, 2)), 1866, N'A surreal tale of a man who wakes up as a giant insect and the absurdity of human existence.', CAST(N'2023-11-01' AS Date), NULL, 0)
INSERT [dbo].[Book] ([BookId], [Publisher], [Title], [AuthorLastName], [AuthorFirstName], [Price], [YearOfPublication], [FootNotes], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (16, N'HarperCollins', N'Lord of the Flies', N'Golding', N'William', CAST(11.99 AS Decimal(18, 2)), 1954, N'A controversial novel narrated by a literature professor with a disturbing obsession.', CAST(N'2023-11-01' AS Date), NULL, 0)
INSERT [dbo].[Book] ([BookId], [Publisher], [Title], [AuthorLastName], [AuthorFirstName], [Price], [YearOfPublication], [FootNotes], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (17, N'Penguin Books', N'Great Expectations', N'Dickens', N'Charles', CAST(14.99 AS Decimal(18, 2)), 1861, N'A story of wealth, excess, and the American Dream in the Roaring Twenties.', CAST(N'2023-11-01' AS Date), NULL, 0)
INSERT [dbo].[Book] ([BookId], [Publisher], [Title], [AuthorLastName], [AuthorFirstName], [Price], [YearOfPublication], [FootNotes], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (18, N'Vintage', N'Lolita', N'Nabokov', N'Vladimir', CAST(16.99 AS Decimal(18, 2)), 1955, N'The start of the beloved series about a young wizard''s adventures at Hogwarts School of Witchcraft and Wizardry.', CAST(N'2023-11-01' AS Date), NULL, 0)
INSERT [dbo].[Book] ([BookId], [Publisher], [Title], [AuthorLastName], [AuthorFirstName], [Price], [YearOfPublication], [FootNotes], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (19, N'Simon & Schuster', N'Moby-Dick', N'Melville', N'Herman', CAST(19.99 AS Decimal(18, 2)), 1851, N'The start of the beloved series about a young wizard''s adventures at Hogwarts School of Witchcraft and Wizardry.', CAST(N'2023-11-01' AS Date), NULL, 0)
INSERT [dbo].[Book] ([BookId], [Publisher], [Title], [AuthorLastName], [AuthorFirstName], [Price], [YearOfPublication], [FootNotes], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (20, N'Harper Lee', N'The Picture of Dorian Gray', N'Wilde', N'Oscar', CAST(13.99 AS Decimal(18, 2)), 1890, N'A classic novel of manners and social dynamics in early 19th-century England.', CAST(N'2023-11-01' AS Date), NULL, 0)
INSERT [dbo].[Book] ([BookId], [Publisher], [Title], [AuthorLastName], [AuthorFirstName], [Price], [YearOfPublication], [FootNotes], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (21, N'Penguin Books', N'1984', N'Orwell', N'George', CAST(14.99 AS Decimal(18, 2)), 1949, N'A dystopian novel that explores themes of totalitarianism, censorship, and surveillance.', CAST(N'2023-11-02' AS Date), NULL, 0)
INSERT [dbo].[Book] ([BookId], [Publisher], [Title], [AuthorLastName], [AuthorFirstName], [Price], [YearOfPublication], [FootNotes], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (22, N'HarperCollins', N'The Lord of the Rings', N'Tolkien', N'J.R.R.', CAST(29.99 AS Decimal(18, 2)), 1954, N'An epic high-fantasy trilogy filled with adventure, magic, and a quest to destroy a powerful ring.', CAST(N'2023-11-02' AS Date), NULL, 0)
INSERT [dbo].[Book] ([BookId], [Publisher], [Title], [AuthorLastName], [AuthorFirstName], [Price], [YearOfPublication], [FootNotes], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (23, N'Random House', N'Harry Potter and the Sorcerer''s Stone', N'Rowling', N'J.K.', CAST(12.99 AS Decimal(18, 2)), 1997, N'The start of the beloved series about a young wizard''s adventures at Hogwarts School of Witchcraft and Wizardry.', CAST(N'2023-11-02' AS Date), NULL, 0)
INSERT [dbo].[Book] ([BookId], [Publisher], [Title], [AuthorLastName], [AuthorFirstName], [Price], [YearOfPublication], [FootNotes], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (24, N'Vintage', N'Pride and Prejudice', N'Austen', N'Jane', CAST(9.99 AS Decimal(18, 2)), 1813, N'A classic novel of manners and social dynamics in early 19th-century England.', CAST(N'2023-11-02' AS Date), NULL, 0)
INSERT [dbo].[Book] ([BookId], [Publisher], [Title], [AuthorLastName], [AuthorFirstName], [Price], [YearOfPublication], [FootNotes], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (25, N'Houghton Mifflin', N'The Great Gatsby', N'Fitzgerald', N'F. Scott', CAST(15.99 AS Decimal(18, 2)), 1925, N'A story of wealth, excess, and the American Dream in the Roaring Twenties.', CAST(N'2023-11-02' AS Date), NULL, 0)
INSERT [dbo].[Book] ([BookId], [Publisher], [Title], [AuthorLastName], [AuthorFirstName], [Price], [YearOfPublication], [FootNotes], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (26, N'Vintage', N'The Metamorphosis', N'Kafka', N'Franz', CAST(8.99 AS Decimal(18, 2)), 1915, N'A surreal tale of a man who wakes up as a giant insect and the absurdity of human existence.', CAST(N'2023-11-02' AS Date), NULL, 0)
INSERT [dbo].[Book] ([BookId], [Publisher], [Title], [AuthorLastName], [AuthorFirstName], [Price], [YearOfPublication], [FootNotes], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (27, N'HarperCollins', N'To Kill a Mockingbird', N'Lee', N'Harper', CAST(11.99 AS Decimal(18, 2)), 1960, N'A poignant exploration of racial injustice in the American South during the 1930s.', CAST(N'2023-11-02' AS Date), NULL, 0)
INSERT [dbo].[Book] ([BookId], [Publisher], [Title], [AuthorLastName], [AuthorFirstName], [Price], [YearOfPublication], [FootNotes], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (28, N'Scholastic', N'The Hunger Games', N'Collins', N'Suzanne', CAST(13.99 AS Decimal(18, 2)), 2008, N'A dystopian trilogy where teenagers fight to the death in a televised competition.', CAST(N'2023-11-02' AS Date), NULL, 0)
INSERT [dbo].[Book] ([BookId], [Publisher], [Title], [AuthorLastName], [AuthorFirstName], [Price], [YearOfPublication], [FootNotes], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (29, N'Simon & Schuster', N'The Old Man and the Sea', N'Hemingway', N'Ernest', CAST(7.99 AS Decimal(18, 2)), 1952, N'A novella about an old Cuban fisherman''s epic battle with a giant marlin.', CAST(N'2023-11-02' AS Date), NULL, 0)
INSERT [dbo].[Book] ([BookId], [Publisher], [Title], [AuthorLastName], [AuthorFirstName], [Price], [YearOfPublication], [FootNotes], [CreatedDate], [UpdatedDate], [IsDeleted]) VALUES (30, N'Vintage', N'Lolita', N'Nabokov', N'Vladimir', CAST(12.99 AS Decimal(18, 2)), 1955, N'A controversial novel narrated by a literature professor with a disturbing obsession.', CAST(N'2023-11-02' AS Date), NULL, 0)
SET IDENTITY_INSERT [dbo].[Book] OFF
GO
ALTER TABLE [dbo].[Book] ADD  CONSTRAINT [DF_Book_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Book] ADD  CONSTRAINT [DF_Book_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetSortedBooks]    Script Date: 02-11-2023 11.19.12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GetSortedBooks]
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        [BookId],
        [Publisher],
        [AuthorLastName] + ', ' + [AuthorFirstName] AS [Author],
        [Title]
    FROM 
        [dbo].[Book]
    WHERE 
        [IsDeleted] =0
    ORDER BY 
        [Publisher] ASC,
        [AuthorLastName] ASC,
        [AuthorFirstName] ASC,
        [Title] ASC;
END;

GO
/****** Object:  StoredProcedure [dbo].[SP_GetSortedBooksByAuthor]    Script Date: 02-11-2023 11.19.12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GetSortedBooksByAuthor]
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
	[BookId],
        [Publisher],
        [AuthorLastName] + ', ' + [AuthorFirstName] AS [Author],
        [Title]
    FROM
        [dbo].[Book]
    WHERE
        [IsDeleted] =0
    ORDER BY
        [AuthorLastName] ASC,
        [Title] ASC;
END;

--exec SP_GetSortedBooksByAuthor

GO
USE [master]
GO
ALTER DATABASE [BookDb] SET  READ_WRITE 
GO

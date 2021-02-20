﻿USE [Rentoolo]
GO
/****** Object:  StoredProcedure [dbo].[spGetCommentsForUser]    Script Date: 24.09.2020 17:05:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE  [dbo].[spGetCommentsForUser]
(@userId uniqueidentifier, @advertId int)
AS
BEGIN


	SELECT cmnts.[Id]
      ,[cmnts].[UserId]
      ,cmnts.[AdvertId]
      ,cmnts.[Comment]
      ,cmnts.[Date]
	  ,[usrs].[UserName]
	  ,(SELECT COUNT(*) FROM [dbo].[Likes] AS lks WHERE lks.CommentId = cmnts.Id) AS LikesCount
	  ,(SELECT COUNT(*) FROM [dbo].[DisLikes] AS dlks WHERE dlks.CommentId = cmnts.Id) AS DisLikesCount

	  ,CONVERT(BIT, (CASE when  EXISTS (SELECT * FROM [dbo].[DisLikes] 
	  WHERE CommentId = Id AND UserId = @userId) then 1 ELSE 0 END) ) AS HaveDisLiked

	  ,CONVERT(BIT, (CASE when  EXISTS (SELECT * FROM [dbo].[Likes] 
	  WHERE CommentId = Id AND UserId = @userId) then 1 ELSE 0 END) ) AS HaveLiked

      ,cmnts.[Type]
  FROM [Comments] AS cmnts
  JOIN [Users] AS usrs 
  ON(cmnts.UserId = usrs.UserId)
	WHERE [AdvertId] = @advertId
	ORDER BY [Date] ASC
END

GRANT EXECUTE
    ON OBJECT::[dbo].[spGetCommentsForUser] TO PUBLIC
    AS [dbo];
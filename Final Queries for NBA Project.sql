



--TOP PRODUCTIVE NBA PLAYERS FROM 2012 - 2022

-----------------------------------------------------------------


SELECT * 
FROM NBA

-----------------------------------------------------------------

--AvgFGPercent For each season 

SELECT Season,
       ROUND(AVG(fg_percent),2) AvgFGPercent
FROM NBA 
GROUP BY Season
ORDER BY Season 

SELECT ROUND(AVG(Fg_percent),2) avg_fg
FROM NBA 
WHERE Season BETWEEN 2012 AND 2022

--We see that throughout history the Average FG% has increased and is at a constant, in the last 10 years, the Average FG% is around 44%



-----------------------------------------------------------------

--Position Total & AVG PPG (Points Per Game),
		     --FG% (Field Goal %),\
		     --MP (Minutes Played),
		     --GP (Games Played),
	             --AGE,
		     --EXPERIENCE For All Positions Combined

SELECT COUNT(pos) PositionTotal,
       ROUND(AVG(pts / g),2) AvgPPG, 
       ROUND(AVG(fg_percent),2) AvgFGP,
       ROUND(AVG(mp / g),2) AvgMP, 
       ROUND(AVG(gs / g),2) AvgGP, 
       ROUND(AVG(Age),2) AvgAge,
       ROUND(AVG(experience),2) AvgExp
FROM NBA 
WHERE Season BETWEEN 2012 AND 2022 AND pos IN ('SG','PF','PG','C','SF')



-----------------------------------------------------------------



--Position Total & League Avg PPG (Points Per Game),
			    --RPG (Rebounds Per Game), 
		            --BPG (Blocks Per Game), 
		            --APG (Assists Per Game),
			    --SPG (Steals Per Game),
			  --FT%PG (Free Throw % Per Game),
			  --3PMPG (3 Pointers Made Per Game),
			  --FG%PG (Field Goal % Per Game) For All Positions Combined

SELECT COUNT(pos) PositionTotal, 
       ROUND(AVG(Pts / g),2) PPG,
       ROUND(AVG(trb / g),2) RBDS,
       ROUND(AVG(Blk / g),2) BLKS,
       ROUND(AVG(Ast / g),2) ASTS,
       ROUND(AVG(Stl / g),2) STLS,
       ROUND(AVG(Ft / g),2) FTM,
       ROUND(AVG(Ft_percent),2) FTP,
       ROUND(AVG(x3p_percent / g) * 100,2) ThreePM,
       ROUND(AVG(Fg / g),2) FGM,
       ROUND(AVG(Fg_percent),2) FGP
FROM NBA 
WHERE Season BETWEEN 2012 AND 2022 AND Pos IN ('SG','PF','PG','C','SF')



-----------------------------------------------------------------

--Position Total & AVG PPG (Points Per Game),
		     --FG% (Field Goal %),\
	              --MP (Minutes Played),
		      --GP (Games Played),
	              --AGE,
		      --EXPERIENCE For Each Individual Position

SELECT TOP 20 pos Position,
		  COUNT(pos) PositionTotal,			  
		  ROUND(AVG(pts / g),2) AvgPPG, 
		  ROUND(AVG(fg_percent),2) AvgFGP,			  
		  ROUND(AVG(mp / g),2) AvgMP, 
		  ROUND(AVG(gs / g),2) AvgGP, 
		  ROUND(AVG(Age),2) AvgAge,
		  ROUND(AVG(experience),2) AvgExp
FROM NBA 
WHERE Season BETWEEN 2012 AND 2022 AND pos IN ('SG','PF','PG','C','SF')
	GROUP BY pos 
	ORDER BY PositionTotal DESC



-----------------------------------------------------------------

--Position Total & League Avg PPG (Points Per Game),
			    --RPG (Rebounds Per Game), 
			    --BPG (Blocks Per Game), 
		            --APG (Assists Per Game),
	                    --SPG (Steals Per Game),
		          --FT%PG (Free Throw % Per Game),
		          --3PMPG (3 Pointers Made Per Game),
		          --FG%PG (Field Goal % Per Game) For Each Inidivual Position
 
SELECT TOP 20 Pos Position,
	      COUNT(pos) PositionTotal, 
	      ROUND(AVG(Pts / g),2) PPG,	
	      ROUND(AVG(trb / g),2) RBDS,
	      ROUND(AVG(Blk / g),2) BLKS,
	      ROUND(AVG(Ast / g),2) ASTS,
	      ROUND(AVG(Stl / g),2) STLS,
	      ROUND(AVG(Ft / g),2) FTM,
	      ROUND(AVG(Ft_percent),2) FTP,
	      ROUND(AVG(x3p_percent / g) * 100,2) ThreePM,
	      ROUND(AVG(Fg / g),2) FGM,
	      ROUND(AVG(Fg_percent),2) FGP
FROM NBA 
WHERE Season BETWEEN 2012 AND 2022 AND Pos IN ('SG','PF','PG','C','SF')
	GROUP BY Pos
	ORDER BY PositionTotal DESC



-----------------------------------------------------------------

--Top 20 Players with the most points within the last 10 years

SELECT TOP 20 Player,
	      SUM(Pts) TotalPTS
FROM NBA
WHERE Season BETWEEN 2012 AND 2022
	GROUP BY Player
	ORDER BY TotalPTS DESC



-----------------------------------------------------------------

--Top 20 Players with the highest field goal percent within the last 10 years

SELECT TOP 20 Player,
	      ROUND(SUM(fg_percent),2) FGP
FROM NBA
WHERE Season BETWEEN 2012 AND 2022
	GROUP BY Player
	ORDER BY FGP DESC



-----------------------------------------------------------------

--Top 20 Players with most assists within the last 10 years 

SELECT TOP 20 Player,
              SUM(Ast) TotalASTS
FROM NBA
WHERE Season BETWEEN 2012 AND 2022
	GROUP BY Player
	ORDER BY TotalASTS DESC



-----------------------------------------------------------------

--Top 20 Players with most rebounds within the last 10 years 

SELECT TOP 20 Player,
	      SUM(drb + orb) TotalRBS
FROM NBA
WHERE Season BETWEEN 2012 AND 2022
GROUP BY Player
ORDER BY TotalRBS DESC



-----------------------------------------------------------------

--Top 20 Players with most assists within the last 10 years 

SELECT TOP 20 Player,
	      SUM(stl) TotalSTLS
FROM NBA
WHERE Season BETWEEN 2012 AND 2022
	GROUP BY Player
	ORDER BY TotalSTLS DESC



-----------------------------------------------------------------

--Top 20 Players with most blocks within the last 10 years 

SELECT TOP 20 Player,
	      SUM(blk) TotalBLKS
FROM NBA
WHERE Season BETWEEN 2012 AND 2022
	GROUP BY Player
	ORDER BY TotalBLKS DESC



-----------------------------------------------------------------

--Top 20 Players with most free throws made within the last 10 years 

SELECT TOP 20 Player,
	      SUM(ft_percent) * 100 TotalFTM
FROM NBA
WHERE Season BETWEEN 2012 AND 2022
	GROUP BY Player
	ORDER BY TotalFTM DESC



-----------------------------------------------------------------


--Top 20 Players with most assists within the last 10 years 

SELECT TOP 20 Player,
	      SUM(x3p) Total3PM
FROM NBA
WHERE Season BETWEEN 2012 AND 2022
	GROUP BY Player
	ORDER BY Total3PM DESC
	
	
	
-----------------------------------------------------------------




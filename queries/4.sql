SELECT World_region AS [World Region], avg(MPI_National) AS [Average MPI National] 
FROM MPI_subnational 
WHERE Sub_national_region IS NOT NULL
GROUP BY World_region;
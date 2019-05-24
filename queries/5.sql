SELECT World_region AS [World Region], avg(MPI_Urban) AS [Average MPI Urban], avg(MPI_Rural) AS [Average MPI Rural] 
FROM MPI_national INNER JOIN MPI_subnational ON MPI_national.Country = MPI_subnational.Country 
WHERE Sub_national_region IS NOT NULL
GROUP BY World_region;
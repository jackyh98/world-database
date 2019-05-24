SELECT DISTINCT MPI_national.Country, MPI_Urban AS [MPI Urban], MPI_Rural AS [MPI Rural], MPI_subnational.MPI_National AS [MPI National]
FROM MPI_national INNER JOIN MPI_subnational ON MPI_national.Country = MPI_subnational.Country 
WHERE MPI_subnational.MPI_National IS NOT NULL;
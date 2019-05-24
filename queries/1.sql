SELECT DISTINCT Country, MPI_Urban AS [MPI Urban], MPI_Rural AS [MPI Rural]
FROM MPI_national 
WHERE MPI_Urban >= 0.1 AND MPI_Rural >= 0.2;
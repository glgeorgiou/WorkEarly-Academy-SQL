USE geneticsGenes;

# 1. How many different types of biotypes
SELECT biotype
FROM genes
GROUP BY biotype;

# 2. How many 'fwdstrand' greater than 0.
SELECT fwdstrand, COUNT(fwdstrand)
FROM genes
WHERE fwdstrand >0
GROUP BY fwdstrand;

# 3. Records in which the description includes the word 'kappa' or 'lambda'
SELECT * 
FROM genes
#WHERE description IN ('kappa', 'lambda');
WHERE description LIKE '%kappa%' OR description LIKE '%lambda%';
let springCompression k f = f /. k
let elasticPotentialEnergy k f = (k *. (springCompression k f) ** 2.0) /. 2.0
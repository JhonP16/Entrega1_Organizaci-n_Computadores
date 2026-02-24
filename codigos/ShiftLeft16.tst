load ShiftLeft16.hdl,
output-file ShiftLeft16.out,
compare-to ShiftLeft16.cmp,
output-list in%B1.16.1 out%B1.16.1 carry%B2.1.2;

// Prueba 1: Todo ceros
set in %B0000000000000000,
eval,
output;

// Prueba 2: Todo unos (Prueba general y acarreo activo)
set in %B1111111111111111,
eval,
output;

// Prueba 3: Un '1' en el bit menos significativo (LSB)
set in %B0000000000000001,
eval,
output;

// Prueba 4: Un '1' en el bit más significativo (MSB) - Prueba el acarreo aislado
set in %B1000000000000000,
eval,
output;

// Prueba 5: Patrón alternado (0101...) - Sin acarreo
set in %B0101010101010101,
eval,
output;

// Prueba 6: Patrón alternado (1010...) - Con acarreo
set in %B1010101010101010,
eval,
output;
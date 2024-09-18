% Ejemplo de uso
U = [1, 3, 2, 9, -1; 0, 9, 1, 3, 2; 0, 0, 1, 3, -3; 0, 0, 0, 7, -1; 0, 0, 0, 0, 2];  % Matriz triangular superior
b = [1; 2; 3; 4; 3];  % Vector de términos independientes

function x = TriangularSuperior(U, b)
    % U es la matriz triangular superior (nxn)
    % b es el vector de términos independientes (nx1)
    % x es el vector solución (nx1)

    n = length(b)  % Número de ecuaciones (o tamaño de la matriz)
    x = zeros(n, 1);  % Inicializamos el vector solución

    % Proceso de sustitución hacia atrás
    for i = n:-1:1
        x(i) = (b(i) - filas(i, i+1:n) * x(i+1:n)) / filas(i, i);
    endfor
endfunction

% Llamamos a la función
x = TriangularSuperior(U, b);

% Mostrar la solución
disp('Solución:');
disp(x);


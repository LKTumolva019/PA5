%Liam Kyle B. Tumolva 2ECE-A
%clears command window every time I run
clc

%A.TRANSPOSE OPERATIONS
%Matrices
R=[5 -2 0 7; 1 3 -4 2; 6 0 8 -1]
Z=[2+3*i -1+4*i 5-2*i;-3+i 6 2+5*i]

%Expressions
R1= transpose(R)
R2= R'
R3= R.'
Z1= transpose(Z)
Z2= Z'
Z3= Z.'

%a) All three operations for real matrix R are the same.
%b) Operations transpose(Z) and Z.' are the same as they transpose without conjugation.
%c) The operation performs a complex-conjugate transpose (Hermitian transpose) which tranposes the matrix while changing the signs of the imaginary parts.



%B. TWO METHODS FOR A LINEAR SYSTEM

A= [2 -1 3 2; 1 4 -2 1;3 2 1 -1; -2 3 4 2]
b= [16; -7; 6; 7]


%Inverse method:
x_inv = inv(A)*b;

%Cramer's Rule:
x_cramer = zeros(4, 1);
det_A = det(A);
%Loop
for col = 1:4
    A_temp = A;            % Copy the original system matrix
    A_temp(:, col) = b;    % Replace the current column with the b vector
    x_cramer(col) = det(A_temp) / det_A;
end


%Checks
det_A
x_inv
x_cramer
norm_difference = norm(x_inv-x_cramer)
norm_residual = norm(A*x_cramer-b)
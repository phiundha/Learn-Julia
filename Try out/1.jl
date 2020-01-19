#=
C:\Users\MyPC\Desktop\GIT\Learn-Julia\Try out
=#
function exp_matrix(A,n)
    println(A)
    S = I + A
    J = A
    j = 1
    for i in 2:n
        J *= A
        j *= i
        S += J/j
    end
    S
end

A = [1 0;0 2]
println(exp(A))

ans = exp_matrix(A,1000)
println(ans)


#=
using LinearAlgebra
A = rand(3,3)
println("A = ",A)

z = diag(A)
B = diagm(z)
println(B)

B = exp(B)
println(B)
println(exp_matrix(B,100))
=#

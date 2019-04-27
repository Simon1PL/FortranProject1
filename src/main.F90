program main
	use naivemath
	use bettermath
	use dotmath
	implicit none
	real(kind=4)::a(3,2), b(2,4)
	a=[[1,2],[1,3]]
	b=[[2,3],[3,4],[1,4],[2,5]]
	write(*,*) naivmull(a,b), bettmull(a,b), dotmull(a,b)
end program main
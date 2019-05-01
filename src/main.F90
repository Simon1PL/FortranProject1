program main
	use naivemath
	use bettermath
	use dotmath
	implicit none
	real(kind=4)::a(3,2), b(2,4)
	a=reshape([1,2,1,3,1,2],[3,2])
	b=reshape([2,3,3,4,1,4,2,5],[2,4])
	write(*,*) naivmull(a,b), bettmull(a,b), dotmull(a,b)
end program main
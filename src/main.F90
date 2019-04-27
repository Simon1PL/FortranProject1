program main
	!use naivemath
	implicit none
	real(kind=8)::a(3,2), b(2,2)
	integer, parameter :: d=4
	real(kind=d):: c
	a(1,1)=2
	a(2,1)=5
	a(3,1)=7
	a(1,2)=1
	a(2,2)=3
	a(3,2)=2
	b(1,1)=6
	b(2,1)=4
	b(1,2)=2
	b(2,2)=8
	c=3
	write(*,*) c!naivemath(a,b)
end program main
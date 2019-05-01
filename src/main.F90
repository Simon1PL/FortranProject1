program main
	use naivemath
	use bettermath
	use dotmath
	implicit none
	real(kind=4), dimension(:,:) :: akind4, bkind4
	integer :: i, seed(12)
	seed=time()
	!akind4=reshape([1,2,1,3,1,2],[3,2])
	!bkind4=reshape([2,3,3,4,1,4,2,5],[2,4])
	call random_seed(put=seed)
	CALL RANDOM_NUMBER(akind4)
	CALL RANDOM_NUMBER(bkind4)
	write(*,*) naivmull(akind4,bkind4), bettmull(akind4,bkind4), dotmull(akind4,bkind4)
	i=10
	do while ( i .LE. 1280 )
		write(*,*) akind4
		i=2*i
	end do
end program main
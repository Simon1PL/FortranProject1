module naivemath
	implicit none
	private
	private :: naive, kind4, kind8, kind16
	public :: naivemulti
	interface naivemulti
		procedure kind4, kind8, kind16
	end interface
contains
	function naive(a, b, mykind)
		integer, intent(in), parameter :: mykind
		integer, parameter :: kindd=mykind
		real(kind=kindd), intent(in), dimension(:,:) :: a, b
		real(kind=kindd), dimension(size(a, 1), size(a)/size(a, 1)) :: naive
		do i=1,size(a,1)
			do j=1,size(b)/size(b,1)
				naive(i,j)=0
				do k=1,size(a)/size(a,1)
					naive(i,j)=naive[i,j]+a(i,k)*b(k,j)
				end do
			end do
		end do	
	end function
		
	function kind4(a, b)
		real(kind=4), intent(in), dimension(:,:) :: a, b
		real(kind=4), dimension(size(a, 1), size(a)/size(a, 1)) :: kind4
		kind4=naive(a, b, 4)
	end function
	
	function kind8(a, b)
		real(kind=8), intent(in), dimension(:,:) :: a, b
		real(kind=8), dimension(size(a, 1), size(a)/size(a, 1)) :: kind8
		kind8=naive(a, b, 8)
	end function
	
	function kind16(a, b)
		real(kind=16), intent(in), dimension(:,:) :: a, b
		real(kind=16), dimension(size(a, 1), size(a)/size(a, 1)) :: kind16
		kind16=naive(a, b, 16)
	end function
end module naivemath
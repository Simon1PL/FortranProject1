module dotmath
implicit none
	private
	private :: kind4, kind8, kind16
	public ::  dotmull
	interface  dotmull
		procedure kind4, kind8, kind16
	end interface
contains
	function kind4(a, b)
		real(kind=4), intent(in), dimension(:,:) :: a, b
		real(kind=4), dimension(size(a, 1), size(b)/size(b, 1)) :: kind4
		integer :: i, j, k
		do j=1,size(b)/size(b,1)
			do i=1,size(a,1)
				kind4(i,j)=dot_product(a(i,:),b(:,j))
			end do
		end do	
	end function
	
	function kind8(a, b)
		real(kind=8), intent(in), dimension(:,:) :: a, b
		real(kind=8), dimension(size(a, 1), size(a)/size(a, 1)) :: kind8
		integer :: i, j, k
		do j=1,size(b)/size(b,1)
			do i=1,size(a,1)
				kind8(i,j)=dot_product(a(i,:),b(:,j))
			end do
		end do	
	end function
	
	function kind16(a, b)
		real(kind=16), intent(in), dimension(:,:) :: a, b
		real(kind=16), dimension(size(a, 1), size(a)/size(a, 1)) :: kind16
		integer :: i, j, k
		do j=1,size(b)/size(b,1)
			do i=1,size(a,1)
				kind16(i,j)=dot_product(a(i,:),b(:,j))
			end do
		end do	
	end function
end module dotmath
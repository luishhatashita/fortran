module func_m
    implicit none
    integer :: i
    public :: create_array, print_array, create_custom_array, function_1 

    contains

        real function function_1(x) result(f_x)
            real, intent(in) :: x
            !real :: f_x

            ! Returns the last declared variable
            f_x = x+1
        end function function_1 

        subroutine create_array(n, a)
            implicit none
            integer, intent(in) :: n
            real, dimension(n), intent(out) :: a
            !integer :: i

            do i=1,n
                a(i) = 1
            end do
        end subroutine create_array

        subroutine print_array(a)
            implicit none
            real, dimension(:), intent(in) :: a
            integer :: dim_a
            
            dim_a = size(a)

            do i=1, dim_a 
                print *, a(i)
            end do
        end subroutine print_array

        subroutine create_custom_array(xi, xf, n, a)
            implicit none
            integer, intent(in) :: n
            real, intent(in) :: xi, xf
            real, dimension(n), intent(out) :: a
            real :: dx

            dx = (xf-xi)/(n-1)
            a(1) = xi
            a(n) = xf

            do i=2, n-1
                a(i) = a(i-1) + (i-1)*dx
            end do
        end subroutine

end module func_m

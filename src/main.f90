program main
    use func_m!, only : create_array
    implicit none
    
    ! Input variables
    integer, parameter :: nodes = 3
    real :: x_initial, x_final
    ! Output variables
    real :: f_xf
    real, dimension(nodes) :: array, custom_array
    ! Temporary global variable
    real :: x

    ! Assigning values to the input variables, to be used in the func_m module
    x_initial = 0
    x_final = 2

    ! Calling functions from func_m:

    ! 1. Arrays
    ! Messing with arrays, the first one would be similar as a np.ones, and the
    ! second starts at x_initial and splits uniformly until x_final
    call create_array(nodes, array)
    call print_array(array)
    call create_custom_array(x_initial, x_final, nodes, custom_array)
    call print_array(custom_array)
    
    ! 2. Functions versus subroutines:
    do i=1, nodes
        print *, function_1(custom_array(i))
    end do
end program main

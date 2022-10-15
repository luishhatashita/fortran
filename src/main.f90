program main
    use func_m!, only : create_array
    implicit none
    
    ! Input variables
    integer, parameter :: nodes = 3
    real :: x_initial, x_final
    ! Output variables
    real :: f_xf
    real, dimension(nodes) :: array
    ! Temporary global variable
    real :: x

    ! Assigning values to the input variables, to be used in the func_m module
    x_initial = 0
    x_final = 2
    !nodes = 3

    ! Calling function from func_m
    !call create_array(x_initial, x_final, nodes, array) 
    !call print_array(array)
    call create_array(nodes, array)
    call print_array(array)

end program main

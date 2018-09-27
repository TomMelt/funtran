program main
    use double
    use plot
    implicit none
    !real(kind=rdp) :: x
    !x = 0
    !x = bessel_j0(x)
    !write(*,*) "x = ", x
    !write(*,*) "hello world"

    integer, parameter :: n = 10
    real(kind=rdp), dimension(10) :: x, y
    integer :: i

    do i = 1, n
        x(i) = 0.1 * i
        y(i) = x(i) * x(i)
    enddo

    call plot2d(x, y)
end program main

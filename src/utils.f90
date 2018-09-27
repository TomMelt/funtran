module double
    implicit none
    integer, parameter :: idp = selected_int_kind(13)
    integer, parameter :: rdp = selected_real_kind(13)
end module double

module plot
    use double
    implicit none
    character(len=*), parameter :: file_name = 'data.txt'
    integer,          parameter :: fh        = 10

contains
    subroutine plot2d(x, y)
        real(kind=rdp), intent(in) :: x(:), y(:)
        integer :: i, n
        n=size(x)

        open(unit=fh, file=file_name)

        do i = 1, n
            write (fh, *) x(i), y(i)
        enddo

        close(fh)
        call system('gnuplot -p plot.plt')
    end subroutine plot2d

end module plot

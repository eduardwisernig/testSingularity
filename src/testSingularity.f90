! ============================================================================
! Name        : testSingularity.f90
! Author      : Eduard Wisernig
! Version     :
! Copyright   : 
! Description : Hello World in Fortran
! ============================================================================

program testSingularity
	use netcdf
    implicit none
    integer :: i
    print *, "Hello world!"

    call checkNC(nf90_create('testNC.nc', NF90_CLOBBER, i))
    call checkNC(nf90_put_att(i, nf90_global, 'testTitle', 'testValue'))
    call checkNC(nf90_close(i))
contains
    subroutine checkNC(ncStatus, tag)
        integer, intent(in)         :: ncStatus !< Status variable
        character(*), optional      :: tag  !< Optional tag
        character(100)              :: message
        if (present(tag)) then
            message = tag
        else
            message = 'Unspecified tag'
        endif

        if(ncStatus /= nf90_noerr) then
            print*,'netCDF error with tag ', trim(message), ' : ', trim(nf90_strerror(ncStatus))
            stop
        end if
    end subroutine checkNC

end program

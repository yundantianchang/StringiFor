!< StringiFor `encode` test.
program encode
!-----------------------------------------------------------------------------------------------------------------------------------
!< StringiFor `encode` test.
!-----------------------------------------------------------------------------------------------------------------------------------
use, intrinsic :: iso_fortran_env, only : stdout => output_unit
use stringifor, only : string
!-----------------------------------------------------------------------------------------------------------------------------------

!-----------------------------------------------------------------------------------------------------------------------------------
implicit none
type(string) :: astring        !< A string.
logical      :: test_passed(1) !< List of passed tests.
!-----------------------------------------------------------------------------------------------------------------------------------

!-----------------------------------------------------------------------------------------------------------------------------------
test_passed = .false.

astring = 'How are you?'
test_passed(1) = astring%encode(codec='base64')//''=='SG93IGFyZSB5b3U/'
write(stdout, "(A)") 'Original:  "'//astring//'"'
write(stdout, "(A)") 'BASE64: "'//astring%encode(codec='base64')//'"'

write(stdout, "(A,L1)") new_line('a')//'Are all tests passed? ', all(test_passed)
stop
!-----------------------------------------------------------------------------------------------------------------------------------
endprogram encode

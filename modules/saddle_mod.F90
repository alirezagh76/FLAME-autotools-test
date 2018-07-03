!*****************************************************************************************
module mod_saddle
    implicit none
    !private
    real(8):: ampl=-1.d0
    real(8):: dimsep=-1.d0
    !real(8):: alphax=-1.d0
    !real(8):: fnrmtol
    real(8):: beta=-1.d0
    real(8):: epotprime = 0
    integer:: maxitec = 0
    integer:: maxitsd = 0
    integer:: maxitcg = 0
    integer:: nmatr=-1
    integer:: moving_atoms_rand(10) =0
    integer:: nit=0 !total number of iteration.
    logical:: ecconverged=.false.
    logical:: sdconverged=.false.
    logical:: cgconverged=.false.
    logical:: dmconverged=.false.
    logical:: do_elim_trans=.false.
    logical:: do_elim_rot=.false.
    character(256):: str_moving_atoms_rand=' '
end module mod_saddle
!*****************************************************************************************

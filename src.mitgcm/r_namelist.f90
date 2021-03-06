subroutine read_namelist()
    !=========================================
    !      read configuration file
    use global, only : casename,path2uvw,fn_UVEL,fn_VVEL,&
        fn_WVEL,dt,dt_reinit,tend,dt_case,fn_THETA,fn_SALT,&
        fn_GAMMA,dt_mld,pickupFreq,pickup,dumpFreq,diagFreq,tstart,fn_parti_init,&
        target_density,useMLD,useKh,saveTSG,vel_stationary,Khdiff,Kvdiff,NPP,Npts,output_dir,&
        fn_PHIHYD
    implicit none
!    integer*8, intent(in) :: inml
!    character*32 :: fn

    namelist /PARAM/ casename,path2uvw,fn_UVEL,fn_VVEL,&
        fn_WVEL,dt,tend,fn_THETA,fn_SALT,&
        fn_GAMMA,pickup,pickupFreq,dumpFreq,diagFreq,tstart,fn_parti_init,&
        target_density,dt_reinit,dt_mld,dt_case,useMLD,saveTSG,vel_stationary,&
        useKh,Khdiff,Kvdiff,NPP,Npts,output_dir,fn_PHIHYD

    read (*,NML=PARAM)

    !from the namelist file
!    write(fn,"(I4.4)") inml
!    print*, 'NML.DP_'//fn
!    OPEN (UNIT=1, FILE=trim('NML.DP_'//fn))
!    OPEN (UNIT=212, FILE='data.nml')
!    read (212,NML=PARAM) !from the namelist file
!    close(212)
end subroutine read_namelist



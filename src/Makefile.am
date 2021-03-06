noinst_LIBRARIES= libsrc.a libclowlevel.a

SUBDIRS = lenosky_tb

all: libsrc.a basic_c_wrappers.o input_variables_definition.o

bin_PROGRAMS = flame

SRC_F = minpack/dpmpar.f minpack/enorm.f  minpack/lmder.f minpack/lmpar.f minpack/qrfac.f minpack/qrsolv.f

AM_FCFLAGS = -I$(top_builddir)/modules/
AM_CPPFLAGS = -DQSC_STANDALONE

SRC_ = $(SRC_F)

if HAVE_LAMMPS
SRC_ += potential_LAMMPS_interface.F90 potential_LAMMPS.F90 lammps_mod.F90
AM_FCFLAGS += -DHAVE_LAMMPS
AM_CPPFLAGS += -I$(LAMMPS_ROOT)/src
LIBS += $(LAMMPS_ROOT)/src/liblammps_mpi.a
endif

SRC_ += alborz_init_final.F90 processors.F90 \
		mpi_utilities.F90 \
		parser_core.F90 parser_all.F90 parser_yaml.F90 \
		lmder_modified.F90 \
		ann_basic.F90 ann_process.F90 ann_weights_init.F90 ann_io.F90 ann_io_yaml.F90 ann_best_symfunc.F90 \
		ann_evaluate.F90 ann_train.F90 hung.F90 ann_check_symmetry_function.F90 ann_gen_symmetry_function.F90 task_ann.F90 \
		ann_symfunc_main.F90 ann_symfunc_atom_behler.F90 ann_symfunc_atom_stefan.F90 \
		ann_symfunc_pair_behler.F90 \
		ann_ekf_rivals.F90 ann_ekf_behler.F90 ann_lm.F90 \
		ann_pot_main.F90 ann_pot_atom.F90 ann_pot_cent1.F90 ann_pot_cent2.F90 ann_pot_cent_common.F90 \
		ann_pot_tb.F90 \
		shortrange.F90 tosifumi.F90 buckingham.F90 forcefield.F90 \
		minhopp_allocation.F90 minhopp.F90 minhopp_pot.F90 \
		md.F90 md_NVT.F90\
		phonon.F90 \
		es_coulomb_p3d.F90 es_coulomb_spline.F90 es_hartree_p3d.F90 \
		es_coulomb_p3d_bias.F90 \
		es_coulomb_p3d_dielec.F90 \
		grid_rp4gto_sym.F90  grid_gto_sym_ortho.F90 \
		grid_gto_sym.F90 grid_basic.F90 \
		es_hartree_fourier.F90 es_hartree_main.F90 es_hartree_bps.F90 \
		cell_linkedlists.F90 \
		optimizer_sd.F90 optimizer_cg.F90 optimizer_diis.F90 optimizer_fire.F90 \
		optimizer_gmdfire.F90 optimizer_bfgs.F90 optimizer_dfp.F90 optimizer_nlbfgs.F90 \
		optimizer_sqnm.F90 \
		optimizer_drivers.F90 optimizer_drivers_vc.F90 task_geopt.F90 task_single_point.F90 \
		task_netsock.F90 task_lammps.F90 \
		saddle_1s_pot.F90 saddle_1s.F90 saddle_1s_dimer.F90 saddle_1s_optimizer.F90 \
		basic_atoms.F90 basic_utilities.F90 \
		io_xyz.F90 basic.F90 io_acf.F90 io_vasp.F90 io_cube.F90 \
		io_utils.F90 \
		bader_neargrid.F90 bader_ongrid.F90 bader_weight.F90 \
		task_confcomp.F90 \
		task_bader.F90 \
		genconf_random.F90 genconf_rangrow.F90 genconf_diatomic.F90 genconf_trimer.F90 task_genconf.F90 \
		task_testforces.F90 \
		task_miscellaneous.F90 solve_poisson_cube.F90 best_charge_density.F90 \
		test_free_bps.F90 \
		tightbinding.F90 lenosky_tightbinding.F90 \
		task_linkedlist.F90 \
		task_potential.F90 \
		potential_main.F90 potential_sec_main.F90 potential_main_vc.F90 potential_ANN.F90 potential_LJ.F90 \
		potential_MPMD.F90 potential_BLJ_vc.F90 potential_BigDFT.F90 potential_VASP.F90 \
		potential_QSC.F90 potential_LTB.F90 potential_FF.F90 potential_NetSock.F90 \
		potential_DFTB.F90 \
		binaries.F90 \
		ternaries.F90

minhocao_src = potential_alborz.F90  potential_corerepulsion.F90\
		potential_confinement.F90 potential_IPI.F90 potential_MSOCK.F90\
		potential_abinit.F90 potential_LJ_voids.F90 potential_BLJ_minhocao.F90\
		potential_MLJ.F90 potential_LenoskyTB_minhocao.F90\
		potential_LenoskyTB_LJ_minhocao.F90 potential_LenoskyMEAM.F90\
		potential_PWSCF.F90 potential_VASP_minhocao.F90\
		potential_SIESTA_minhocao.F90 potential_CP2K.F90\
		potential_TERSOFF.F90 potential_EDIP.F90 potential_DFTB_minhocao.F90\
		potential_MOPAC.F90 parser_minhocao.F90 parser_core_minhocao.F90\
		io_vasp_minhocao.F90 io_ascii.F90 potential_main_minhocao.F90\
		spher_harm_mathematica.F90 dynamics_md_fixlat.F90\
		find_symmetry.F90 optimizer_sqnm_minhocao_module.F90\
		optimizer_sqnm_minhocao.F90\
		optimizer_bfgs_qe.F90 optimizer_sd_minhocao.F90\
		optimizer_bfgs_minhocao.F90 optimizer_nlbfgs_minhocao.F90\
		quaternions.F90 envelope.F90 cell_niggli.F90\
		fingerprint_GOM.F90 fingerprint_MOLGOM.F90 fingerprint_oganov.F90\
		fingerprint_oganov_cont.F90 fingerprint_BCM.F90\
		fingerprint_atorb.F90 fingerprint_gaussmol.F90\
		fingerprint_XYZ2SM.F90 atoms_minhocao.F90 minhocao.F90

#dependencies
potential_main_minhocao.o: potential_abinit.o

libsrc_a_SOURCES = $(SRC_) $(minhocao_src)

flame_SOURCES = alborz.F90
flame_LDADD = libsrc.a  $(top_builddir)/modules/libmodules.a lenosky_tb/liblenosky.a libclowlevel.a

libclowlevel_a_SOURCES = $(_SOURCES_CPP) $(_SOURCES_C)

#libminhocao_a_SOURCES = $(minhocao_src)

_SOURCES_C = sockets.c $(DATABASE_SRC)

_SOURCES_CPP = potential_QSC_main.cpp potential_QSC_wrapper.cpp 
if HAVE_LAMMPS
    _SOURCES_CPP += potential_LAMMPS_wrapper.cpp potential_LAMMPS_wrapper2.cpp
endif

if HAVE_SPGLIB
libsrc_a_SOURCES += spglib_f08.f90 spglib_int.F90
spglib_int.o: spglib_f08.o
AM_FCFLAGS += -DSPGLIB 
LIBS += $(SPGLIB_ROOT)/src/.libs/libsymspg.a
spglib_f08.f90:
	ln -s $(SPGLIB_ROOT)/example/spglib_f08.f90 spglib_f08.f90
endif

if HAVE_BPS
override LIBS := -L$(BDIR)/install/lib/ -lPSolver-1 $(LIBS)
AM_FCFLAGS += -I$(BDIR)/install/include
AM_FCFLAGS += -DHAVE_BPS
endif

EXTRA_DIST = 

YAML_DATABASE = input_variables_definition.yaml

CLEANFILES = *.mod *.MOD 

include $(srcdir)/import_database.mk


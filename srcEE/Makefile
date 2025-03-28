include Makefile.def
include Makefile.conf

SRC = ${EMPIRICALEEDIR}
WRONG = call EEE_init_CME_parameters

install:
	@(if [ -f EEE_ModTD99.f90 ]; then                         \
		mv ${SRC}/EEE_ModTD99.f90 ${SRC}/EEE_ModTD99.BAK; \
		mv EEE_ModTD99.f90 ${SRC}/. ;                     \
		mv ${SRC}/EEE_ModGL98.f90 ${SRC}/EEE_ModGL98.BAK; \
		mv EEE_ModGL98.f90 ${SRC}/. ;                     \
		mv ${SRC}/EEE_ModMain.f90 ${SRC}/EEE_ModMain.BAK; \
		mv EEE_ModMain.f90 ${SRC}/. ;                     \
		mv ${SRC}/EEE_ModCommonVariables.f90 \
			${SRC}/EEE_ModCommonVariables.BAK;        \
		mv EEE_ModCommonVariables.f90 ${SRC}/.;           \
		perl -i -pe \
		's/${WRONG}/! ${WRONG}/' ${DIR}/*/*/*/*.f90;      \
	fi);

allclean:
	@(if [ ! -f EEE_ModTD99.f90 ]; then                       \
		mv ${SRC}/EEE_ModTD99.f90 .;                      \
		mv ${SRC}/EEE_ModTD99.BAK ${SRC}/EEE_ModTD99.f90; \
		mv ${SRC}/EEE_ModGL98.f90 .;                      \
		mv ${SRC}/EEE_ModGL98.BAK ${SRC}/EEE_ModGL98.f90 ;\
		mv ${SRC}/EEE_ModMain.f90 .;                      \
		mv ${SRC}/EEE_ModMain.BAK ${SRC}/EEE_ModMain.f90 ;\
		mv ${SRC}/EEE_ModCommonVariables.f90 .;           \
		mv ${SRC}/EEE_ModCommonVariables.BAK \
			${SRC}/EEE_ModCommonVariables.f90 ;       \
		perl -i -pe \
		's/! ${WRONG}/${WRONG}/' ${DIR}/*/*/*/*.f90;      \
	fi);

cmd_/home/han/misc/glweb/qsdk5-next/build_dir/toolchain-arm_cortex-a7_gcc-4.8-linaro_uClibc-1.0.14_eabi/linux-dev//include/rdma/.install := bash scripts/headers_install.sh /home/han/misc/glweb/qsdk5-next/build_dir/toolchain-arm_cortex-a7_gcc-4.8-linaro_uClibc-1.0.14_eabi/linux-dev//include/rdma /home/han/misc/glweb/qsdk5-next/build_dir/toolchain-arm_cortex-a7_gcc-4.8-linaro_uClibc-1.0.14_eabi/linux-3.14.77/include/uapi/rdma ib_user_cm.h ib_user_mad.h ib_user_sa.h ib_user_verbs.h rdma_netlink.h rdma_user_cm.h; bash scripts/headers_install.sh /home/han/misc/glweb/qsdk5-next/build_dir/toolchain-arm_cortex-a7_gcc-4.8-linaro_uClibc-1.0.14_eabi/linux-dev//include/rdma /home/han/misc/glweb/qsdk5-next/build_dir/toolchain-arm_cortex-a7_gcc-4.8-linaro_uClibc-1.0.14_eabi/linux-3.14.77/include/rdma ; bash scripts/headers_install.sh /home/han/misc/glweb/qsdk5-next/build_dir/toolchain-arm_cortex-a7_gcc-4.8-linaro_uClibc-1.0.14_eabi/linux-dev//include/rdma /home/han/misc/glweb/qsdk5-next/build_dir/toolchain-arm_cortex-a7_gcc-4.8-linaro_uClibc-1.0.14_eabi/linux-3.14.77/include/generated/uapi/rdma ; for F in ; do echo "\#include <asm-generic/$$F>" > /home/han/misc/glweb/qsdk5-next/build_dir/toolchain-arm_cortex-a7_gcc-4.8-linaro_uClibc-1.0.14_eabi/linux-dev//include/rdma/$$F; done; touch /home/han/misc/glweb/qsdk5-next/build_dir/toolchain-arm_cortex-a7_gcc-4.8-linaro_uClibc-1.0.14_eabi/linux-dev//include/rdma/.install

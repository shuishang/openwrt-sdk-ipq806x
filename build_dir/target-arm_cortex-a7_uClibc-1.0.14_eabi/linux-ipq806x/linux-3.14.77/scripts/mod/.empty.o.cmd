cmd_scripts/mod/empty.o := arm-openwrt-linux-uclibcgnueabi-gcc -Wp,-MD,scripts/mod/.empty.o.d  -nostdinc -isystem /home/han/misc/glweb/qsdk5-next/staging_dir/toolchain-arm_cortex-a7_gcc-4.8-linaro_uClibc-1.0.14_eabi/lib/gcc/arm-openwrt-linux-uclibcgnueabi/4.8.3/include -I/home/han/misc/glweb/qsdk5-next/build_dir/target-arm_cortex-a7_uClibc-1.0.14_eabi/linux-ipq806x/linux-3.14.77/arch/arm/include -Iarch/arm/include/generated  -Iinclude -I/home/han/misc/glweb/qsdk5-next/build_dir/target-arm_cortex-a7_uClibc-1.0.14_eabi/linux-ipq806x/linux-3.14.77/arch/arm/include/uapi -Iarch/arm/include/generated/uapi -I/home/han/misc/glweb/qsdk5-next/build_dir/target-arm_cortex-a7_uClibc-1.0.14_eabi/linux-ipq806x/linux-3.14.77/include/uapi -Iinclude/generated/uapi -include /home/han/misc/glweb/qsdk5-next/build_dir/target-arm_cortex-a7_uClibc-1.0.14_eabi/linux-ipq806x/linux-3.14.77/include/linux/kconfig.h -D__KERNEL__ -mlittle-endian -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Wno-format-security -fno-delete-null-pointer-checks -std=gnu89 -Os -fno-caller-saves -Wno-maybe-uninitialized -fno-dwarf2-cfi-asm -fno-ipa-sra -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -funwind-tables -marm -D__LINUX_ARM_ARCH__=7 -march=armv7-a -msoft-float -Uarm -Wframe-larger-than=1024 -fstack-protector -Wno-unused-but-set-variable -fomit-frame-pointer -fno-var-tracking-assignments -g -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fconserve-stack -Werror=implicit-int -Werror=strict-prototypes -DCC_HAVE_ASM_GOTO   -ffunction-sections -fdata-sections  -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(empty)"  -D"KBUILD_MODNAME=KBUILD_STR(empty)" -c -o scripts/mod/empty.o scripts/mod/empty.c

source_scripts/mod/empty.o := scripts/mod/empty.c

deps_scripts/mod/empty.o := \

scripts/mod/empty.o: $(deps_scripts/mod/empty.o)

$(deps_scripts/mod/empty.o):

/* config.h.  Generated from config.h.in by configure.  */
/* config.h.in.  Generated from configure.ac by autoheader.  */

/* Build tests */
#define BUILD_TESTS 1

/* Define to 1 if you have the `asprintf' function. */
#define HAVE_ASPRINTF 1

/* Enable Audio support */
/* #undef HAVE_AUDIO */

/* Enable Chamelium support */
/* #undef HAVE_CHAMELIUM */

/* Found a useable cpuid.h */
#define HAVE_CPUID_H 1

/* Define to 1 if you have the <dlfcn.h> header file. */
#define HAVE_DLFCN_H 1

/* Define to 1 if the system has the `constructor' function attribute */
#define HAVE_FUNC_ATTRIBUTE_CONSTRUCTOR 1

/* Enable glib support */
#define HAVE_GLIB 1

/* Define to 1 if you have the <inttypes.h> header file. */
#define HAVE_INTTYPES_H 1

/* Have amdgpu support */
#define HAVE_LIBDRM_AMDGPU 1

/* Have intel support */
#define HAVE_LIBDRM_INTEL 1

/* Have nouveau support */
#define HAVE_LIBDRM_NOUVEAU 1

/* Have vc4 support */
/* #undef HAVE_LIBDRM_VC4 */

/* Define to 1 if you have the <libgen.h> header file. */
#define HAVE_LIBGEN_H 1

/* libunwind support */
#define HAVE_LIBUNWIND 1

/* Define to 1 if you have the <linux/kd.h> header file. */
#define HAVE_LINUX_KD_H 1

/* Define to 1 if you have the <memory.h> header file. */
#define HAVE_MEMORY_H 1

/* Enable X backend */
#define HAVE_OVERLAY_XLIB 1

/* Enable XV backend */
/* #undef HAVE_OVERLAY_XVLIB */

/* Enable process managment without shelling out */
#define HAVE_PROCPS 1

/* Define to 1 if the system has the type `sighandler_t'. */
#define HAVE_SIGHANDLER_T 1

/* Define to 1 if you have the <stdint.h> header file. */
#define HAVE_STDINT_H 1

/* Define to 1 if you have the <stdlib.h> header file. */
#define HAVE_STDLIB_H 1

/* Define to 1 if you have the <strings.h> header file. */
#define HAVE_STRINGS_H 1

/* Define to 1 if you have the <string.h> header file. */
#define HAVE_STRING_H 1

/* Define to 1 if `totalram' is a member of `struct sysinfo'. */
#define HAVE_STRUCT_SYSINFO_TOTALRAM 1

/* Define to 1 if you have the `swapctl' function. */
/* #undef HAVE_SWAPCTL */

/* Define to 1 if you have the <sys/io.h> header file. */
#define HAVE_SYS_IO_H 1

/* Define to 1 if you have the <sys/kd.h> header file. */
#define HAVE_SYS_KD_H 1

/* Define to 1 if you have the <sys/stat.h> header file. */
#define HAVE_SYS_STAT_H 1

/* Define to 1 if you have the <sys/types.h> header file. */
#define HAVE_SYS_TYPES_H 1

/* Define to 1 if you have the <termios.h> header file. */
#define HAVE_TERMIOS_H 1

/* Define to 1 if you have the `timer_create' function. */
#define HAVE_TIMER_CREATE 1

/* Enable udev-based monitor hotplug detection */
#define HAVE_UDEV 1

/* Define to 1 if you have the <unistd.h> header file. */
#define HAVE_UNISTD_H 1

/* Enable valgrind annotation support. */
/* #undef HAVE_VALGRIND */

/* Have libXrandr */
/* #undef HAVE_XRANDR */

/* Define to the sub-directory where libtool stores uninstalled libraries. */
#define LT_OBJDIR ".libs/"

/* Name of package */
#define PACKAGE "intel-gpu-tools"

/* Define to the address where bug reports for this package should be sent. */
#define PACKAGE_BUGREPORT "https://bugs.freedesktop.org/enter_bug.cgi?product=DRI&component=IGT"

/* Define to the full name of this package. */
#define PACKAGE_NAME "intel-gpu-tools"

/* Define to the full name and version of this package. */
#define PACKAGE_STRING "intel-gpu-tools 1.20"

/* Define to the one symbol short name of this package. */
#define PACKAGE_TARNAME "intel-gpu-tools"

/* Define to the home page for this package. */
#define PACKAGE_URL ""

/* Define to the version of this package. */
#define PACKAGE_VERSION "1.20"

/* Major version of this package */
#define PACKAGE_VERSION_MAJOR 1

/* Minor version of this package */
#define PACKAGE_VERSION_MINOR 20

/* Patch version of this package */
#define PACKAGE_VERSION_PATCHLEVEL 0

/* Define to 1 if you have the ANSI C header files. */
#define STDC_HEADERS 1

/* Target platform */
#define TARGET_CPU_PLATFORM "x86_64"

/* Enable extensions on AIX 3, Interix.  */
#ifndef _ALL_SOURCE
# define _ALL_SOURCE 1
#endif
/* Enable GNU extensions on systems that have them.  */
#ifndef _GNU_SOURCE
# define _GNU_SOURCE 1
#endif
/* Enable threading extensions on Solaris.  */
#ifndef _POSIX_PTHREAD_SEMANTICS
# define _POSIX_PTHREAD_SEMANTICS 1
#endif
/* Enable extensions on HP NonStop.  */
#ifndef _TANDEM_SOURCE
# define _TANDEM_SOURCE 1
#endif
/* Enable general extensions on Solaris.  */
#ifndef __EXTENSIONS__
# define __EXTENSIONS__ 1
#endif


/* Version number of package */
#define VERSION "1.20"

/* Define to 1 if `lex' declares `yytext' as a `char *' by default, not a
   `char[]'. */
/* #undef YYTEXT_POINTER */

/* Enable large inode numbers on Mac OS X 10.5.  */
#ifndef _DARWIN_USE_64_BIT_INODE
# define _DARWIN_USE_64_BIT_INODE 1
#endif

/* Number of bits in a file offset, on hosts where this is settable. */
/* #undef _FILE_OFFSET_BITS */

/* Define for large files, on AIX-style hosts. */
/* #undef _LARGE_FILES */

/* Define to 1 if on MINIX. */
/* #undef _MINIX */

/* Define to 2 if the system does not provide POSIX.1 features except with
   this defined. */
/* #undef _POSIX_1_SOURCE */

/* Define to 1 if you need to in order for `stat' and other things to work. */
/* #undef _POSIX_SOURCE */

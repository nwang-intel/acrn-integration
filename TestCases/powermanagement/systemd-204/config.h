/* config.h.  Generated from config.h.in by configure.  */
/* config.h.in.  Generated from configure.ac by autoheader.  */

/* Whether on mips arch */
/* #undef ARCH_MIPS */

/* Canonical host string. */
#define CANONICAL_HOST "x86_64-unknown-linux-gnu"

/* Define if EFI support is to be enabled */
#define ENABLE_EFI 1

/* Define if PolicyKit support is to be enabled */
#define ENABLE_POLKIT 1

/* ACL available */
/* #undef HAVE_ACL */

/* Define to 1 if you have the <acl/libacl.h> header file. */
/* #undef HAVE_ACL_LIBACL_H */

/* Define to 1 if you have the <arpa/inet.h> header file. */
#define HAVE_ARPA_INET_H 1

/* Define to 1 if you have the <attr/xattr.h> header file. */
/* #undef HAVE_ATTR_XATTR_H */

/* AUDIT available */
/* #undef HAVE_AUDIT */

/* Define if blkid is available */
#define HAVE_BLKID 1

/* Define if CHKCONFIG is available */
/* #undef HAVE_CHKCONFIG */

/* Define to 1 if you have the declaration of `gettid', and to 0 if you don't.
   */
#define HAVE_DECL_GETTID 0

/* Define to 1 if you have the declaration of `name_to_handle_at', and to 0 if
   you don't. */
#define HAVE_DECL_NAME_TO_HANDLE_AT 1

/* Define to 1 if you have the declaration of `pivot_root', and to 0 if you
   don't. */
#define HAVE_DECL_PIVOT_ROOT 0

/* Define to 1 if you have the <dlfcn.h> header file. */
#define HAVE_DLFCN_H 1

/* Define to 1 if you have the `fanotify_init' function. */
#define HAVE_FANOTIFY_INIT 1

/* Define to 1 if you have the `fanotify_mark' function. */
#define HAVE_FANOTIFY_MARK 1

/* Define to 1 if you have the <fcntl.h> header file. */
#define HAVE_FCNTL_H 1

/* Define if FIRMWARE is available */
/* #undef HAVE_FIRMWARE */

/* GCRYPT available */
#define HAVE_GCRYPT 1

/* Define to 1 if you have the `gethostbyaddr' function. */
#define HAVE_GETHOSTBYADDR 1

/* Define to 1 if you have the `gethostbyname' function. */
#define HAVE_GETHOSTBYNAME 1

/* Define to 1 if you have the `gettimeofday' function. */
#define HAVE_GETTIMEOFDAY 1

/* Define if glib is available */
#define HAVE_GLIB 1

/* Define if IMA is available */
#define HAVE_IMA 1

/* Define to 1 if you have the `inet_ntoa' function. */
#define HAVE_INET_NTOA 1

/* Define to 1 if you have the <inttypes.h> header file. */
#define HAVE_INTTYPES_H 1

/* Define if kmod is available */
/* #undef HAVE_KMOD */

/* Define to 1 if you have the <libaudit.h> header file. */
/* #undef HAVE_LIBAUDIT_H */

/* Define if libcryptsetup is available */
/* #undef HAVE_LIBCRYPTSETUP */

/* Have tcpwrap? */
/* #undef HAVE_LIBWRAP */

/* Logind support available */
#define HAVE_LOGIND 1

/* Define to 1 if your system has a GNU libc compatible `malloc' function, and
   to 0 otherwise. */
#define HAVE_MALLOC 1

/* Define to 1 if you have the <memory.h> header file. */
#define HAVE_MEMORY_H 1

/* Define to 1 if you have the `memset' function. */
#define HAVE_MEMSET 1

/* Define if microhttpd is available */
/* #undef HAVE_MICROHTTPD */

/* Define to 1 if you have the <netdb.h> header file. */
#define HAVE_NETDB_H 1

/* Define to 1 if you have the <netinet/in.h> header file. */
#define HAVE_NETINET_IN_H 1

/* Define to 1 if you have the <nss.h> header file. */
#define HAVE_NSS_H 1

/* PAM available */
/* #undef HAVE_PAM */

/* Define if qrencode is available */
/* #undef HAVE_QRENCODE */

/* Define to 1 if you have the `secure_getenv' function. */
#define HAVE_SECURE_GETENV 1

/* Define to 1 if you have the <security/pam_ext.h> header file. */
/* #undef HAVE_SECURITY_PAM_EXT_H */

/* Define to 1 if you have the <security/pam_modules.h> header file. */
/* #undef HAVE_SECURITY_PAM_MODULES_H */

/* Define to 1 if you have the <security/pam_modutil.h> header file. */
/* #undef HAVE_SECURITY_PAM_MODUTIL_H */

/* Define to 1 if you have the `select' function. */
#define HAVE_SELECT 1

/* Define if SELinux is available */
/* #undef HAVE_SELINUX */

/* Define to 1 if you have the `socket' function. */
#define HAVE_SOCKET 1

/* Define if /bin, /sbin aren't symlinks into /usr */
/* #undef HAVE_SPLIT_USR */

/* Define to 1 if you have the <stdint.h> header file. */
#define HAVE_STDINT_H 1

/* Define to 1 if you have the <stdlib.h> header file. */
#define HAVE_STDLIB_H 1

/* Define to 1 if you have the `strcasecmp' function. */
#define HAVE_STRCASECMP 1

/* Define to 1 if you have the `strcspn' function. */
#define HAVE_STRCSPN 1

/* Define to 1 if you have the `strdup' function. */
#define HAVE_STRDUP 1

/* Define to 1 if you have the `strerror' function. */
#define HAVE_STRERROR 1

/* Define to 1 if you have the <strings.h> header file. */
#define HAVE_STRINGS_H 1

/* Define to 1 if you have the <string.h> header file. */
#define HAVE_STRING_H 1

/* Define to 1 if you have the `strncasecmp' function. */
#define HAVE_STRNCASECMP 1

/* Define to 1 if you have the `strspn' function. */
#define HAVE_STRSPN 1

/* SysV init scripts and rcN.d links are supported. */
#define HAVE_SYSV_COMPAT /**/

/* Define to 1 if you have the <sys/acl.h> header file. */
/* #undef HAVE_SYS_ACL_H */

/* Define to 1 if you have the <sys/capability.h> header file. */
#define HAVE_SYS_CAPABILITY_H 1

/* Define to 1 if you have the <sys/ioctl.h> header file. */
#define HAVE_SYS_IOCTL_H 1

/* Define to 1 if you have the <sys/select.h> header file. */
#define HAVE_SYS_SELECT_H 1

/* Define to 1 if you have the <sys/socket.h> header file. */
#define HAVE_SYS_SOCKET_H 1

/* Define to 1 if you have the <sys/stat.h> header file. */
#define HAVE_SYS_STAT_H 1

/* Define to 1 if you have the <sys/time.h> header file. */
#define HAVE_SYS_TIME_H 1

/* Define to 1 if you have the <sys/types.h> header file. */
#define HAVE_SYS_TYPES_H 1

/* Define to 1 if you have the <unistd.h> header file. */
#define HAVE_UNISTD_H 1

/* Define to 1 if you have the <valgrind/memcheck.h> header file. */
/* #undef HAVE_VALGRIND_MEMCHECK_H */

/* XATTR available */
/* #undef HAVE_XATTR */

/* Define if XZ is available */
/* #undef HAVE_XZ */

/* Define to 1 if you have the `__secure_getenv' function. */
/* #undef HAVE___SECURE_GETENV */

/* Path of loadkeys */
#define KBD_LOADKEYS "/usr/bin/loadkeys"

/* Path of setfont */
#define KBD_SETFONT "/usr/bin/setfont"

/* Define to the sub-directory in which libtool stores uninstalled libraries.
   */
#define LT_OBJDIR ".libs/"

/* Define to 1 if your C compiler doesn't accept -c and -o together. */
/* #undef NO_MINUS_C_MINUS_O */

/* Name of package */
#define PACKAGE "systemd"

/* Define to the address where bug reports for this package should be sent. */
#define PACKAGE_BUGREPORT "http://bugs.freedesktop.org/enter_bug.cgi?product=systemd"

/* Define to the full name of this package. */
#define PACKAGE_NAME "systemd"

/* Define to the full name and version of this package. */
#define PACKAGE_STRING "systemd 204"

/* Define to the one symbol short name of this package. */
#define PACKAGE_TARNAME "systemd"

/* Define to the home page for this package. */
#define PACKAGE_URL "http://www.freedesktop.org/wiki/Software/systemd"

/* Define to the version of this package. */
#define PACKAGE_VERSION "204"

/* Path of /etc/rc.local script */
#define RC_LOCAL_SCRIPT_PATH_START "/etc/rc.local"

/* Path of /usr/sbin/halt.local script */
#define RC_LOCAL_SCRIPT_PATH_STOP "/usr/sbin/halt.local"

/* Define to the type of arg 1 for `select'. */
#define SELECT_TYPE_ARG1 int

/* Define to the type of args 2, 3 and 4 for `select'. */
#define SELECT_TYPE_ARG234 (fd_set *)

/* Define to the type of arg 5 for `select'. */
#define SELECT_TYPE_ARG5 (struct timeval *)

/* Define to 1 if you have the ANSI C header files. */
#define STDC_HEADERS 1

/* Path to telinit */
#define TELINIT "/lib/upstart/telinit"

/* Define to 1 if you can safely include both <sys/time.h> and <time.h>. */
#define TIME_WITH_SYS_TIME 1

/* GID of the 'tty' group */
/* #undef TTY_GID */

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
#define VERSION "204"

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

/* Define to empty if `const' does not conform to ANSI C. */
/* #undef const */

/* Define to rpl_malloc if the replacement function should be used. */
/* #undef malloc */

/* Define to `unsigned int' if <sys/types.h> does not define. */
/* #undef size_t */

signature MLTON_PLATFORM =
   sig
      structure Arch:
	 sig
	    datatype t = PowerPC | Sparc | X86

	    val fromString: string -> t option
	    val host: t
	    val isBigEndian: t -> bool
	    val toString: t -> string
	 end
	 
      structure OS:
	 sig
	    datatype t =
	       Cygwin
	     | Darwin
	     | FreeBSD
	     | Linux
	     | MinGW
	     | NetBSD
	     | OpenBSD
	     | Solaris

	    val fromString: string -> t option
	    val host: t
	    val toString: t -> string
	 end
   end

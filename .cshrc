# $FreeBSD: src/share/skel/dot.cshrc,v 1.13 2001/01/10 17:35:28 archie Exp $
#
# .cshrc - csh resource script, read at beginning of execution by each shell
#
# see also csh(1), environ(7).
#

alias ls	ls -GF
alias less	less -X
alias calc 'echo " scale=4;\!*" | bc'

# A righteous umask
umask 22

set path = ($HOME/bin /opt/local/bin /sbin /bin /usr/sbin /usr/bin /usr/games /usr/local/sbin /usr/local/bin /usr/X11R6/bin )

setenv	TERM		xterm-color
setenv	EDITOR		vim
setenv	PAGER		'less -X'
setenv	BLOCKSIZE	K
setenv	HUGSFLAGS '-E"vi +%d %s" +sl -u'

if ($?prompt) then
	# An interactive shell -- set some stuff up
	set filec
	set history = 100
	set savehist = 100
	set mail = (/var/mail/$USER)

	if ( $?tcsh ) then
		bindkey "^W" backward-delete-word
		bindkey -k up history-search-backward
		bindkey -k down history-search-forward
		bindkey "^[[5~" history-search-backward
		bindkey "^[[6~" history-search-forward
		bindkey "^[[1~" beginning-of-line
		bindkey "^[[4~" end-of-line 
		set autolist
		set recognize_only_executables
		set nobeep
		#set prompt = "%{\033[37m%}%?%#%{\033[0m%} "
		set prompt = "b%{\033[37m%}%?%{\033[0m%}red%{\033[37m%}%#%{\033[0m%} "
	endif
endif

# Setting PATH for MacPython 2.5
# The orginal version is saved in .cshrc.pysave
set path=(/Library/Frameworks/Python.framework/Versions/Current/bin $path)

##
# Your previous /Users/joe/.cshrc file was backed up as /Users/joe/.cshrc.macports-saved_2010-03-23_at_00:38:53
##

# MacPorts Installer addition on 2010-03-23_at_00:38:53: adding an appropriate PATH variable for use with MacPorts.
setenv PATH /opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


.PHONY: help man clean

MANUALS := \
	cgroups \
	nsenter \
	unshare \
	namespaces \
	pid_namespaces \
	user_namespaces \
	mount

help:
	@cat $(firstword $(MAKEFILE_LIST))

$(foreach MANUAL,$(MANUALS),man/$(MANUAL)):
	man $(@F)

clean:
	#

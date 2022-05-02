##############
# parameters #
##############
# where is the output folder ?
OUT:=out
# do you want to validate html?
DO_CHECKHTML:=1
# do you want dependency on the makefile itself ?
DO_ALLDEP:=1
# do you want to show the commands executed ?
DO_MKDBG:=0

########
# code #
########

SOURCES_HTML_MAKO:=$(shell find templates \( -type f -or -type l \) -and -name "*.html.mako" 2> /dev/null)
SOURCES_HTML:=$(shell pymakehelper remove_folders $(SOURCES_HTML_MAKO))
HTMLCHECK:=$(OUT)/html.stamp

ifeq ($(DO_CHECKHTML),1)
ALL+=$(HTMLCHECK)
endif # DO_CHECKHTML

# dependency on the makefile itself
ifeq ($(DO_ALLDEP),1)
.EXTRA_PREREQS+=$(foreach mk, ${MAKEFILE_LIST},$(abspath ${mk}))
endif

# silent stuff
ifeq ($(DO_MKDBG),1)
Q:=
# we are not silent in this branch
else # DO_MKDBG
Q:=@
#.SILENT:
endif # DO_MKDBG

#########
# rules #
#########
# do not touch this rule
.PHONY: all
all: $(ALL)
	@true

$(HTMLCHECK): $(SOURCES_HTML)
	$(info doing [$@])
	$(Q)pymakehelper only_print_on_error node_modules/htmlhint/bin/htmlhint $(SOURCES_HTML)
	$(Q)pymakehelper touch_mkdir $@
# this next line doesnt work because tidy does not support html5
#$(Q)tidy -errors -q -utf8 $(SOURCES_HTML)

.PHONY: debug
debug:
	$(info doing [$@])
	$(info Q is $(Q))
	$(info ALL is $(ALL))
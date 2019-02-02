TEMPLAR_GHPAGES_BRANCH:=master
include /usr/share/templar/make/Makefile

##############
# parameters #
##############
# where is the output folder ?
OUT:=out
# do you want to validate html?
DO_CHECKHTML:=1
# do you want dependency on the makefile itself ?
DO_ALL_DEP:=1
# build the tools?
DO_TOOLS:=1
# do you want to show the commands executed ?
DO_MKDBG:=0

########
# code #
########

SOURCES_HTML_MAKO:=$(shell find templartmpl \( -type f -or -type l \) -and -name "*.html.mako" 2> /dev/null)
SOURCES_HTML:=$(shell make_helper remove-folders $(SOURCES_HTML_MAKO))
HTMLCHECK:=$(OUT)/html.stamp

ifeq ($(DO_CHECKHTML),1)
ALL+=$(HTMLCHECK)
endif # DO_CHECKHTML

# dependency on the makefile itself
ifeq ($(DO_ALL_DEP),1)
ALL_DEP:=Makefile
else
ALL_DEP:=
endif # DO_ALL_DEP

ifeq ($(DO_TOOLS),1)
# what is the stamp file for the tools?
TOOLS:=$(OUT)/tools.stamp
ALL_DEP+=$(TOOLS)
endif # DO_TOOLS

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
all: $(ALL) $(ALL_DEP)

$(TOOLS): package.json templardefs/deps.py
	$(info doing [$@])
	$(Q)templar install_deps
	$(Q)make_helper touch-mkdir $@

$(HTMLCHECK): $(SOURCES_HTML) $(ALL_DEP)
	$(info doing [$@])
	$(Q)make_helper wrapper-silent node_modules/htmlhint/bin/htmlhint $(SOURCES_HTML)
	$(Q)make_helper touch-mkdir $@
# this next line doesnt work because tidy does not support html5
#$(Q)tidy -errors -q -utf8 $(SOURCES_HTML)

.PHONY: debug_me
debug_me:
	$(info doing [$@])
	$(info Q is $(Q))

CMD=asciidoctor -a stylesheet=app.css -b html5

RHEL7_SCL_SOURCES = get-started-scl-rhel7-python.adoc \
	get-started-scl-rhel7-nodejs.adoc \
	get-started-scl-rhel7-ruby.adoc \
	get-started-scl-rhel7-php.adoc \
	get-started-scl-rhel7-perl.adoc \
	get-started-dts-rhel7-eclipse-cpp.adoc

RHEL7_NATIVE_SOURCES = get-started-rhel7-cpp.adoc \
	get-started-rhel7-python.adoc \
	get-started-rhel7-php.adoc \
	get-started-rhel7-perl.adoc \
	get-started-rhel7-ruby.adoc \

RHEL6_SCL_SOURCES = get-started-scl-rhel6-python.adoc 

SOURCES = $(RHEL7_SCL_SOURCES) $(RHEL7_NATIVE_SOURCES) $(RHEL6_SCL_SOURCES)

# OUTPUTS=$(SOURCES:.adoc=.html)

OUTPUTS = $(patsubst %.adoc,output/%.html,$(SOURCES)) 

all:  $(OUTPUTS)

output/%.html: %.adoc app.css
	$(CMD) $< -o $@

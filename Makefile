CMD=asciidoctor -a stylesheet=app.css -b html5

SOURCES=get-started-scl-rhel7-python.adoc \
	get-started-scl-rhel7-nodejs.adoc \
	get-started-scl-rhel7-ruby.adoc \
	get-started-scl-rhel7-php.adoc \
	get-started-scl-rhel7-perl.adoc \
	get-started-dts-rhel7-eclipse-cpp.adoc \
	get-started-rhel7-cpp.adoc \
	get-started-rhel7-python.adoc \
	get-started-rhel7-php.adoc \
	get-started-rhel7-perl.adoc \
	get-started-rhel7-ruby.adoc 


# OUTPUTS=$(SOURCES:.adoc=.html)

OUTPUTS = $(patsubst %.adoc,output/%.html,$(SOURCES)) 

all:  $(OUTPUTS)

output/%.html: %.adoc app.css
	$(CMD) $< -o $@

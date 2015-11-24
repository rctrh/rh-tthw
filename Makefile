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

RHEL6_SCL_SOURCES = get-started-scl-rhel6-python.adoc \
	get-started-scl-rhel6-nodejs.adoc \
	get-started-scl-rhel6-ruby.adoc \
	get-started-scl-rhel6-php.adoc \
	get-started-scl-rhel6-perl.adoc \
	get-started-dts-rhel6-eclipse-cpp.adoc

RHEL6_NATIVE_SOURCES = get-started-rhel6-cpp.adoc \
	get-started-rhel6-python.adoc \
	get-started-rhel6-php.adoc \
	get-started-rhel6-perl.adoc \
	get-started-rhel6-ruby.adoc \

ATOMIC_SOURCES = get-started-atomic-python.adoc \
	get-started-atomic-nodejs.adoc \
	get-started-atomic-ruby.adoc \

DOCKER_SOURCES = get-started-dcr7-python.adoc 


OS_INSTALL_SOURCES = get-started-rhel7-install.adoc \
	get-started-atomic-install.adoc



SOURCES = $(RHEL7_SCL_SOURCES) $(RHEL7_NATIVE_SOURCES) $(RHEL6_SCL_SOURCES) \
	$(RHEL6_NATIVE_SOURCES) $(ATOMIC_SOURCES) $(OS_INSTALL_SOURCES) \
	$(DOCKER_SOURCES)

# OUTPUTS=$(SOURCES:.adoc=.html)

OUTPUTS = $(patsubst %.adoc,output/%.html,$(SOURCES)) 

all:  $(OUTPUTS)

clean:
	rm $(OUTPUTS)

output/%.html: %.adoc app.css
	$(CMD) $< -o $@

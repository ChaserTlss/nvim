# @Author: Daimiao Chen
# This is a makefile for compiling java files without project management tools
# It assumet this project has blow structure:
#	./src/		: java source files
#	./bin/		: java class files
#	./lib/		: java libraries
#	./doc/		: java documentations

project_path = $(path)
src_path = $(project_path)./src/
bin_path = $(project_path)./bin/
lib_path = $(project_path)./lib/
doc_path = $(project_path)./doc/
java_files = $(wildcard $(src_path)*.java)
java_class = $(patsubst $(src_path)%.java, $(bin_path)%.class, $(java_files))
main_class = $(target)

$(java_class): $(java_files)
	# Since java doesn't have header files, we need to compile all java files at once
	javac -d $(bin_path) -cp $(lib_path) $(java_files)

all: $(java_class)

clean:
	rm -rf $(bin_path)*

run:
	java -cp $(bin_path):$(lib_path) $(main_class)

print:
	@echo $(java_files)
	@echo $(java_class)
	@echo $(project_path)
	@echo $(src_path)


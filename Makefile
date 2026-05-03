.PHONY: all compile run clean jar help

MAIN_CLASS = com.example.factory.Main
JAR_FILE = target/factory-demo-1.0-SNAPSHOT.jar

all: compile run

compile:
	mvn compile

run:
	mvn exec:java -Dexec.mainClass="$(MAIN_CLASS)"

jar:
	mvn package

clean:
	mvn clean

help:
	@echo "Usage:"
	@echo "  make compile - Compile the project"
	@echo "  make run     - Run the project using Maven"
	@echo "  make jar     - Package the project into an executable JAR"
	@echo "  make clean   - Clean the build directory"
	@echo "  make all     - Compile and run"

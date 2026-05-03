.PHONY: all compile run clean jar push help

MAIN_CLASS = com.example.factory.Main
JAR_FILE = target/factory-demo-1.0-SNAPSHOT.jar

all: compile run

compile:
	mvn compile

run:
	mvn exec:java -Dexec.mainClass="$(MAIN_CLASS)"

jar:
	mvn package

# 技巧：允许使用 make push "your message"
push:
	@git add .
	$(eval MSG=$(filter-out $@,$(MAKECMDGOALS)))
	@git commit -m "$(if $(MSG),$(MSG),Update project)" || echo "No changes to commit"
	@if [ -z "$$(git remote get-url origin 2>/dev/null)" ]; then \
		gh repo create factory-demo --public --source=. --remote=origin --push; \
	else \
		git push origin $$(git branch --show-current); \
	fi

clean:
	mvn clean

help:
	@echo "Usage:"
	@echo "  make compile         - Compile the project"
	@echo "  make run             - Run the project using Maven"
	@echo "  make jar             - Package the project into an executable JAR"
	@echo "  make push \"message\"  - Git commit and push (e.g. make push \"init\")"
	@echo "  make clean           - Clean the build directory"

# 捕获所有未知目标，防止报错
%:
	@:

JAVAC=javac
JAVA=java
SRC=$(wildcard src/*.java)
CLASSES=$(SRC:.java=.class)
MAIN=Main   # The class with the main() method (change if needed)

all: $(CLASSES)

%.class: %.java
	$(JAVAC) $<

run: all
	$(JAVA) -cp src $(MAIN)

clean:
	rm -f src/*.class

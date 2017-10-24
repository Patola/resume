PROJECT=cv-patola
SOURCE_PT_BR=resume-pt-br.asciidoc
SOURCE_EN_US=README.asciidoc
TARGET_PT_BR=renders/cv-patola-pt-br.pdf
TARGET_EN_US=renders/cv-patola-en-us.pdf

all: cven cvpt

cven:
	asciidoctor-pdf $(SOURCE_EN_US) -o $(TARGET_EN_US)

cvpt:
	asciidoctor-pdf $(SOURCE_PT_BR) -o $(TARGET_PT_BR)

clean:
	rm $(TARGET_EN_US) $(TARGET_PT_BR)

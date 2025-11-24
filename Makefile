# Makefile for generating PDF from Markdown manual

.PHONY: all pdf clean help

# Default target
all: pdf

# Generate PDF from Markdown
pdf:
	@if [ ! -f MANUEL_PAIE_CAMEROUNAISE.md ]; then \
		echo "Error: MANUEL_PAIE_CAMEROUNAISE.md not found!"; \
		exit 1; \
	fi
	@echo "Generating PDF from MANUEL_PAIE_CAMEROUNAISE.md..."
	pandoc MANUEL_PAIE_CAMEROUNAISE.md \
		-o MANUEL_PAIE_CAMEROUNAISE.pdf \
		--pdf-engine=xelatex \
		-V geometry:margin=1in \
		-V linkcolor:blue \
		-V documentclass=article \
		-V papersize=a4 \
		-V fontsize=11pt
	@echo "PDF generated successfully: MANUEL_PAIE_CAMEROUNAISE.pdf"

# Clean generated files
clean:
	@echo "Removing generated PDF..."
	rm -f MANUEL_PAIE_CAMEROUNAISE.pdf
	@echo "Clean complete."

# Display help
help:
	@echo "Makefile for Cameroonian Payroll Manual"
	@echo ""
	@echo "Available targets:"
	@echo "  make pdf    - Generate PDF from Markdown (default)"
	@echo "  make clean  - Remove generated PDF"
	@echo "  make help   - Display this help message"
	@echo ""
	@echo "Requirements:"
	@echo "  - pandoc (markdown to PDF converter)"
	@echo "  - xelatex (LaTeX engine)"
	@echo ""
	@echo "Installation on Ubuntu/Debian:"
	@echo "  sudo apt-get install pandoc texlive-xetex texlive-fonts-recommended texlive-latex-extra"

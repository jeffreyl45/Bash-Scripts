# Variables
WDIR = directory
FILE = file1.txt
BACKUP_DIR = $(WDIR)/backup
EXCESS_FILE = $(WDIR)/excess.txt

# Default target
.PHONY: all
all:
	@echo "Run the Bash script manually, or use specific cleanup targets."

# Clean up generated files and directories
.PHONY: clean
clean:
	@if [ -f "$(WDIR)/$(FILE)" ]; then \
		echo "Removing file: $(WDIR)/$(FILE)"; \
		rm -f "$(WDIR)/$(FILE)"; \
	fi
	@if [ -f "$(EXCESS_FILE)" ]; then \
		echo "Removing file: $(EXCESS_FILE)"; \
		rm -f "$(EXCESS_FILE)"; \
	fi
	@if [ -d "$(BACKUP_DIR)" ]; then \
		echo "Removing backup directory: $(BACKUP_DIR)"; \
		rm -rf "$(BACKUP_DIR)"; \
	fi
	@echo "Cleanup complete."

# Clean up backup directory only
.PHONY: clean-backup
clean-backup:
	@if [ -d "$(BACKUP_DIR)" ]; then \
		echo "Removing backup directory: $(BACKUP_DIR)"; \
		rm -rf "$(BACKUP_DIR)"; \
	fi
	@echo "Backup cleanup complete."

# Clean up excess file only
.PHONY: clean-excess
clean-excess:
	@if [ -f "$(EXCESS_FILE)" ]; then \
		echo "Removing file: $(EXCESS_FILE)"; \
		rm -f "$(EXCESS_FILE)"; \
	fi
	@echo "Excess file cleanup complete."


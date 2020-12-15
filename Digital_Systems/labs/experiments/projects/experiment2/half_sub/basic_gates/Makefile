FILES = src/*
VHDLEX = .vhdl

# testbench
TESTBENCH=half_tb
TESTBENCHPATH = testbench/${TESTBENCH}$(VHDLEX)

#GHDL CONFIG
GHDL_CMD = ghdl

SIMDIR = simulation
# Simulation break condition
#GHDL_SIM_OPT = --assert-level=error
GHDL_SIM_OPT = --stop-time=500ns

WAVEFORM_VIEWER = gtkwave

all: compile run view

new :
	echo "Setting up project ${PROJECT}"
	mkdir src testbench simulation

compile :
ifeq ($(strip $(TESTBENCH)),)
		@echo "TESTBENCH not set. Use TESTBENCH=value to set it."
		@exit 2
endif

	mkdir -p simulation
	$(GHDL_CMD) -a $(GHDL_FLAGS) --work=work $(FILES)
	$(GHDL_CMD) -a $(GHDL_FLAGS) --work=work $(TESTBENCHPATH)
	$(GHDL_CMD) -e --work=work $(TESTBENCH)
#	$(GHDL_CMD) -i $(GHDL_FLAGS) --workdir=simulation --work=work $(TESTBENCHPATH) $(FILES)
#	#$(GHDL_CMD) -m $(GHDL_FLAGS) --workdir=simulation --work=work $(TESTBENCH)
	@mv $(TESTBENCH) simulation/$(TESTBENCH)

run :
	@$(SIMDIR)/$(TESTBENCH) $(GHDL_SIM_OPT) --vcd=$(SIMDIR)/$(TESTBENCH).vcd

view :
	$(WAVEFORM_VIEWER) $(SIMDIR)/$(TESTBENCH).vcd
clean :
	$(GHDL_CMD) --clean --workdir=simulation

LINUX = "Linux/X11"
WINDOWSDESKTOP = "Windows Desktop"
WINDOWSUNIVERSAL = "Windows Universal"
EXNAME = cardGame
DATE = `date "+%b-%d-%Y"`
TIME = `date "+%I-%M-%S-%p"`


build : linux windowsD windowsU
	@echo Builds finished

linux :
	@echo -n Creating folder for linux build...
	@mkdir -p ./builds/linux/$(DATE)/$(TIME)
	@echo done
	@echo Creating linux build...
	@godot --export $(LINUX) ./builds/linux/$(DATE)/$(TIME)/$(EXNAME)

windowsD :
	@echo -n Creating folder for Windows desktop build...
	@mkdir -p ./builds/windows/desktop/$(DATE)/$(TIME)
	@echo done
	@echo Creating Windows desktop build...
	@godot --export $(WINDOWSDESKTOP) ./builds/windows/desktop/$(DATE)/$(TIME)/$(EXNAME).exe

windowsU :
	@echo -n Creating folder for Windows universal build...
	@mkdir -p ./builds/windows/universal/$(DATE)/$(TIME)
	@echo done
	@echo Creating Windows universal build...
	@godot --export $(WINDOWSUNIVERSAL) ./builds/windows/universal/$(DATE)/$(TIME)/$(EXNAME).appx

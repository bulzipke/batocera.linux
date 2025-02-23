################################################################################
#
# EmulationStation theme "Knulli"
#
################################################################################
# Version: Commits on February 23, 2025
ES_THEME_KNULLI_VERSION = f2fce9ecbecb03b8c52fb581a35cad624a6f5827
ES_THEME_KNULLI_SITE = $(call github,symbuzzer,es-theme-knulli,$(ES_THEME_KNULLI_VERSION))

define ES_THEME_KNULLI_INSTALL_TARGET_CMDS
    mkdir -p $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
    cp -r $(@D)/* $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
endef

$(eval $(generic-package))

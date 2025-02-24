################################################################################
#
# EmulationStation theme "Knulli"
#
################################################################################
# Version: Commits on February 24, 2025
ES_THEME_KNULLI_VERSION = f0d0fb3d41da9de56c7751b9d47321f2c5e74335
ES_THEME_KNULLI_SITE = $(call github,symbuzzer,es-theme-knulli,$(ES_THEME_KNULLI_VERSION))

define ES_THEME_KNULLI_INSTALL_TARGET_CMDS
    mkdir -p $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
    cp -r $(@D)/* $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
endef

$(eval $(generic-package))

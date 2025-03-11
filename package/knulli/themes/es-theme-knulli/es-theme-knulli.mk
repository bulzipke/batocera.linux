################################################################################
#
# EmulationStation theme "Knulli"
#
################################################################################
# Version: Commits on March 11, 2025
ES_THEME_KNULLI_VERSION = 2efcb820368e0109a7dd419be1715c6293925513
ES_THEME_KNULLI_SITE = $(call github,symbuzzer,es-theme-knulli,$(ES_THEME_KNULLI_VERSION))

define ES_THEME_KNULLI_INSTALL_TARGET_CMDS
    mkdir -p $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
    cp -r $(@D)/* $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
endef

$(eval $(generic-package))

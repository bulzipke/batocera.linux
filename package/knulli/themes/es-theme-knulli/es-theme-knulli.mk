################################################################################
#
# EmulationStation theme "Knulli"
#
################################################################################
# Version: Commits on February 17, 2025
ES_THEME_KNULLI_VERSION = 860e8c0f564c59e56faf0618473eeae264c39bf8
ES_THEME_KNULLI_SITE = $(call github,symbuzzer,es-theme-knulli,$(ES_THEME_KNULLI_VERSION))

define ES_THEME_KNULLI_INSTALL_TARGET_CMDS
    mkdir -p $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
    cp -r $(@D)/* $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
endef

$(eval $(generic-package))

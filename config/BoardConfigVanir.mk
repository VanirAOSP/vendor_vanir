# different sepolicy for different recoveries
#    a fix for vold on cm's recovery broke twrp recovery's init
#
#BOARD_RECOVERY_SEPOLICY_SUPPLEMENT := vendor/vanir/sepolicy/recovery
#
#ifneq ($(RECOVERY_VARIANT),)
#BOARD_RECOVERY_SEPOLICY_SUPPLEMENT := $(BOARD_RECOVERY_SEPOLICY_SUPPLEMENT)-$(RECOVERY_VARIANT)
#endif
#
#-include $(BOARD_RECOVERY_SEPOLICY_SUPPLEMENT)/sepolicy.mk

# Charger
ifneq ($(WITH_LINEAGE_CHARGER),false)
    BOARD_HAL_STATIC_LIBRARIES := libhealthd.lineage
endif

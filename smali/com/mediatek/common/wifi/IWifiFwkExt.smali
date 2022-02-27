.class public interface abstract Lcom/mediatek/common/wifi/IWifiFwkExt;
.super Ljava/lang/Object;
.source "IWifiFwkExt.java"


# static fields
.field public static final ACTION_RESELECTION_AP:Ljava/lang/String; = "android.net.wifi.WIFI_RESELECTION_AP"

.field public static final ACTION_SUSPEND_NOTIFICATION:Ljava/lang/String; = "com.mediatek.wifi.ACTION_SUSPEND_NOTIFICATION"

.field public static final ACTION_WIFI_FAILOVER_GPRS_DIALOG:Ljava/lang/String; = "com.mediatek.intent.WIFI_FAILOVER_GPRS_DIALOG"

.field public static final AUTOCONNECT_ENABLE_ALL_NETWORKS:Ljava/lang/String; = "com.mediatek.common.wifi.AUTOCONNECT_ENABLE_ALL_NETWORK"

.field public static final AUTOCONNECT_SETTINGS_CHANGE:Ljava/lang/String; = "com.mediatek.common.wifi.AUTOCONNECT_SETTINGS_CHANGE"

.field public static final BEST_SIGNAL_THRESHOLD:I = -0x4f

.field public static final BSS_EXPIRE_AGE:I = 0xa

.field public static final BSS_EXPIRE_COUNT:I = 0x1

.field public static final DEFAULT_FRAMEWORK_SCAN_INTERVAL_MS:I = 0x3a98

.field public static final EXTRA_NOTIFICATION_NETWORKID:Ljava/lang/String; = "network_id"

.field public static final EXTRA_NOTIFICATION_SSID:Ljava/lang/String; = "ssid"

.field public static final EXTRA_SHOW_RESELECT_DIALOG_FLAG:Ljava/lang/String; = "SHOW_RESELECT_DIALOG"

.field public static final EXTRA_SUSPEND_TYPE:Ljava/lang/String; = "type"

.field public static final MIN_INTERVAL_CHECK_WEAK_SIGNAL_MS:I = 0xea60

.field public static final MIN_INTERVAL_SCAN_SUPRESSION_MS:I = 0x2710

.field public static final MIN_NETWORKS_NUM:I = 0x2

.field public static final NOTIFY_TYPE_RESELECT:I = 0x1

.field public static final NOTIFY_TYPE_SWITCH:I = 0x0

.field public static final OP_01:I = 0x1

.field public static final OP_03:I = 0x3

.field public static final OP_NONE:I = 0x0

.field public static final RESELECT_DIALOG_CLASSNAME:Ljava/lang/String; = "com.mediatek.op01.plugin.WifiReselectApDialog"

.field public static final SUSPEND_NOTIFICATION_DURATION:J = 0x36ee80L

.field public static final WEAK_SIGNAL_THRESHOLD:I = -0x55

.field public static final WIFISETTINGS_CLASSNAME:Ljava/lang/String; = "com.android.settings.Settings$WifiSettingsActivity"

.field public static final WIFI_CONNECT_REMINDER_ALWAYS:I = 0x0

.field public static final WIFI_NOTIFICATION_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_NOTIFICATION"


# virtual methods
.method public abstract defaultFrameworkScanIntervalMs()I
.end method

.method public abstract getApDefaultSsid()Ljava/lang/String;
.end method

.method public abstract getSecurity(Landroid/net/wifi/ScanResult;)I
.end method

.method public abstract getSecurity(Landroid/net/wifi/WifiConfiguration;)I
.end method

.method public abstract handleNetworkReselection()Z
.end method

.method public abstract hasConnectableAp()Z
.end method

.method public abstract hasCustomizedAutoConnect()Z
.end method

.method public abstract hasNetworkSelection()I
.end method

.method public abstract init()V
.end method

.method public abstract isWifiConnecting(ILjava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract needRandomSsid()Z
.end method

.method public abstract setCustomizedWifiSleepPolicy(Landroid/content/Context;)V
.end method

.method public abstract shouldAutoConnect()Z
.end method

.method public abstract suspendNotification(I)V
.end method

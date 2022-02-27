.class public Lcom/mediatek/ims/plugin/ExtensionFactory;
.super Ljava/lang/Object;
.source "ExtensionFactory.java"


# static fields
.field private static final EXTENSION_PLUG_IN_NAME:Ljava/lang/String; = "com.mediatek.imsplugin.ExtensionPluginFactoryImpl"

.field private static final LEGACY_COMPONENT_NAME:Ljava/lang/String; = "com.mediatek.ims.legacy.LegacyComponentFactoryImpl"

.field public static final LOG_TAG:Ljava/lang/String; = "ImsExtensionFactory"

.field private static final OEM_PLUG_IN_NAME:Ljava/lang/String; = "com.mediatek.imsplugin.OemPluginFactoryImpl"

.field private static sExtensionPluginFactory:Lcom/mediatek/ims/plugin/ExtensionPluginFactory;

.field private static sLegacyComponentFactory:Lcom/mediatek/ims/plugin/LegacyComponentFactory;

.field private static sOemPluginFactory:Lcom/mediatek/ims/plugin/OemPluginFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeExtensionPluginFactory()Lcom/mediatek/ims/plugin/ExtensionPluginFactory;
    .locals 5

    .line 114
    sget-object v0, Lcom/mediatek/ims/plugin/ExtensionFactory;->sExtensionPluginFactory:Lcom/mediatek/ims/plugin/ExtensionPluginFactory;

    if-nez v0, :cond_0

    .line 117
    :try_start_0
    const-string v0, "com.mediatek.imsplugin.ExtensionPluginFactoryImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 118
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 119
    .local v2, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/plugin/ExtensionPluginFactory;

    .line 120
    .local v1, "inst":Lcom/mediatek/ims/plugin/ExtensionPluginFactory;
    sput-object v1, Lcom/mediatek/ims/plugin/ExtensionFactory;->sExtensionPluginFactory:Lcom/mediatek/ims/plugin/ExtensionPluginFactory;

    .line 121
    const-string v3, "ImsExtensionFactory"

    const-string v4, "Use MTK\'s ExtensionPluginFactory"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "inst":Lcom/mediatek/ims/plugin/ExtensionPluginFactory;
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ImsExtensionFactory"

    const-string v2, "Use default ExtensionPluginFactory"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    sget-object v0, Lcom/mediatek/ims/plugin/ExtensionFactory;->sExtensionPluginFactory:Lcom/mediatek/ims/plugin/ExtensionPluginFactory;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lcom/mediatek/ims/plugin/impl/ExtensionPluginFactoryBase;

    invoke-direct {v0}, Lcom/mediatek/ims/plugin/impl/ExtensionPluginFactoryBase;-><init>()V

    sput-object v0, Lcom/mediatek/ims/plugin/ExtensionFactory;->sExtensionPluginFactory:Lcom/mediatek/ims/plugin/ExtensionPluginFactory;

    .line 131
    :cond_0
    sget-object v0, Lcom/mediatek/ims/plugin/ExtensionFactory;->sExtensionPluginFactory:Lcom/mediatek/ims/plugin/ExtensionPluginFactory;

    return-object v0
.end method

.method public static makeLegacyComponentFactory()Lcom/mediatek/ims/plugin/LegacyComponentFactory;
    .locals 4

    .line 142
    sget-object v0, Lcom/mediatek/ims/plugin/ExtensionFactory;->sLegacyComponentFactory:Lcom/mediatek/ims/plugin/LegacyComponentFactory;

    if-nez v0, :cond_1

    .line 143
    const-string v0, "ro.vendor.md_auto_setup_ims"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const-string v0, "ImsExtensionFactory"

    const-string v1, "Gen93 detected !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 148
    :cond_0
    :try_start_0
    const-string v0, "com.mediatek.ims.legacy.LegacyComponentFactoryImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 149
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 150
    .local v2, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/plugin/LegacyComponentFactory;

    sput-object v1, Lcom/mediatek/ims/plugin/ExtensionFactory;->sLegacyComponentFactory:Lcom/mediatek/ims/plugin/LegacyComponentFactory;

    .line 151
    const-string v1, "ImsExtensionFactory"

    const-string v3, "Use Legacy\'s LegacyComponentFactory"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ImsExtensionFactory"

    const-string v2, "Cannot load legacy factory"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    sget-object v0, Lcom/mediatek/ims/plugin/ExtensionFactory;->sLegacyComponentFactory:Lcom/mediatek/ims/plugin/LegacyComponentFactory;

    if-nez v0, :cond_1

    .line 158
    new-instance v0, Lcom/mediatek/ims/plugin/impl/LegacyComponentFactoryBase;

    invoke-direct {v0}, Lcom/mediatek/ims/plugin/impl/LegacyComponentFactoryBase;-><init>()V

    sput-object v0, Lcom/mediatek/ims/plugin/ExtensionFactory;->sLegacyComponentFactory:Lcom/mediatek/ims/plugin/LegacyComponentFactory;

    .line 162
    :cond_1
    sget-object v0, Lcom/mediatek/ims/plugin/ExtensionFactory;->sLegacyComponentFactory:Lcom/mediatek/ims/plugin/LegacyComponentFactory;

    return-object v0
.end method

.method public static makeOemPluginFactory()Lcom/mediatek/ims/plugin/OemPluginFactory;
    .locals 5

    .line 86
    sget-object v0, Lcom/mediatek/ims/plugin/ExtensionFactory;->sOemPluginFactory:Lcom/mediatek/ims/plugin/OemPluginFactory;

    if-nez v0, :cond_0

    .line 89
    :try_start_0
    const-string v0, "com.mediatek.imsplugin.OemPluginFactoryImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 90
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 91
    .local v2, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/plugin/OemPluginFactory;

    .line 92
    .local v1, "instance":Lcom/mediatek/ims/plugin/OemPluginFactory;
    sput-object v1, Lcom/mediatek/ims/plugin/ExtensionFactory;->sOemPluginFactory:Lcom/mediatek/ims/plugin/OemPluginFactory;

    .line 93
    const-string v3, "ImsExtensionFactory"

    const-string v4, "Use customer\'s OemPluginFactory"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "instance":Lcom/mediatek/ims/plugin/OemPluginFactory;
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ImsExtensionFactory"

    const-string v2, "Use default OemPluginFactory"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    sget-object v0, Lcom/mediatek/ims/plugin/ExtensionFactory;->sOemPluginFactory:Lcom/mediatek/ims/plugin/OemPluginFactory;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lcom/mediatek/ims/plugin/impl/OemPluginFactoryBase;

    invoke-direct {v0}, Lcom/mediatek/ims/plugin/impl/OemPluginFactoryBase;-><init>()V

    sput-object v0, Lcom/mediatek/ims/plugin/ExtensionFactory;->sOemPluginFactory:Lcom/mediatek/ims/plugin/OemPluginFactory;

    .line 103
    :cond_0
    sget-object v0, Lcom/mediatek/ims/plugin/ExtensionFactory;->sOemPluginFactory:Lcom/mediatek/ims/plugin/OemPluginFactory;

    return-object v0
.end method

.class Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
.super Ljava/lang/Object;
.source "ImsConfigStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/config/internal/ImsConfigStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfigHelper"
.end annotation


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field mDefConfigPolicyFactory:Lcom/mediatek/ims/config/DefaultConfigPolicyFactory;

.field private mHandler:Landroid/os/Handler;

.field private mInitDone:Z

.field private mOpCode:I

.field private mPhoneId:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "phoneId"    # I

    .line 951
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 943
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContext:Landroid/content/Context;

    .line 944
    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 945
    const/4 v1, -0x1

    iput v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    .line 946
    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mDefConfigPolicyFactory:Lcom/mediatek/ims/config/DefaultConfigPolicyFactory;

    .line 947
    iput v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mOpCode:I

    .line 948
    iput-object v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mHandler:Landroid/os/Handler;

    .line 949
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mInitDone:Z

    .line 952
    iput-object p1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContext:Landroid/content/Context;

    .line 953
    iput-object p2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mHandler:Landroid/os/Handler;

    .line 954
    iput p3, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    .line 955
    iget-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 957
    nop

    .line 959
    .local v0, "opCode":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, v2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->getConfigSetting(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 960
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mOpCode:I
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 963
    :catch_0
    move-exception v2

    .line 964
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "ImsConfigStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parse SETTING_ID_OPCODE error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    iput v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mOpCode:I

    .end local v2    # "e":Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 961
    :catch_1
    move-exception v2

    .line 962
    .local v2, "e":Lcom/android/ims/ImsException;
    iput v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mOpCode:I

    .line 966
    .end local v2    # "e":Lcom/android/ims/ImsException;
    :goto_0
    nop

    .line 967
    :goto_1
    return-void
.end method

.method static synthetic access$1400(Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;Ljava/lang/String;I)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 942
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->getConfigValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 942
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->getConfigStringValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;Ljava/lang/String;III)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 942
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->addConfig(Ljava/lang/String;III)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;Ljava/lang/String;III)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 942
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->updateConfig(Ljava/lang/String;III)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;Ljava/lang/String;IILjava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 942
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->addConfig(Ljava/lang/String;IILjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;Ljava/lang/String;IILjava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 942
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->updateConfig(Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;

    .line 942
    invoke-direct {p0}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->clear()V

    return-void
.end method

.method private addConfig(Ljava/lang/String;III)Landroid/net/Uri;
    .locals 3
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "configId"    # I
    .param p3, "mimeType"    # I
    .param p4, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1235
    invoke-direct {p0, p2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->enforceConfigId(I)V

    .line 1237
    invoke-direct {p0, p2, p3, p4}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->getConfigCv(III)Landroid/content/ContentValues;

    move-result-object v0

    .line 1238
    .local v0, "cv":Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/mediatek/ims/config/ImsConfigContract;->getTableUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private addConfig(Ljava/lang/String;IILjava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "configId"    # I
    .param p3, "mimeType"    # I
    .param p4, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1243
    invoke-direct {p0, p2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->enforceConfigId(I)V

    .line 1245
    invoke-direct {p0, p2, p3, p4}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->getConfigCv(IILjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 1246
    .local v0, "cv":Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/mediatek/ims/config/ImsConfigContract;->getTableUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private addConfigSetting(ILjava/lang/String;)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 1039
    const/4 v0, 0x0

    .line 1040
    .local v0, "result":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1041
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "phone_id"

    iget v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1042
    const-string v2, "setting_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1043
    const-string v2, "value"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/mediatek/ims/config/ImsConfigContract$ConfigSetting;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 1045
    if-eqz v0, :cond_0

    .line 1049
    return-void

    .line 1046
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addConfigSetting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " for phone "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " failed!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private clear()V
    .locals 4

    .line 1208
    const-string v0, "phone_id = ?"

    .line 1209
    .local v0, "selection":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1210
    .local v1, "args":[Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/mediatek/ims/config/ImsConfigContract$ConfigSetting;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1211
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/mediatek/ims/config/ImsConfigContract$Provision;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1212
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/mediatek/ims/config/ImsConfigContract$Master;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1213
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/mediatek/ims/config/ImsConfigContract$Default;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1214
    return-void
.end method

.method private enforceConfigId(I)V
    .locals 3
    .param p1, "configId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1382
    invoke-static {p1}, Lcom/mediatek/ims/config/ImsConfigContract$Validator;->isValidConfigId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1386
    return-void

    .line 1383
    :cond_0
    new-instance v0, Lcom/android/ims/ImsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No deafult value for config "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x65

    invoke-direct {v0, v1, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private enforceDefaultValue(ILjava/lang/String;)V
    .locals 3
    .param p1, "configId"    # I
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1375
    const-string v0, "n/a"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1379
    return-void

    .line 1376
    :cond_0
    new-instance v0, Lcom/android/ims/ImsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No deafult value for config "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private getConfigCv(III)Landroid/content/ContentValues;
    .locals 3
    .param p1, "configId"    # I
    .param p2, "mimeType"    # I
    .param p3, "value"    # I

    .line 1216
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1217
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "phone_id"

    iget v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1218
    const-string v1, "config_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1219
    const-string v1, "mimetype_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1220
    const-string v1, "data"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1221
    return-object v0
.end method

.method private getConfigCv(IILjava/lang/String;)Landroid/content/ContentValues;
    .locals 3
    .param p1, "configId"    # I
    .param p2, "mimeType"    # I
    .param p3, "value"    # Ljava/lang/String;

    .line 1225
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1226
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "phone_id"

    iget v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1227
    const-string v1, "config_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1228
    const-string v1, "mimetype_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1229
    const-string v1, "data"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    return-object v0
.end method

.method private getConfigFirstCursor(Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 10
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "configId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1278
    const-string v0, "phone_id"

    const-string v1, "config_id"

    const-string v2, "mimetype_id"

    const-string v3, "data"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v6

    .line 1283
    .local v6, "projection":[Ljava/lang/String;
    iget v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    invoke-static {p1, v0, p2}, Lcom/mediatek/ims/config/ImsConfigContract;->getConfigUri(Ljava/lang/String;II)Landroid/net/Uri;

    move-result-object v0

    .line 1284
    .local v0, "uri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1285
    .local v1, "c":Landroid/database/Cursor;
    const/16 v2, 0x65

    if-eqz v1, :cond_2

    .line 1286
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1287
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1288
    return-object v1

    .line 1289
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 1290
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1291
    new-instance v3, Lcom/android/ims/ImsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Config "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " shall exist in table: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 1295
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1296
    new-instance v3, Lcom/android/ims/ImsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Config "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " shall exist once in table: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 1301
    :cond_2
    new-instance v3, Lcom/android/ims/ImsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Null cursor with config: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " in table: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v3
.end method

.method private getConfigSetting(I)Ljava/lang/String;
    .locals 11
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1066
    const/4 v0, 0x0

    .line 1067
    .local v0, "c":Landroid/database/Cursor;
    const-string v1, ""

    .line 1068
    .local v1, "result":Ljava/lang/String;
    const-string v2, "phone_id"

    const-string v3, "setting_id"

    const-string v4, "value"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v7

    .line 1073
    .local v7, "projection":[Ljava/lang/String;
    const/16 v2, 0x66

    :try_start_0
    iget-object v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget v3, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    .line 1074
    invoke-static {v3, p1}, Lcom/mediatek/ims/config/ImsConfigContract$ConfigSetting;->getUriWithSettingId(II)Landroid/net/Uri;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1073
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v0, v3

    .line 1077
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 1078
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1079
    const-string v3, "value"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 1080
    .local v3, "index":I
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 1081
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1082
    .end local v3    # "index":I
    nop

    .line 1092
    if-eqz v0, :cond_0

    .line 1093
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1097
    :cond_0
    return-object v1

    .line 1083
    :cond_1
    :try_start_1
    new-instance v3, Lcom/android/ims/ImsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getConfigSetting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " for phone "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1092
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 1087
    :catch_0
    move-exception v3

    .line 1088
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Lcom/android/ims/ImsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getConfigSetting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " for phone "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " not found or something wrong with cursor"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1092
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v0, :cond_2

    .line 1093
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method private getConfigStringValue(Ljava/lang/String;I)Ljava/lang/String;
    .locals 9
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "configId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1341
    const/4 v0, -0x1

    .line 1343
    .local v0, "mimeType":I
    const/4 v1, 0x0

    .line 1344
    .local v1, "c":Landroid/database/Cursor;
    invoke-direct {p0, p2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->enforceConfigId(I)V

    .line 1347
    const/16 v2, 0x65

    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->getConfigFirstCursor(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v4

    move-object v1, v4

    .line 1348
    const-string v4, "data"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 1349
    .local v4, "dataIndex":I
    const-string v5, "mimetype_id"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 1350
    .local v5, "mimeTypeIndex":I
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    .line 1352
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p2, v6}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->enforceDefaultValue(ILjava/lang/String;)V

    .line 1353
    if-ne v0, v3, :cond_1

    .line 1358
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v6

    .line 1366
    .local v2, "result":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1367
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1371
    :cond_0
    return-object v2

    .line 1354
    .end local v2    # "result":Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v6, Lcom/android/ims/ImsException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Config "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " shall be type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", but "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1366
    .end local v4    # "dataIndex":I
    .end local v5    # "mimeTypeIndex":I
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 1360
    :catch_0
    move-exception v4

    .line 1361
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v5, Lcom/android/ims/ImsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Config "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " shall be type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", but "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " or something wrong with cursor"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1366
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v1, :cond_2

    .line 1367
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method private getConfigValue(Ljava/lang/String;I)I
    .locals 9
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "configId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1308
    const/4 v0, -0x1

    .line 1309
    .local v0, "mimeType":I
    const/4 v1, 0x0

    .line 1310
    .local v1, "c":Landroid/database/Cursor;
    invoke-direct {p0, p2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->enforceConfigId(I)V

    .line 1313
    const/16 v2, 0x65

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->getConfigFirstCursor(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v4

    move-object v1, v4

    .line 1314
    const-string v4, "data"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 1315
    .local v4, "dataIndex":I
    const-string v5, "mimetype_id"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 1316
    .local v5, "mimeTypeIndex":I
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    .line 1318
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p2, v6}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->enforceDefaultValue(ILjava/lang/String;)V

    .line 1319
    if-nez v0, :cond_1

    .line 1324
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v6

    .line 1332
    .local v2, "result":I
    if-eqz v1, :cond_0

    .line 1333
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1337
    :cond_0
    return v2

    .line 1320
    .end local v2    # "result":I
    :cond_1
    :try_start_1
    new-instance v6, Lcom/android/ims/ImsException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Config "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " shall be type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", but "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1332
    .end local v4    # "dataIndex":I
    .end local v5    # "mimeTypeIndex":I
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 1326
    :catch_0
    move-exception v4

    .line 1327
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v5, Lcom/android/ims/ImsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Config "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " shall be type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", but "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " or something wrong with cursor"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1332
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v1, :cond_2

    .line 1333
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method private initConfigSettingStorage(I)V
    .locals 2
    .param p1, "opCode"    # I

    .line 1034
    nop

    .line 1035
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1034
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->addConfigSetting(ILjava/lang/String;)V

    .line 1036
    return-void
.end method

.method private initDefaultStorage(I)V
    .locals 11
    .param p1, "opCode"    # I

    .line 1102
    invoke-static {}, Lcom/mediatek/ims/config/ImsConfigSettings;->getConfigSettings()Ljava/util/Map;

    move-result-object v0

    .line 1103
    .local v0, "configSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/mediatek/ims/config/ImsConfigSettings$Setting;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1106
    .local v1, "defSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;>;"
    invoke-static {p1}, Lcom/mediatek/ims/config/DefaultConfigPolicyFactory;->getInstanceByOpCode(I)Lcom/mediatek/ims/config/DefaultConfigPolicyFactory;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mDefConfigPolicyFactory:Lcom/mediatek/ims/config/DefaultConfigPolicyFactory;

    .line 1107
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mDefConfigPolicyFactory:Lcom/mediatek/ims/config/DefaultConfigPolicyFactory;

    invoke-virtual {v2}, Lcom/mediatek/ims/config/DefaultConfigPolicyFactory;->load()Ljava/util/HashMap;

    move-result-object v1

    .line 1108
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1109
    const-string v2, "ImsConfigStorage"

    const-string v3, "No default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    return-void

    .line 1113
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1114
    .local v3, "configId":Ljava/lang/Integer;
    const-string v4, "n/a"

    .line 1115
    .local v4, "value":Ljava/lang/String;
    const/4 v5, -0x1

    .line 1116
    .local v5, "unitId":I
    iget-object v6, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mDefConfigPolicyFactory:Lcom/mediatek/ims/config/DefaultConfigPolicyFactory;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/mediatek/ims/config/DefaultConfigPolicyFactory;->hasDefaultValue(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1117
    goto :goto_0

    .line 1119
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;

    .line 1120
    .local v6, "base":Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;
    if-eqz v6, :cond_2

    .line 1121
    iget-object v4, v6, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->defVal:Ljava/lang/String;

    .line 1122
    iget v5, v6, Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;->unitId:I

    .line 1124
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;

    .line 1125
    .local v7, "setting":Lcom/mediatek/ims/config/ImsConfigSettings$Setting;
    iget v8, v7, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;->mimeType:I

    if-nez v8, :cond_3

    .line 1126
    nop

    .line 1127
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget v9, v7, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;->mimeType:I

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1126
    invoke-direct {p0, v8, v9, v10}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->getConfigCv(III)Landroid/content/ContentValues;

    move-result-object v8

    .line 1128
    .local v8, "cv":Landroid/content/ContentValues;
    const-string v9, "unit_id"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1129
    iget-object v9, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v10, Lcom/mediatek/ims/config/ImsConfigContract$Default;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1130
    .end local v8    # "cv":Landroid/content/ContentValues;
    goto :goto_1

    :cond_3
    const/4 v8, 0x1

    iget v9, v7, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;->mimeType:I

    if-ne v8, v9, :cond_4

    .line 1131
    nop

    .line 1132
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget v9, v7, Lcom/mediatek/ims/config/ImsConfigSettings$Setting;->mimeType:I

    .line 1131
    invoke-direct {p0, v8, v9, v4}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->getConfigCv(IILjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v8

    .line 1133
    .restart local v8    # "cv":Landroid/content/ContentValues;
    const-string v9, "unit_id"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1134
    iget-object v9, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v10, Lcom/mediatek/ims/config/ImsConfigContract$Default;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1138
    .end local v3    # "configId":Ljava/lang/Integer;
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "unitId":I
    .end local v6    # "base":Lcom/mediatek/ims/config/ImsConfigPolicy$DefaultConfig;
    .end local v7    # "setting":Lcom/mediatek/ims/config/ImsConfigSettings$Setting;
    .end local v8    # "cv":Landroid/content/ContentValues;
    :cond_4
    :goto_1
    goto :goto_0

    .line 1139
    :cond_5
    return-void
.end method

.method private initMasterStorage()V
    .locals 15

    .line 1143
    invoke-static {}, Lcom/mediatek/ims/config/ImsConfigSettings;->getConfigSettings()Ljava/util/Map;

    move-result-object v0

    .line 1145
    .local v0, "configSettings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/mediatek/ims/config/ImsConfigSettings$Setting;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1205
    return-void

    .line 1145
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1146
    .local v2, "configId":Ljava/lang/Integer;
    const/4 v3, 0x0

    .line 1147
    .local v3, "c":Landroid/database/Cursor;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1148
    .local v4, "cv":Landroid/content/ContentValues;
    const/4 v5, 0x0

    .line 1149
    .local v5, "isFoundInNvRam":Z
    const/4 v6, 0x1

    .line 1154
    .local v6, "isFoundInAny":Z
    :try_start_0
    new-instance v7, Lcom/android/ims/ImsException;

    const-string v8, "here"

    const/16 v9, 0x66

    invoke-direct {v7, v8, v9}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v7
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1155
    :catch_0
    move-exception v7

    .line 1158
    .local v7, "e":Lcom/android/ims/ImsException;
    :try_start_1
    const-string v8, "tb_default"

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v8, v9}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->getConfigFirstCursor(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v8

    move-object v3, v8

    .line 1159
    if-eqz v3, :cond_1

    .line 1160
    const-string v8, "phone_id"

    .line 1161
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1162
    .local v8, "phoneIdIndex":I
    const-string v9, "config_id"

    .line 1163
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 1164
    .local v9, "configIndex":I
    const-string v10, "mimetype_id"

    .line 1165
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1166
    .local v10, "mimeTypeIndex":I
    const-string v11, "data"

    .line 1167
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 1168
    .local v11, "dataIndex":I
    const-string v12, "phone_id"

    .line 1169
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 1168
    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1170
    const-string v12, "config_id"

    .line 1171
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 1170
    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1172
    const-string v12, "mimetype_id"

    .line 1173
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 1172
    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1174
    const-string v12, "data"

    .line 1175
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1174
    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    const-string v12, "ImsConfigStorage"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Load default value "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " for config "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Lcom/android/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1183
    .end local v8    # "phoneIdIndex":I
    .end local v9    # "configIndex":I
    .end local v10    # "mimeTypeIndex":I
    .end local v11    # "dataIndex":I
    :cond_1
    if-eqz v3, :cond_3

    .line 1184
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1183
    :catchall_0
    move-exception v1

    if-eqz v3, :cond_2

    .line 1184
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1

    .line 1180
    :catch_1
    move-exception v8

    .line 1181
    .local v8, "e2":Lcom/android/ims/ImsException;
    const/4 v6, 0x0

    .line 1183
    .end local v8    # "e2":Lcom/android/ims/ImsException;
    if-eqz v3, :cond_3

    goto :goto_1

    .line 1188
    .end local v7    # "e":Lcom/android/ims/ImsException;
    :cond_3
    :goto_2
    if-eqz v6, :cond_4

    if-nez v3, :cond_5

    .line 1189
    :cond_4
    const-string v7, "phone_id"

    iget v8, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1190
    const-string v7, "config_id"

    invoke-virtual {v4, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1191
    const-string v7, "mimetype_id"

    .line 1192
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Lcom/mediatek/ims/config/ImsConfigSettings;->getMimeType(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 1191
    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1193
    const-string v7, "data"

    const-string v8, "n/a"

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    :cond_5
    iget-object v7, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/mediatek/ims/config/ImsConfigContract$Master;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1201
    if-eqz v5, :cond_6

    .line 1202
    iget-object v7, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/mediatek/ims/config/ImsConfigContract$Provision;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1204
    .end local v2    # "configId":Ljava/lang/Integer;
    .end local v3    # "c":Landroid/database/Cursor;
    .end local v4    # "cv":Landroid/content/ContentValues;
    .end local v5    # "isFoundInNvRam":Z
    .end local v6    # "isFoundInAny":Z
    :cond_6
    goto/16 :goto_0
.end method

.method static loadConfigStorage(Landroid/os/Handler;I)V
    .locals 4
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "operatorCode"    # I

    .line 1020
    if-eqz p0, :cond_1

    .line 1022
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1023
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1024
    .local v1, "msg":Landroid/os/Message;
    iput v0, v1, Landroid/os/Message;->what:I

    .line 1025
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1026
    invoke-static {}, Lcom/mediatek/ims/config/internal/ImsConfigStorage;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1027
    const-string v0, "ImsConfigStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LoadConfigStorage() msg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    :cond_0
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1031
    .end local v1    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method private updateConfig(Ljava/lang/String;III)I
    .locals 4
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "configId"    # I
    .param p3, "mimeType"    # I
    .param p4, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1251
    invoke-direct {p0, p2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->enforceConfigId(I)V

    .line 1253
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1254
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "phone_id"

    iget v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1255
    const-string v1, "config_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1256
    const-string v1, "mimetype_id"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1257
    const-string v1, "data"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1259
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    .line 1260
    invoke-static {p1, v2, p2}, Lcom/mediatek/ims/config/ImsConfigContract;->getConfigUri(Ljava/lang/String;II)Landroid/net/Uri;

    move-result-object v2

    .line 1259
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private updateConfig(Ljava/lang/String;IILjava/lang/String;)I
    .locals 4
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "configId"    # I
    .param p3, "mimeType"    # I
    .param p4, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1265
    invoke-direct {p0, p2}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->enforceConfigId(I)V

    .line 1267
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1268
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "phone_id"

    iget v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1269
    const-string v1, "config_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1270
    const-string v1, "mimetype_id"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1271
    const-string v1, "data"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    .line 1274
    invoke-static {p1, v2, p2}, Lcom/mediatek/ims/config/ImsConfigContract;->getConfigUri(Ljava/lang/String;II)Landroid/net/Uri;

    move-result-object v2

    .line 1273
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private updateConfigSetting(II)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "value"    # I

    .line 1052
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1053
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "phone_id"

    iget v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1054
    const-string v1, "setting_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1055
    const-string v1, "value"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1056
    const-string v1, "tb_config_setting"

    iget v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    invoke-static {v1, v2, p1}, Lcom/mediatek/ims/config/ImsConfigContract;->getConfigUri(Ljava/lang/String;II)Landroid/net/Uri;

    move-result-object v1

    .line 1058
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 1059
    .local v2, "count":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1063
    return-void

    .line 1060
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateConfigSetting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " for phone "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " failed!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method declared-synchronized getOpCode()I
    .locals 1

    monitor-enter p0

    .line 974
    :try_start_0
    iget v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mOpCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    throw v0
.end method

.method init()V
    .locals 1

    .line 991
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->initDefaultStorage(I)V

    .line 992
    invoke-direct {p0}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->initMasterStorage()V

    .line 993
    return-void
.end method

.method init(I)V
    .locals 0
    .param p1, "opCode"    # I

    .line 996
    invoke-direct {p0, p1}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->initDefaultStorage(I)V

    .line 997
    invoke-direct {p0}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->initMasterStorage()V

    .line 999
    invoke-direct {p0, p1}, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->initConfigSettingStorage(I)V

    .line 1000
    return-void
.end method

.method declared-synchronized isInitDone()Z
    .locals 1

    monitor-enter p0

    .line 987
    :try_start_0
    iget-boolean v0, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mInitDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    throw v0
.end method

.method public isStorageInitialized()Z
    .locals 10

    .line 1003
    const/4 v0, 0x0

    .line 1004
    .local v0, "initialized":Z
    const-string v1, "phone_id"

    const-string v2, "setting_id"

    const-string v3, "value"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v6

    .line 1008
    .local v6, "projection":[Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    .line 1009
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/mediatek/ims/config/ImsConfigContract$ConfigSetting;->getUriWithSettingId(II)Landroid/net/Uri;

    move-result-object v5

    .line 1008
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1013
    .local v1, "c":Landroid/database/Cursor;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1014
    const/4 v0, 0x1

    .line 1016
    :cond_0
    return v0
.end method

.method declared-synchronized setInitDone(Z)V
    .locals 3
    .param p1, "done"    # Z

    monitor-enter p0

    .line 978
    :try_start_0
    iput-boolean p1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mInitDone:Z

    .line 981
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.ims.config.action.CONFIG_LOADED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 982
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "phone_id"

    iget v2, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mPhoneId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 983
    iget-object v1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 984
    monitor-exit p0

    return-void

    .line 977
    .end local v0    # "intent":Landroid/content/Intent;
    .end local p1    # "done":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    throw p1
.end method

.method declared-synchronized setOpCode(I)V
    .locals 0
    .param p1, "opCode"    # I

    monitor-enter p0

    .line 970
    :try_start_0
    iput p1, p0, Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;->mOpCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 971
    monitor-exit p0

    return-void

    .line 969
    .end local p1    # "opCode":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/mediatek/ims/config/internal/ImsConfigStorage$ConfigHelper;
    throw p1
.end method

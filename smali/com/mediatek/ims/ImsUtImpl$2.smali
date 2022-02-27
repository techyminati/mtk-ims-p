.class synthetic Lcom/mediatek/ims/ImsUtImpl$2;
.super Ljava/lang/Object;
.source "ImsUtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsUtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$internal$telephony$CommandException$Error:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1208
    invoke-static {}, Lcom/android/internal/telephony/CommandException$Error;->values()[Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/mediatek/ims/ImsUtImpl$2;->$SwitchMap$com$android$internal$telephony$CommandException$Error:[I

    :try_start_0
    sget-object v0, Lcom/mediatek/ims/ImsUtImpl$2;->$SwitchMap$com$android$internal$telephony$CommandException$Error:[I

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_1:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

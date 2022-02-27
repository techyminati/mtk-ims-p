.class public Lcom/mediatek/common/jpe/JpeException;
.super Ljava/lang/SecurityException;
.source "JpeException.java"


# instance fields
.field private errorMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    iput-object v0, p0, Lcom/mediatek/common/jpe/JpeException;->errorMessage:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/mediatek/common/jpe/JpeException;->errorMessage:Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 55
    .local v0, "value":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/mediatek/common/jpe/JpeException;->errorMessage:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 56
    const-string v1, "error - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/mediatek/common/jpe/JpeException;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 59
    :cond_0
    invoke-super {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

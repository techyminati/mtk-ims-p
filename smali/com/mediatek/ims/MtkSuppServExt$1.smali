.class Lcom/mediatek/ims/MtkSuppServExt$1;
.super Landroid/content/BroadcastReceiver;
.source "MtkSuppServExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/MtkSuppServExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ims/MtkSuppServExt;


# direct methods
.method constructor <init>(Lcom/mediatek/ims/MtkSuppServExt;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/ims/MtkSuppServExt;

    .line 577
    iput-object p1, p0, Lcom/mediatek/ims/MtkSuppServExt$1;->this$0:Lcom/mediatek/ims/MtkSuppServExt;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 580
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 581
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 582
    iget-object v1, p0, Lcom/mediatek/ims/MtkSuppServExt$1;->this$0:Lcom/mediatek/ims/MtkSuppServExt;

    invoke-static {v1}, Lcom/mediatek/ims/MtkSuppServExt;->access$800(Lcom/mediatek/ims/MtkSuppServExt;)V

    goto/16 :goto_0

    .line 583
    :cond_0
    const-string v1, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 584
    iget-object v1, p0, Lcom/mediatek/ims/MtkSuppServExt$1;->this$0:Lcom/mediatek/ims/MtkSuppServExt;

    invoke-static {v1, v2}, Lcom/mediatek/ims/MtkSuppServExt;->access$202(Lcom/mediatek/ims/MtkSuppServExt;Z)Z

    .line 586
    new-instance v1, Lcom/mediatek/ims/MtkSuppServExt$Task;

    iget-object v3, p0, Lcom/mediatek/ims/MtkSuppServExt$1;->this$0:Lcom/mediatek/ims/MtkSuppServExt;

    const-string v4, "Radio capability done"

    invoke-direct {v1, v3, v2, v2, v4}, Lcom/mediatek/ims/MtkSuppServExt$Task;-><init>(Lcom/mediatek/ims/MtkSuppServExt;IZLjava/lang/String;)V

    .line 587
    .local v1, "task":Lcom/mediatek/ims/MtkSuppServExt$Task;
    iget-object v2, p0, Lcom/mediatek/ims/MtkSuppServExt$1;->this$0:Lcom/mediatek/ims/MtkSuppServExt;

    invoke-static {v2}, Lcom/mediatek/ims/MtkSuppServExt;->access$900(Lcom/mediatek/ims/MtkSuppServExt;)Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->appendTask(Lcom/mediatek/ims/MtkSuppServExt$Task;)V

    .line 588
    .end local v1    # "task":Lcom/mediatek/ims/MtkSuppServExt$Task;
    goto/16 :goto_0

    :cond_1
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 589
    const-string v1, "state"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 590
    .local v1, "bAirplaneModeOn":Z
    iget-object v3, p0, Lcom/mediatek/ims/MtkSuppServExt$1;->this$0:Lcom/mediatek/ims/MtkSuppServExt;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_AIRPLANE_MODE_CHANGED, bAirplaneModeOn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/ims/MtkSuppServExt;->access$100(Lcom/mediatek/ims/MtkSuppServExt;Ljava/lang/String;)V

    .line 592
    if-eqz v1, :cond_2

    .line 593
    iget-object v3, p0, Lcom/mediatek/ims/MtkSuppServExt$1;->this$0:Lcom/mediatek/ims/MtkSuppServExt;

    invoke-static {v3, v2}, Lcom/mediatek/ims/MtkSuppServExt;->access$202(Lcom/mediatek/ims/MtkSuppServExt;Z)Z

    .line 595
    .end local v1    # "bAirplaneModeOn":Z
    :cond_2
    goto :goto_0

    :cond_3
    const-string v1, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 596
    const-string v1, "android.telephony.extra.SIM_STATE"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 598
    .local v1, "simStatus":I
    const-string v3, "subscription"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 601
    .local v3, "subId":I
    iget-object v4, p0, Lcom/mediatek/ims/MtkSuppServExt$1;->this$0:Lcom/mediatek/ims/MtkSuppServExt;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_SIM_APPLICATION_STATE_CHANGED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", subId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/ims/MtkSuppServExt;->access$100(Lcom/mediatek/ims/MtkSuppServExt;Ljava/lang/String;)V

    .line 604
    iget-object v4, p0, Lcom/mediatek/ims/MtkSuppServExt$1;->this$0:Lcom/mediatek/ims/MtkSuppServExt;

    invoke-static {v4}, Lcom/mediatek/ims/MtkSuppServExt;->access$1000(Lcom/mediatek/ims/MtkSuppServExt;)I

    move-result v4

    invoke-static {v4}, Lcom/mediatek/ims/MtkSuppServExt;->access$1100(I)I

    move-result v4

    if-eq v3, v4, :cond_4

    .line 605
    return-void

    .line 608
    :cond_4
    const/16 v4, 0xa

    if-eq v4, v1, :cond_5

    .line 609
    iget-object v4, p0, Lcom/mediatek/ims/MtkSuppServExt$1;->this$0:Lcom/mediatek/ims/MtkSuppServExt;

    invoke-static {v4, v2}, Lcom/mediatek/ims/MtkSuppServExt;->access$1200(Lcom/mediatek/ims/MtkSuppServExt;Z)V

    .line 610
    return-void

    .line 613
    :cond_5
    iget-object v4, p0, Lcom/mediatek/ims/MtkSuppServExt$1;->this$0:Lcom/mediatek/ims/MtkSuppServExt;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/mediatek/ims/MtkSuppServExt;->access$1200(Lcom/mediatek/ims/MtkSuppServExt;Z)V

    .line 614
    new-instance v4, Lcom/mediatek/ims/MtkSuppServExt$Task;

    iget-object v5, p0, Lcom/mediatek/ims/MtkSuppServExt$1;->this$0:Lcom/mediatek/ims/MtkSuppServExt;

    const-string v6, "SIM loaded."

    invoke-direct {v4, v5, v2, v2, v6}, Lcom/mediatek/ims/MtkSuppServExt$Task;-><init>(Lcom/mediatek/ims/MtkSuppServExt;IZLjava/lang/String;)V

    move-object v2, v4

    .line 615
    .local v2, "task":Lcom/mediatek/ims/MtkSuppServExt$Task;
    iget-object v4, p0, Lcom/mediatek/ims/MtkSuppServExt$1;->this$0:Lcom/mediatek/ims/MtkSuppServExt;

    invoke-static {v4}, Lcom/mediatek/ims/MtkSuppServExt;->access$900(Lcom/mediatek/ims/MtkSuppServExt;)Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/mediatek/ims/MtkSuppServExt$SuppServTaskDriven;->appendTask(Lcom/mediatek/ims/MtkSuppServExt$Task;)V

    .line 617
    .end local v1    # "simStatus":I
    .end local v2    # "task":Lcom/mediatek/ims/MtkSuppServExt$Task;
    .end local v3    # "subId":I
    :cond_6
    :goto_0
    return-void
.end method

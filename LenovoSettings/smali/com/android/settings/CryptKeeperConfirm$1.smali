.class Lcom/flyme/deviceoriginalsettings/CryptKeeperConfirm$1;
.super Ljava/lang/Object;
.source "CryptKeeperConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/CryptKeeperConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeperConfirm;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/CryptKeeperConfirm;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeperConfirm$1;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeperConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 106
    invoke-static {}, Lcom/flyme/deviceoriginalsettings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    const-string v1, "CryptKeeperConfirm"

    const-string v2, "MonkeyRunning"

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeperConfirm$1;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeperConfirm;

    # getter for: Lcom/flyme/deviceoriginalsettings/CryptKeeperConfirm;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/CryptKeeperConfirm;->access$000(Lcom/flyme/deviceoriginalsettings/CryptKeeperConfirm;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 115
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeperConfirm$1;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeperConfirm;

    # getter for: Lcom/flyme/deviceoriginalsettings/CryptKeeperConfirm;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/CryptKeeperConfirm;->access$000(Lcom/flyme/deviceoriginalsettings/CryptKeeperConfirm;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "notify.deskclock.reset.alarms"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 120
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeperConfirm$1;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeperConfirm;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/CryptKeeperConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/flyme/deviceoriginalsettings/CryptKeeperConfirm$Blank;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeperConfirm$1;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeperConfirm;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/CryptKeeperConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 123
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeperConfirm$1;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeperConfirm;

    invoke-virtual {v1, v0}, Lcom/flyme/deviceoriginalsettings/CryptKeeperConfirm;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.class Lcom/android/email/activity/MessageViewFragmentBase$11;
.super Landroid/content/BroadcastReceiver;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .locals 0
    .parameter

    .prologue
    .line 6004
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$11;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 6008
    const-string v2, "Email"

    const-string v3, "[MEMO] Broadcast received!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6010
    if-eqz p2, :cond_5

    .line 6011
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 6012
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 6013
    const-string v2, "android.intent.action.REQ_INFO_FROM_MINI_MEMO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6014
    const-string v2, "Email"

    const-string v3, "[MEMO] android.intent.action.REQ_INFO_FROM_MINI_MEMO Action received!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6016
    const-string v2, "ComponentName"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6017
    .local v1, componentName:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 6018
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[MEMO] componentName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6019
    const-string v2, "email"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "MessageView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6021
    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$11;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->onMemoPlus()V

    .line 6039
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #componentName:Ljava/lang/String;
    :goto_0
    return-void

    .line 6023
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #componentName:Ljava/lang/String;
    :cond_1
    const-string v2, "Email"

    const-string v3, "[MEMO] componentName is not matched with Email"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6027
    :cond_2
    const-string v2, "Email"

    const-string v3, "[MEMO] componentName is NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6030
    .end local v1           #componentName:Ljava/lang/String;
    :cond_3
    const-string v2, "Email"

    const-string v3, "[MEMO] request info is not matched"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6033
    :cond_4
    const-string v2, "Email"

    const-string v3, "[MEMO] No Action from memo"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6036
    .end local v0           #action:Ljava/lang/String;
    :cond_5
    const-string v2, "Email"

    const-string v3, "[MEMO] Intent is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

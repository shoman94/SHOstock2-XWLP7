.class Lcom/android/email/activity/MessageCompose$1;
.super Landroid/content/BroadcastReceiver;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter

    .prologue
    .line 1069
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$1;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1072
    const-string v3, "Compose >>"

    const-string v4, "reqReceiver.onReceive()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1075
    .local v0, action:Ljava/lang/String;
    const-string v3, "ResponseAxT9Info"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1077
    const/4 v1, 0x0

    .line 1079
    .local v1, bIsChangedOnHtmlComposer:Z
    const-string v3, "AxT9IME.isVisibleWindow"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 1081
    .local v2, bIsShowing:Z
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$1;->this$0:Lcom/android/email/activity/MessageCompose;

    iput-boolean v2, v3, Lcom/android/email/activity/MessageCompose;->m_bIsSoftInputPadShowing:Z

    .line 1083
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$1;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;
    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$100(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$1;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;
    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$100(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerView;->isInputMethodTarget()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1084
    const/4 v1, 0x1

    .line 1085
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$1;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mHtmlComposerView:Landroid/webkit/HtmlComposerView;
    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$100(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/webkit/HtmlComposerView;->setLastKeyPadState(Z)V

    .line 1088
    :cond_0
    const-string v3, "Compose >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reqReceiver.onReceive() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$1;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-boolean v5, v5, Lcom/android/email/activity/MessageCompose;->m_bIsSoftInputPadShowing:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    .end local v1           #bIsChangedOnHtmlComposer:Z
    .end local v2           #bIsShowing:Z
    :cond_1
    return-void
.end method

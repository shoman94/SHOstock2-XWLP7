.class Lcom/android/mms/ui/ComposeMessageFragment$61;
.super Landroid/content/BroadcastReceiver;
.source "ComposeMessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 7199
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$61;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 7202
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 7203
    .local v0, action:Ljava/lang/String;
    const-string v1, "ResponseAxT9Info"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7204
    const-string v1, "AxT9IME.isVisibleWindow"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/mms/ui/ComposeMessageFragment;->isSipVisible:Z

    .line 7206
    sget-boolean v1, Lcom/android/mms/ui/ComposeMessageFragment;->isSipVisible:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$61;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->isHideCompose:Z
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11200(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7207
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$61;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v2, 0x1

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->updateEditorSize(Z)V
    invoke-static {v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11300(Lcom/android/mms/ui/ComposeMessageFragment;Z)V

    .line 7210
    :cond_0
    sget-boolean v1, Lcom/android/mms/ui/ComposeMessageFragment;->isSipVisible:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$61;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3200(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MessageListView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7211
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$61;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3200(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MessageListView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$61;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListView:Lcom/android/mms/ui/MessageListView;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3200(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MessageListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListView;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MessageListView;->setSelection(I)V

    .line 7213
    :cond_1
    return-void
.end method

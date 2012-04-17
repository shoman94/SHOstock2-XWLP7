.class Lcom/android/email/activity/MessageViewForSeven$Z7Handler$1;
.super Ljava/lang/Object;
.source "MessageViewForSeven.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageViewForSeven$Z7Handler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/MessageViewForSeven$Z7Handler;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageViewForSeven$Z7Handler;)V
    .locals 0
    .parameter

    .prologue
    .line 742
    iput-object p1, p0, Lcom/android/email/activity/MessageViewForSeven$Z7Handler$1;->this$1:Lcom/android/email/activity/MessageViewForSeven$Z7Handler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 747
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven$Z7Handler$1;->this$1:Lcom/android/email/activity/MessageViewForSeven$Z7Handler;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewForSeven$Z7Handler;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewForSeven$Z7Handler$1;->this$1:Lcom/android/email/activity/MessageViewForSeven$Z7Handler;

    iget-object v1, v1, Lcom/android/email/activity/MessageViewForSeven$Z7Handler;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewForSeven;->updateMessageBody(Lcom/android/emailcommon/provider/EmailContent$Message;)V

    .line 748
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven$Z7Handler$1;->this$1:Lcom/android/email/activity/MessageViewForSeven$Z7Handler;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewForSeven$Z7Handler;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewForSeven$Z7Handler$1;->this$1:Lcom/android/email/activity/MessageViewForSeven$Z7Handler;

    iget-object v1, v1, Lcom/android/email/activity/MessageViewForSeven$Z7Handler;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewForSeven$Z7Handler$1;->this$1:Lcom/android/email/activity/MessageViewForSeven$Z7Handler;

    iget-object v2, v2, Lcom/android/email/activity/MessageViewForSeven$Z7Handler;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageViewForSeven;->getMessage()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/activity/MessageViewForSeven;->reloadUiFromBody(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 749
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven$Z7Handler$1;->this$1:Lcom/android/email/activity/MessageViewForSeven$Z7Handler;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewForSeven$Z7Handler;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MessageViewForSeven;->loadContentFromServer(Z)V

    .line 750
    return-void
.end method

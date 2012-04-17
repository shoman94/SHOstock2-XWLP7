.class Lcom/android/email/activity/MessageViewFragment$1;
.super Lcom/android/email/Controller$Result;
.source "MessageViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageViewFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageViewFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 322
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragment$1;->this$0:Lcom/android/email/activity/MessageViewFragment;

    invoke-direct {p0}, Lcom/android/email/Controller$Result;-><init>()V

    return-void
.end method


# virtual methods
.method public sendMeetingEditedResponseCallback(ZJJ)V
    .locals 8
    .parameter "success"
    .parameter "messageId"
    .parameter "draftId"

    .prologue
    .line 327
    if-eqz p1, :cond_1

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$1;->this$0:Lcom/android/email/activity/MessageViewFragment;

    #getter for: Lcom/android/email/activity/MessageViewFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragment;->access$200(Lcom/android/email/activity/MessageViewFragment;)Landroid/os/Handler;

    move-result-object v7

    new-instance v0, Lcom/android/email/activity/MessageViewFragment$1$1;

    move-object v1, p0

    move-wide v2, p4

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MessageViewFragment$1$1;-><init>(Lcom/android/email/activity/MessageViewFragment$1;JJ)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 362
    const/4 v6, 0x0

    .line 363
    .local v6, draft:Lcom/android/emailcommon/provider/EmailContent$Message;
    const-wide/16 v0, -0x1

    cmp-long v0, p4, v0

    if-lez v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$1;->this$0:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p4, p5}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v6

    .line 365
    if-eqz v6, :cond_0

    .line 366
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$1;->this$0:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragment;->getController()Lcom/android/email/Controller;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p4, v1, v2

    iget-wide v2, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/Controller;->deleteMessage([JJ)V

    goto :goto_0
.end method

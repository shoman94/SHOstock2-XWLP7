.class Lcom/android/email/SncMessagingController$18;
.super Ljava/lang/Object;
.source "SncMessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/SncMessagingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/SncMessagingController;

.field final synthetic val$accountId:J

.field final synthetic val$inboxId:J

.field final synthetic val$tag:J


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const-wide/16 v7, -0x1

    const/4 v5, 0x0

    .line 3887
    iget-object v0, p0, Lcom/android/email/SncMessagingController$18;->this$0:Lcom/android/email/SncMessagingController;

    iget-wide v1, p0, Lcom/android/email/SncMessagingController$18;->val$inboxId:J

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/email/SncMessagingController;->setFetchFlag(JI)V

    .line 3896
    const-wide/16 v3, -0x1

    .line 3897
    .local v3, inboxId:J
    iget-object v0, p0, Lcom/android/email/SncMessagingController$18;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/SncMessagingController;->access$100(Lcom/android/email/SncMessagingController;)Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/SncMessagingController$18;->val$accountId:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v9

    .line 3899
    .local v9, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v9, :cond_1

    .line 3900
    iget-object v0, p0, Lcom/android/email/SncMessagingController$18;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/SncMessagingController;->access$100(Lcom/android/email/SncMessagingController;)Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/SncMessagingController$18;->val$accountId:J

    const/4 v6, 0x5

    invoke-static {v0, v1, v2, v6}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v11

    .line 3902
    .local v11, sentboxId:J
    cmp-long v0, v11, v7

    if-eqz v0, :cond_0

    .line 3903
    iget-object v0, p0, Lcom/android/email/SncMessagingController$18;->this$0:Lcom/android/email/SncMessagingController;

    invoke-virtual {v0, v9, v11, v12}, Lcom/android/email/SncMessagingController;->sendPendingMessagesSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;J)V

    .line 3908
    :cond_0
    iget-object v0, p0, Lcom/android/email/SncMessagingController$18;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/SncMessagingController;->access$100(Lcom/android/email/SncMessagingController;)Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/SncMessagingController$18;->val$accountId:J

    invoke-static {v0, v1, v2, v5}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v3

    .line 3909
    cmp-long v0, v3, v7

    if-eqz v0, :cond_1

    .line 3910
    iget-object v0, p0, Lcom/android/email/SncMessagingController$18;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/SncMessagingController;->access$100(Lcom/android/email/SncMessagingController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v10

    .line 3912
    .local v10, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-eqz v10, :cond_1

    .line 3913
    iget-object v0, p0, Lcom/android/email/SncMessagingController$18;->this$0:Lcom/android/email/SncMessagingController;

    #calls: Lcom/android/email/SncMessagingController;->synchronizeMailboxSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    invoke-static {v0, v9, v10}, Lcom/android/email/SncMessagingController;->access$400(Lcom/android/email/SncMessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    .line 3917
    .end local v10           #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v11           #sentboxId:J
    :cond_1
    iget-object v0, p0, Lcom/android/email/SncMessagingController$18;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;
    invoke-static {v0}, Lcom/android/email/SncMessagingController;->access$200(Lcom/android/email/SncMessagingController;)Lcom/android/email/Controller$ServiceCallback;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/SncMessagingController$18;->val$accountId:J

    const/16 v6, 0x64

    iget-wide v7, p0, Lcom/android/email/SncMessagingController$18;->val$tag:J

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/Controller$ServiceCallback;->checkMailStatus(JJIIJ)V

    .line 3920
    return-void
.end method

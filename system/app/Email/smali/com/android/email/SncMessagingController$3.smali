.class Lcom/android/email/SncMessagingController$3;
.super Ljava/lang/Object;
.source "SncMessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/SncMessagingController;->synchronizeMailbox(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/SncMessagingController;

.field final synthetic val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

.field final synthetic val$folder:Lcom/android/emailcommon/provider/EmailContent$Mailbox;


# direct methods
.method constructor <init>(Lcom/android/email/SncMessagingController;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 534
    iput-object p1, p0, Lcom/android/email/SncMessagingController$3;->this$0:Lcom/android/email/SncMessagingController;

    iput-object p2, p0, Lcom/android/email/SncMessagingController$3;->val$folder:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iput-object p3, p0, Lcom/android/email/SncMessagingController$3;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v5, 0x0

    .line 536
    iget-object v0, p0, Lcom/android/email/SncMessagingController$3;->this$0:Lcom/android/email/SncMessagingController;

    iget-object v1, p0, Lcom/android/email/SncMessagingController$3;->val$folder:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/email/SncMessagingController;->setFetchFlag(JI)V

    .line 537
    iget-object v0, p0, Lcom/android/email/SncMessagingController$3;->this$0:Lcom/android/email/SncMessagingController;

    iget-object v1, p0, Lcom/android/email/SncMessagingController$3;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/SncMessagingController$3;->val$folder:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    #calls: Lcom/android/email/SncMessagingController;->synchronizeMailboxSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    invoke-static {v0, v1, v2}, Lcom/android/email/SncMessagingController;->access$400(Lcom/android/email/SncMessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    .line 538
    iget-object v0, p0, Lcom/android/email/SncMessagingController$3;->val$folder:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->tag:J

    cmp-long v0, v0, v10

    if-lez v0, :cond_0

    .line 540
    const-string v0, "SncMessagingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invoking teh service callback hack for accId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/SncMessagingController$3;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " folder - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/SncMessagingController$3;->val$folder:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lcom/android/email/SncMessagingController$3;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mListener:Lcom/android/email/Controller$ServiceCallback;
    invoke-static {v0}, Lcom/android/email/SncMessagingController;->access$200(Lcom/android/email/SncMessagingController;)Lcom/android/email/Controller$ServiceCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/SncMessagingController$3;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-object v3, p0, Lcom/android/email/SncMessagingController$3;->val$folder:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/16 v6, 0x64

    iget-object v7, p0, Lcom/android/email/SncMessagingController$3;->val$folder:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v7, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->tag:J

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/Controller$ServiceCallback;->checkMailStatus(JJIIJ)V

    .line 544
    iget-object v0, p0, Lcom/android/email/SncMessagingController$3;->val$folder:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iput-wide v10, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->tag:J

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/android/email/SncMessagingController$3;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 547
    iget-object v0, p0, Lcom/android/email/SncMessagingController$3;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1}, Lcom/android/email/Controller;->isSnc(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 548
    iget-object v0, p0, Lcom/android/email/SncMessagingController$3;->this$0:Lcom/android/email/SncMessagingController;

    #getter for: Lcom/android/email/SncMessagingController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/SncMessagingController;->access$100(Lcom/android/email/SncMessagingController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreUnifiedAccount(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v9

    .line 549
    .local v9, unifiedAcc:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v0, p0, Lcom/android/email/SncMessagingController$3;->this$0:Lcom/android/email/SncMessagingController;

    #calls: Lcom/android/email/SncMessagingController;->updateAccountCapability(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    invoke-static {v0, v9}, Lcom/android/email/SncMessagingController;->access$500(Lcom/android/email/SncMessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 554
    .end local v9           #unifiedAcc:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_1
    :goto_0
    return-void

    .line 551
    :cond_2
    iget-object v0, p0, Lcom/android/email/SncMessagingController$3;->this$0:Lcom/android/email/SncMessagingController;

    iget-object v1, p0, Lcom/android/email/SncMessagingController$3;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    #calls: Lcom/android/email/SncMessagingController;->updateAccountCapability(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    invoke-static {v0, v1}, Lcom/android/email/SncMessagingController;->access$500(Lcom/android/email/SncMessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    goto :goto_0
.end method

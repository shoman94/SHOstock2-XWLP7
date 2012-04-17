.class Lcom/android/email/MessagingController$21;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/MessagingController;->checkMail(JJLcom/android/email/MessagingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/MessagingController;

.field final synthetic val$accountId:J

.field final synthetic val$tag:J


# direct methods
.method constructor <init>(Lcom/android/email/MessagingController;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5285
    iput-object p1, p0, Lcom/android/email/MessagingController$21;->this$0:Lcom/android/email/MessagingController;

    iput-wide p2, p0, Lcom/android/email/MessagingController$21;->val$accountId:J

    iput-wide p4, p0, Lcom/android/email/MessagingController$21;->val$tag:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const-wide/16 v6, -0x1

    .line 5293
    const-wide/16 v4, -0x1

    .line 5294
    .local v4, inboxId:J
    iget-object v0, p0, Lcom/android/email/MessagingController$21;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/MessagingController$21;->val$accountId:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v8

    .line 5296
    .local v8, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v8, :cond_1

    .line 5297
    iget-object v0, p0, Lcom/android/email/MessagingController$21;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/MessagingController$21;->val$accountId:J

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v10

    .line 5299
    .local v10, sentboxId:J
    cmp-long v0, v10, v6

    if-eqz v0, :cond_0

    .line 5300
    iget-object v0, p0, Lcom/android/email/MessagingController$21;->this$0:Lcom/android/email/MessagingController;

    invoke-virtual {v0, v8, v10, v11}, Lcom/android/email/MessagingController;->sendPendingMessagesSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;J)V

    .line 5305
    :cond_0
    iget-object v0, p0, Lcom/android/email/MessagingController$21;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/MessagingController$21;->val$accountId:J

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v4

    .line 5306
    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    .line 5307
    iget-object v0, p0, Lcom/android/email/MessagingController$21;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v9

    .line 5309
    .local v9, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-eqz v9, :cond_1

    .line 5310
    iget-object v0, p0, Lcom/android/email/MessagingController$21;->this$0:Lcom/android/email/MessagingController;

    #calls: Lcom/android/email/MessagingController;->synchronizeMailboxSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    invoke-static {v0, v8, v9}, Lcom/android/email/MessagingController;->access$400(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    .line 5314
    .end local v9           #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v10           #sentboxId:J
    :cond_1
    iget-object v0, p0, Lcom/android/email/MessagingController$21;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v0}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/MessagingController$21;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/email/MessagingController$21;->val$accountId:J

    iget-wide v6, p0, Lcom/android/email/MessagingController$21;->val$tag:J

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/GroupMessagingListener;->checkMailFinished(Landroid/content/Context;JJJ)V

    .line 5315
    return-void
.end method

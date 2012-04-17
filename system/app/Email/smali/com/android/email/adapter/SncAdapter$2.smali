.class Lcom/android/email/adapter/SncAdapter$2;
.super Ljava/lang/Thread;
.source "SncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/adapter/SncAdapter;->updateMailbox(JJZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/adapter/SncAdapter;

.field final synthetic val$accountId:J

.field final synthetic val$mailboxId:J


# direct methods
.method constructor <init>(Lcom/android/email/adapter/SncAdapter;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 923
    iput-object p1, p0, Lcom/android/email/adapter/SncAdapter$2;->this$0:Lcom/android/email/adapter/SncAdapter;

    iput-wide p2, p0, Lcom/android/email/adapter/SncAdapter$2;->val$accountId:J

    iput-wide p4, p0, Lcom/android/email/adapter/SncAdapter$2;->val$mailboxId:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 926
    sget-object v3, Lcom/android/email/adapter/ProtocolAdapter;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/android/email/adapter/SncAdapter$2;->val$accountId:J

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 927
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    sget-object v3, Lcom/android/email/adapter/ProtocolAdapter;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/android/email/adapter/SncAdapter$2;->val$mailboxId:J

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v1

    .line 928
    .local v1, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget v3, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 943
    :cond_0
    :goto_0
    return-void

    .line 931
    :cond_1
    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Lcom/android/email/adapter/ProtocolAdapter;->isSncAccount(J)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncStatus:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncStatus:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 935
    sget-object v3, Lcom/android/email/adapter/ProtocolAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreUnifiedAccount(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    .line 939
    .local v2, unifiedAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v3, p0, Lcom/android/email/adapter/SncAdapter$2;->this$0:Lcom/android/email/adapter/SncAdapter;

    #getter for: Lcom/android/email/adapter/SncAdapter;->mMessagingController:Lcom/android/email/SncMessagingController;
    invoke-static {v3}, Lcom/android/email/adapter/SncAdapter;->access$200(Lcom/android/email/adapter/SncAdapter;)Lcom/android/email/SncMessagingController;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/android/email/SncMessagingController;->qreSyncMailbox(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    goto :goto_0

    .line 941
    .end local v2           #unifiedAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_2
    iget-object v3, p0, Lcom/android/email/adapter/SncAdapter$2;->this$0:Lcom/android/email/adapter/SncAdapter;

    #getter for: Lcom/android/email/adapter/SncAdapter;->mMessagingController:Lcom/android/email/SncMessagingController;
    invoke-static {v3}, Lcom/android/email/adapter/SncAdapter;->access$200(Lcom/android/email/adapter/SncAdapter;)Lcom/android/email/SncMessagingController;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/android/email/SncMessagingController;->synchronizeMailbox(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    goto :goto_0
.end method

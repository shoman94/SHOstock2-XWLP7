.class Lcom/android/email/activity/utils/ProgressTracker$ControllerResults$1;
.super Ljava/lang/Object;
.source "ProgressTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/utils/ProgressTracker$ControllerResults;->updateMailboxListCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/utils/ProgressTracker$ControllerResults;

.field final synthetic val$accountId:J


# direct methods
.method constructor <init>(Lcom/android/email/activity/utils/ProgressTracker$ControllerResults;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/email/activity/utils/ProgressTracker$ControllerResults$1;->this$1:Lcom/android/email/activity/utils/ProgressTracker$ControllerResults;

    iput-wide p2, p0, Lcom/android/email/activity/utils/ProgressTracker$ControllerResults$1;->val$accountId:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 138
    invoke-static {}, Lcom/android/email/activity/utils/ProgressTracker;->access$100()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/utils/ProgressTracker$ControllerResults$1;->val$accountId:J

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v6

    .line 140
    .local v6, mbInbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-eqz v6, :cond_3

    iget-wide v0, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1}, Lcom/android/email/Email;->getMailboxRefreshTime(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 141
    iget-object v0, v6, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncStatus:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, v6, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncStatus:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 144
    :cond_0
    const-string v0, "ProgressTracker"

    const-string v1, "Refreshing INBOX since first time"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-wide v0, p0, Lcom/android/email/activity/utils/ProgressTracker$ControllerResults$1;->val$accountId:J

    invoke-static {v0, v1}, Lcom/android/email/Controller;->isSnc(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    const-string v0, "ProgressTracker"

    const-string v1, "For SNC accounts, set syncStatut to IGNORE"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-static {}, Lcom/android/email/activity/utils/ProgressTracker;->access$100()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->setSyncStatus(Landroid/content/Context;JI)V

    .line 153
    :cond_1
    invoke-static {}, Lcom/android/email/activity/utils/ProgressTracker;->access$200()Lcom/android/email/Controller;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/utils/ProgressTracker$ControllerResults$1;->val$accountId:J

    iget-wide v3, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/Controller;->updateMailbox(JJZ)V

    .line 162
    :cond_2
    :goto_0
    return-void

    .line 158
    :cond_3
    const-string v0, "ProgressTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to refresh INBOX since not found/alr-refreshed for accId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/email/activity/utils/ProgressTracker$ControllerResults$1;->val$accountId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mbInbox - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

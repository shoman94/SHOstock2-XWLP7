.class Lcom/android/email/Controller$10;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Controller;->deleteMessage([JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;

.field final synthetic val$accountId:J

.field final synthetic val$messageIds:[J


# direct methods
.method constructor <init>(Lcom/android/email/Controller;[JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2031
    iput-object p1, p0, Lcom/android/email/Controller$10;->this$0:Lcom/android/email/Controller;

    iput-object p2, p0, Lcom/android/email/Controller$10;->val$messageIds:[J

    iput-wide p3, p0, Lcom/android/email/Controller$10;->val$accountId:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 2033
    const/4 v4, 0x0

    .line 2034
    .local v4, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    iget-object v5, p0, Lcom/android/email/Controller$10;->val$messageIds:[J

    array-length v5, v5

    add-int/lit8 v1, v5, -0x1

    .local v1, c:I
    :goto_0
    if-ltz v1, :cond_3

    .line 2035
    iget-object v5, p0, Lcom/android/email/Controller$10;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/email/Controller;->access$100(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/Controller$10;->val$messageIds:[J

    aget-wide v6, v6, v1

    invoke-static {v5, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v4

    .line 2036
    iget-object v5, p0, Lcom/android/email/Controller$10;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/email/Controller;->access$100(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v5

    iget-wide v6, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v5, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v2

    .line 2037
    .local v2, m:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    iget v5, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v5, v5, 0x8

    if-nez v5, :cond_0

    iget v5, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_2

    :cond_0
    iget v5, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-eqz v5, :cond_1

    iget v5, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/16 v6, 0xc

    if-ne v5, v6, :cond_2

    .line 2039
    :cond_1
    new-instance v3, Lcom/android/emailcommon/mail/PackedString;

    iget-object v5, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    invoke-direct {v3, v5}, Lcom/android/emailcommon/mail/PackedString;-><init>(Ljava/lang/String;)V

    .line 2040
    .local v3, meetingInfo:Lcom/android/emailcommon/mail/PackedString;
    iget-object v5, p0, Lcom/android/email/Controller$10;->this$0:Lcom/android/email/Controller;

    const-string v6, "UID"

    invoke-virtual {v3, v6}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/email/Controller;->deleteCalendarInvitation(Ljava/lang/String;)Z

    .line 2034
    .end local v3           #meetingInfo:Lcom/android/emailcommon/mail/PackedString;
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2043
    .end local v2           #m:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :cond_3
    iget-wide v5, p0, Lcom/android/email/Controller$10;->val$accountId:J

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_6

    .line 2044
    iget-object v5, p0, Lcom/android/email/Controller$10;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/email/Controller;->access$000(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/email/Controller$10;->val$accountId:J

    invoke-static {v5, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 2046
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    sget-boolean v5, Lcom/android/emailcommon/EasRefs;->EAS_LOCAL_DB_OPERATION:Z

    if-eqz v5, :cond_5

    .line 2047
    if-eqz v0, :cond_4

    iget-boolean v5, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEasLocalChangeEnabled:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 2048
    iget-object v5, p0, Lcom/android/email/Controller$10;->this$0:Lcom/android/email/Controller;

    iget-object v6, p0, Lcom/android/email/Controller$10;->val$messageIds:[J

    invoke-virtual {v5, v6}, Lcom/android/email/Controller;->deleteMessageLocal([J)V

    .line 2059
    .end local v0           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :goto_1
    iget-object v5, p0, Lcom/android/email/Controller$10;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/email/Controller;->access$100(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/Controller$10;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/email/Controller;->access$100(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/email/EmailUtility;->getUnreadTotalCount(Landroid/content/Context;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/email/BadgeManager;->updateBadgeProvider(Landroid/content/Context;I)V

    .line 2061
    return-void

    .line 2050
    .restart local v0       #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_4
    iget-object v5, p0, Lcom/android/email/Controller$10;->this$0:Lcom/android/email/Controller;

    iget-object v6, p0, Lcom/android/email/Controller$10;->val$messageIds:[J

    #calls: Lcom/android/email/Controller;->deleteMessageSync([J)V
    invoke-static {v5, v6}, Lcom/android/email/Controller;->access$300(Lcom/android/email/Controller;[J)V

    goto :goto_1

    .line 2053
    :cond_5
    iget-object v5, p0, Lcom/android/email/Controller$10;->this$0:Lcom/android/email/Controller;

    iget-object v6, p0, Lcom/android/email/Controller$10;->val$messageIds:[J

    #calls: Lcom/android/email/Controller;->deleteMessageSync([J)V
    invoke-static {v5, v6}, Lcom/android/email/Controller;->access$300(Lcom/android/email/Controller;[J)V

    goto :goto_1

    .line 2056
    .end local v0           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_6
    iget-object v5, p0, Lcom/android/email/Controller$10;->this$0:Lcom/android/email/Controller;

    iget-object v6, p0, Lcom/android/email/Controller$10;->val$messageIds:[J

    #calls: Lcom/android/email/Controller;->deleteMessageSyncForAllAccount([J)V
    invoke-static {v5, v6}, Lcom/android/email/Controller;->access$400(Lcom/android/email/Controller;[J)V

    goto :goto_1
.end method

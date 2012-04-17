.class public Lcom/android/email/MessagingController$ImapIdleFolder;
.super Ljava/lang/Object;
.source "MessagingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/MessagingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImapIdleFolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/MessagingController$ImapIdleFolder$IdleStatistics;,
        Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;
    }
.end annotation


# instance fields
.field private final IDLE_STATUS_STRING:[Ljava/lang/String;

.field mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

.field mConnTimeout:I

.field mCurrUpTime:J

.field mFailureString:Ljava/lang/String;

.field mFetchFlag:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mIdleCallback:Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;

.field mIdleThreadId:Ljava/lang/Thread;

.field mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

.field mRemoteFolder:Lcom/android/emailcommon/mail/Folder;

.field mResetCount:I

.field mRetryCount:I

.field private mStats:Lcom/android/email/MessagingController$ImapIdleFolder$IdleStatistics;

.field mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

.field mTotalUpTime:J

.field final synthetic this$0:Lcom/android/email/MessagingController;


# direct methods
.method public constructor <init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .locals 7
    .parameter
    .parameter "account"
    .parameter "folder"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 5880
    iput-object p1, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->this$0:Lcom/android/email/MessagingController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5855
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "IDLE_STATUS_INACTIVE"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "IDLE_STATUS_ACTIVE  "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "IDLE_STATUS_STOPPED "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "IDLE_STATUS_FAILED  "

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "IDLE_STATUS_RESET   "

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "NIL"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->IDLE_STATUS_STRING:[Ljava/lang/String;

    .line 5861
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5863
    const-string v0, "na"

    iput-object v0, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mFailureString:Ljava/lang/String;

    .line 5865
    iput v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mRetryCount:I

    .line 5866
    iput v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mConnTimeout:I

    .line 5867
    iput v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mResetCount:I

    .line 5870
    iput-wide v5, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mTotalUpTime:J

    .line 5871
    iput-wide v5, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mCurrUpTime:J

    .line 5877
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mFetchFlag:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5881
    new-instance v0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;

    invoke-direct {v0, p0, v4}, Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;-><init>(Lcom/android/email/MessagingController$ImapIdleFolder;Lcom/android/email/MessagingController$1;)V

    iput-object v0, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mIdleCallback:Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;

    .line 5883
    new-instance v0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleStatistics;

    invoke-direct {v0, p0, v4}, Lcom/android/email/MessagingController$ImapIdleFolder$IdleStatistics;-><init>(Lcom/android/email/MessagingController$ImapIdleFolder;Lcom/android/email/MessagingController$1;)V

    iput-object v0, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mStats:Lcom/android/email/MessagingController$ImapIdleFolder$IdleStatistics;

    .line 5884
    iput-object p2, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 5885
    iput-object p3, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    .line 5886
    return-void
.end method

.method static synthetic access$1600(Lcom/android/email/MessagingController$ImapIdleFolder;)Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5834
    iget-object v0, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mIdleCallback:Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/email/MessagingController$ImapIdleFolder;)Lcom/android/email/MessagingController$ImapIdleFolder$IdleStatistics;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5834
    iget-object v0, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mStats:Lcom/android/email/MessagingController$ImapIdleFolder$IdleStatistics;

    return-object v0
.end method


# virtual methods
.method public close(Z)V
    .locals 3
    .parameter "forceClose"

    .prologue
    .line 6135
    iget-object v1, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mRemoteFolder:Lcom/android/emailcommon/mail/Folder;

    if-nez v1, :cond_0

    .line 6136
    const-string v1, "close | Fail. mRemoteFolder itself is null"

    invoke-virtual {p0, v1}, Lcom/android/email/MessagingController$ImapIdleFolder;->dumpStatus(Ljava/lang/String;)V

    .line 6148
    :goto_0
    return-void

    .line 6141
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mRemoteFolder:Lcom/android/emailcommon/mail/Folder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/android/emailcommon/mail/Folder;->close(ZZ)V

    .line 6142
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mRemoteFolder:Lcom/android/emailcommon/mail/Folder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6143
    :catch_0
    move-exception v0

    .line 6146
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public dumpStatus(Ljava/lang/String;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 6186
    iget-object v1, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 6187
    .local v0, status:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->IDLE_STATUS_STRING:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mFetchFlag:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " [Ret/Timeout/Res - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mConnTimeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mResetCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " [Inv/Sup - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mStats:Lcom/android/email/MessagingController$ImapIdleFolder$IdleStatistics;

    iget v2, v2, Lcom/android/email/MessagingController$ImapIdleFolder$IdleStatistics;->mInvoked:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mStats:Lcom/android/email/MessagingController$ImapIdleFolder$IdleStatistics;

    iget v2, v2, Lcom/android/email/MessagingController$ImapIdleFolder$IdleStatistics;->mSuppressed:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " [TName/Id - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mIdleThreadId:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mIdleThreadId:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mIdleThreadId:Ljava/lang/Thread;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mIdleThreadId:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/email/MessagingController$ImapIdleFolder;->logIdle(Ljava/lang/String;)V

    .line 6192
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mFailureString:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure Reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mFailureString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/email/MessagingController$ImapIdleFolder;->logIdle(Ljava/lang/String;)V

    .line 6195
    :cond_0
    return-void

    .line 6187
    :cond_1
    const-string v1, "na"

    goto :goto_0

    :cond_2
    const-string v1, "na"

    goto :goto_1
.end method

.method public logIdle(Ljava/lang/String;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 6180
    const-string v0, "IDLE "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6182
    return-void
.end method

.method public reset()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 6057
    iget-object v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v3

    .line 6058
    :try_start_0
    iget-object v2, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 6060
    .local v1, status:I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 6062
    const-string v2, "Reset skipped\n"

    invoke-virtual {p0, v2}, Lcom/android/email/MessagingController$ImapIdleFolder;->dumpStatus(Ljava/lang/String;)V

    .line 6063
    monitor-exit v3

    .line 6090
    :goto_0
    return-void

    .line 6066
    :cond_0
    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    if-ne v1, v4, :cond_2

    .line 6067
    :cond_1
    const-string v2, "Restarting idle since failed or still in reset state\n"

    invoke-virtual {p0, v2}, Lcom/android/email/MessagingController$ImapIdleFolder;->dumpStatus(Ljava/lang/String;)V

    .line 6068
    invoke-virtual {p0}, Lcom/android/email/MessagingController$ImapIdleFolder;->start()I

    .line 6069
    monitor-exit v3

    goto :goto_0

    .line 6073
    .end local v1           #status:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 6072
    .restart local v1       #status:I
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 6073
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6075
    iget-object v2, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mRemoteFolder:Lcom/android/emailcommon/mail/Folder;

    if-nez v2, :cond_3

    .line 6076
    const-string v2, "reset | Fail. mRemoteFolder itself is null"

    invoke-virtual {p0, v2}, Lcom/android/email/MessagingController$ImapIdleFolder;->dumpStatus(Ljava/lang/String;)V

    goto :goto_0

    .line 6081
    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mRemoteFolder:Lcom/android/emailcommon/mail/Folder;

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Folder;->stopIdling()V

    .line 6082
    const-string v2, "Reset initiated."

    invoke-virtual {p0, v2}, Lcom/android/email/MessagingController$ImapIdleFolder;->logIdle(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 6083
    :catch_0
    move-exception v0

    .line 6086
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Resetting IDLE failed"

    invoke-virtual {p0, v2}, Lcom/android/email/MessagingController$ImapIdleFolder;->logIdle(Ljava/lang/String;)V

    .line 6087
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setFetchFlag(I)V
    .locals 3
    .parameter "isFetching"

    .prologue
    .line 6173
    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mFetchFlag:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 6175
    .local v0, curr:I
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fetch Flag Reset to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/email/MessagingController$ImapIdleFolder;->logIdle(Ljava/lang/String;)V

    .line 6176
    return-void

    .line 6173
    .end local v0           #curr:I
    :cond_0
    iget-object v1, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mFetchFlag:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    goto :goto_0
.end method

.method public start()I
    .locals 9

    .prologue
    const/16 v8, 0x64

    const/4 v7, 0x3

    const/4 v2, -0x1

    .line 5894
    :try_start_0
    const-string v3, "IDLE "

    const-string v4, "Open the remote folder and create the remote folder if necessary"

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5898
    iget-object v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v4, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v1

    .line 5900
    .local v1, remoteStore:Lcom/android/email/mail/Store;
    iget-object v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-static {v3, v4}, Lcom/android/email/provider/EmailProvider;->getRemoteFolder(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;Z)Lcom/android/emailcommon/mail/Folder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mRemoteFolder:Lcom/android/emailcommon/mail/Folder;

    .line 5902
    iget-object v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mRemoteFolder:Lcom/android/emailcommon/mail/Folder;

    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 5903
    const-string v3, "Remote folder does not exist"

    invoke-virtual {p0, v3}, Lcom/android/email/MessagingController$ImapIdleFolder;->logIdle(Ljava/lang/String;)V

    .line 5904
    const-string v3, "Remote folder does not exist"

    iput-object v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mFailureString:Ljava/lang/String;

    .line 5905
    iget-object v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 5906
    iget-object v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v3}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    new-instance v5, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v6, 0x3d

    invoke-direct {v5, v6}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const/16 v6, 0x64

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/email/GroupMessagingListener;->folderPushStatus(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/mail/MessagingException;I)V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6003
    .end local v1           #remoteStore:Lcom/android/email/mail/Store;
    :goto_0
    return v2

    .line 5910
    :catch_0
    move-exception v0

    .line 5911
    .local v0, e1:Lcom/android/emailcommon/mail/MessagingException;
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/MessagingException;->printStackTrace()V

    .line 5912
    iget-object v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 5913
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mFailureString:Ljava/lang/String;

    .line 5914
    iget-object v3, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static {v3}, Lcom/android/email/MessagingController;->access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-virtual {v3, v4, v0, v8}, Lcom/android/email/GroupMessagingListener;->folderPushStatus(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/mail/MessagingException;I)V

    goto :goto_0

    .line 5918
    .end local v0           #e1:Lcom/android/emailcommon/mail/MessagingException;
    .restart local v1       #remoteStore:Lcom/android/email/mail/Store;
    :cond_0
    new-instance v2, Lcom/android/email/MessagingController$ImapIdleFolder$1;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tImapIdle_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/email/MessagingController$ImapIdleFolder$1;-><init>(Lcom/android/email/MessagingController$ImapIdleFolder;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mIdleThreadId:Ljava/lang/Thread;

    .line 6002
    iget-object v2, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mIdleThreadId:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 6003
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public status()I
    .locals 1

    .prologue
    .line 6163
    iget-object v0, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public stop()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 6096
    iget-object v2, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    .line 6097
    .local v0, currStatus:I
    if-eq v3, v0, :cond_0

    const/4 v2, 0x3

    if-ne v2, v0, :cond_1

    .line 6099
    :cond_0
    const-string v2, "already Stopped or Failed :(\n"

    invoke-virtual {p0, v2}, Lcom/android/email/MessagingController$ImapIdleFolder;->dumpStatus(Ljava/lang/String;)V

    .line 6129
    :goto_0
    return-void

    .line 6103
    :cond_1
    const/4 v2, 0x4

    if-ne v2, v0, :cond_2

    .line 6106
    const-string v2, "Fail :( Already in reset state. Hence, closing the connection\n"

    invoke-virtual {p0, v2}, Lcom/android/email/MessagingController$ImapIdleFolder;->dumpStatus(Ljava/lang/String;)V

    .line 6107
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/email/MessagingController$ImapIdleFolder;->close(Z)V

    goto :goto_0

    .line 6115
    :cond_2
    iget-object v2, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mRemoteFolder:Lcom/android/emailcommon/mail/Folder;

    if-nez v2, :cond_3

    .line 6116
    const-string v2, "stop | Fail. mRemoteFolder itself is null"

    invoke-virtual {p0, v2}, Lcom/android/email/MessagingController$ImapIdleFolder;->dumpStatus(Ljava/lang/String;)V

    goto :goto_0

    .line 6120
    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/android/email/MessagingController$ImapIdleFolder;->mRemoteFolder:Lcom/android/emailcommon/mail/Folder;

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Folder;->stopIdling()V

    .line 6121
    const-string v2, "Stop initiated."

    invoke-virtual {p0, v2}, Lcom/android/email/MessagingController$ImapIdleFolder;->logIdle(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6122
    :catch_0
    move-exception v1

    .line 6125
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "Stopping IDLE failed"

    invoke-virtual {p0, v2}, Lcom/android/email/MessagingController$ImapIdleFolder;->logIdle(Ljava/lang/String;)V

    .line 6126
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

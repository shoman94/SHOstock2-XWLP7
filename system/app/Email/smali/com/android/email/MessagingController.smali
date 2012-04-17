.class public Lcom/android/email/MessagingController;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/MessagingController$CommandInfo;,
        Lcom/android/email/MessagingController$ImapIdleFolder;,
        Lcom/android/email/MessagingController$Command;,
        Lcom/android/email/MessagingController$LocalMessageInfo;,
        Lcom/android/email/MessagingController$LocalMailboxInfo;
    }
.end annotation


# static fields
.field private static FLAG_LIST_ANSWERED:[Lcom/android/emailcommon/mail/Flag;

.field private static final FLAG_LIST_FLAGGED:[Lcom/android/emailcommon/mail/Flag;

.field private static final FLAG_LIST_SEEN:[Lcom/android/emailcommon/mail/Flag;

.field private static final PRUNE_ATTACHMENT_CV:Landroid/content/ContentValues;

.field private static final PRUNE_ATTACHMENT_PROJECTION:[Ljava/lang/String;

.field private static sInstance:Lcom/android/email/MessagingController;


# instance fields
.field private mBusy:Z

.field private final mCommands:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/email/MessagingController$Command;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/email/Controller;

.field private mHandler:Landroid/os/Handler;

.field private mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/email/MessagingController$ImapIdleFolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mListeners:Lcom/android/email/GroupMessagingListener;

.field private mRemoteSync:Z

.field private mResetTimerCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mResetTimerStatus:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 135
    new-array v0, v3, [Lcom/android/emailcommon/mail/Flag;

    sget-object v1, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/email/MessagingController;->FLAG_LIST_SEEN:[Lcom/android/emailcommon/mail/Flag;

    .line 139
    new-array v0, v3, [Lcom/android/emailcommon/mail/Flag;

    sget-object v1, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/email/MessagingController;->FLAG_LIST_FLAGGED:[Lcom/android/emailcommon/mail/Flag;

    .line 144
    new-array v0, v3, [Lcom/android/emailcommon/mail/Flag;

    sget-object v1, Lcom/android/emailcommon/mail/Flag;->ANSWERED:Lcom/android/emailcommon/mail/Flag;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/email/MessagingController;->FLAG_LIST_ANSWERED:[Lcom/android/emailcommon/mail/Flag;

    .line 161
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "location"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/email/MessagingController;->PRUNE_ATTACHMENT_PROJECTION:[Ljava/lang/String;

    .line 165
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/android/email/MessagingController;->PRUNE_ATTACHMENT_CV:Landroid/content/ContentValues;

    .line 167
    sget-object v0, Lcom/android/email/MessagingController;->PRUNE_ATTACHMENT_CV:Landroid/content/ContentValues;

    const-string v1, "contentUri"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 170
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/MessagingController;->sInstance:Lcom/android/email/MessagingController;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/email/Controller;)V
    .locals 2
    .parameter "_context"
    .parameter "_controller"

    .prologue
    const/4 v1, 0x0

    .line 208
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 172
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    .line 179
    new-instance v0, Lcom/android/email/GroupMessagingListener;

    invoke-direct {v0}, Lcom/android/email/GroupMessagingListener;-><init>()V

    iput-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/MessagingController;->mRemoteSync:Z

    .line 189
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/MessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    .line 201
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/email/MessagingController;->mResetTimerStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 203
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/email/MessagingController;->mResetTimerCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 209
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    .line 210
    iput-object p2, p0, Lcom/android/email/MessagingController;->mController:Lcom/android/email/Controller;

    .line 211
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/email/MessagingController;->mHandler:Landroid/os/Handler;

    .line 212
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/email/MessagingController;->mThread:Ljava/lang/Thread;

    .line 213
    iget-object v0, p0, Lcom/android/email/MessagingController;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 214
    return-void
.end method

.method private IsEAS(Lcom/android/emailcommon/provider/EmailContent$Account;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1968
    .line 1972
    :try_start_0
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1982
    const/4 v0, -0x1

    :try_start_1
    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1983
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1985
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1987
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 1988
    const-string v2, "pop"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "imap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-eqz v2, :cond_2

    .line 2001
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v7

    .line 2003
    :goto_0
    return v0

    .line 1975
    :catch_0
    move-exception v0

    .line 1976
    const-string v0, "MsgControl >>>"

    const-string v1, "Exception is occured, in IsEAS method "

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    .line 1977
    goto :goto_0

    .line 1990
    :cond_2
    :try_start_2
    const-string v2, "eas"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    if-eqz v0, :cond_3

    .line 2001
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v6

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v7

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v7

    .line 2003
    goto :goto_0

    .line 1997
    :catch_1
    move-exception v0

    .line 1998
    :try_start_3
    const-string v0, "MsgControl >>>"

    const-string v2, "onSwitchingTitle -----"

    invoke-static {v0, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2001
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v7

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method static synthetic access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/email/MessagingController;->checkITPolicy_AllowPOPIMAP(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/email/MessagingController;)Lcom/android/email/Controller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/email/MessagingController;->mController:Lcom/android/email/Controller;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/email/MessagingController;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/email/MessagingController;->mResetTimerStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/email/MessagingController;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/email/MessagingController;Ljava/lang/String;Ljava/lang/Runnable;Lcom/android/email/MessagingController$CommandInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 109
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Ljava/lang/Runnable;Lcom/android/email/MessagingController$CommandInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 109
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/MessagingController;->synchronizeMailboxSearchOnServer(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/android/email/MessagingController;->synchronizeMailboxSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/android/email/MessagingController;->saveOrUpdate(Lcom/android/emailcommon/provider/EmailContent;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/email/MessagingController;->processPendingActionsSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;Landroid/content/ContentResolver;Ljava/util/HashMap;JJ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-direct/range {p0 .. p7}, Lcom/android/email/MessagingController;->processPendingMultiMoveSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Landroid/content/ContentResolver;Ljava/util/HashMap;JJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/email/MessagingController;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/android/email/MessagingController;->loadMessageForViewSyncronous(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/email/MessagingController;JJLcom/android/emailcommon/provider/EmailContent$Account;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-direct/range {p0 .. p7}, Lcom/android/email/MessagingController;->processPendingAccountMoveActionsSynchronous(JJLcom/android/emailcommon/provider/EmailContent$Account;J)Z

    move-result v0

    return v0
.end method

.method private checkITPolicy_AllowPOPIMAP(Lcom/android/emailcommon/provider/EmailContent$Account;)Z
    .locals 1
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1959
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/SecurityPolicy;->IsAllowPOPIMAPEmailSetted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1960
    invoke-direct {p0, p1}, Lcom/android/email/MessagingController;->IsEAS(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1961
    const/4 v0, 0x0

    .line 1964
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/android/email/Controller;)Lcom/android/email/MessagingController;
    .locals 2
    .parameter "_context"
    .parameter "_controller"

    .prologue
    .line 222
    const-class v1, Lcom/android/email/MessagingController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/email/MessagingController;->sInstance:Lcom/android/email/MessagingController;

    if-nez v0, :cond_0

    .line 223
    new-instance v0, Lcom/android/email/MessagingController;

    invoke-direct {v0, p0, p1}, Lcom/android/email/MessagingController;-><init>(Landroid/content/Context;Lcom/android/email/Controller;)V

    sput-object v0, Lcom/android/email/MessagingController;->sInstance:Lcom/android/email/MessagingController;

    .line 225
    :cond_0
    sget-object v0, Lcom/android/email/MessagingController;->sInstance:Lcom/android/email/MessagingController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static injectMockController(Lcom/android/email/MessagingController;)V
    .locals 0
    .parameter "mockController"

    .prologue
    .line 233
    sput-object p0, Lcom/android/email/MessagingController;->sInstance:Lcom/android/email/MessagingController;

    .line 234
    return-void
.end method

.method private isActiveListener(Lcom/android/email/MessagingListener;)Z
    .locals 1
    .parameter "listener"

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    invoke-virtual {v0, p1}, Lcom/android/email/GroupMessagingListener;->isActiveListener(Lcom/android/email/MessagingListener;)Z

    move-result v0

    return v0
.end method

.method private isPushScheduledNow(Lcom/android/emailcommon/provider/EmailContent$Account;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v6, -0x2

    .line 5613
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v3

    .line 5614
    const-string v0, "MsgControl >>>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPushScheduledNow | syncSchedule - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5615
    invoke-static {v3}, Lcom/android/emailcommon/utility/SyncScheduler;->getIsPeakAndNextAlarm(Lcom/android/emailcommon/utility/SyncScheduleData;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 5616
    const/4 v2, 0x1

    .line 5619
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 5621
    if-eqz v0, :cond_0

    .line 5622
    invoke-virtual {v3}, Lcom/android/emailcommon/utility/SyncScheduleData;->getRoamingSchedule()I

    move-result v0

    .line 5623
    if-nez v0, :cond_0

    .line 5624
    const-string v0, "MsgControl >>>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPushScheduledNow [accId - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v5, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Fail. Roaming - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " this time - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5636
    :goto_0
    return v1

    .line 5630
    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakSchedule()I

    move-result v0

    if-ne v0, v6, :cond_2

    :cond_1
    if-nez v4, :cond_3

    invoke-virtual {v3}, Lcom/android/emailcommon/utility/SyncScheduleData;->getOffPeakSchedule()I

    move-result v0

    if-eq v0, v6, :cond_3

    :cond_2
    move v0, v1

    .line 5634
    :goto_1
    const-string v1, "MsgControl >>>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPushScheduledNow [accId - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v5, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] this time - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isPush - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 5636
    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method private loadMessageForViewSyncronous(J)Z
    .locals 12
    .parameter "messageId"

    .prologue
    .line 3674
    :try_start_0
    iget-object v9, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v9, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v4

    .line 3676
    .local v4, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v4, :cond_0

    .line 3677
    const/4 v9, 0x0

    .line 3741
    .end local v4           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :goto_0
    return v9

    .line 3679
    .restart local v4       #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_0
    iget v9, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 3680
    const/4 v9, 0x0

    goto :goto_0

    .line 3686
    :cond_1
    iget-object v9, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-wide v10, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v9, v10, v11}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 3688
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v9, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-wide v10, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v9, v10, v11}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v2

    .line 3690
    .local v2, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-eqz v0, :cond_2

    if-nez v2, :cond_3

    .line 3691
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    .line 3694
    :cond_3
    iget-object v9, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v9}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v7

    .line 3695
    .local v7, remoteStore:Lcom/android/email/mail/Store;
    iget-object v9, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v5

    .line 3696
    .local v5, remoteFolder:Lcom/android/emailcommon/mail/Folder;
    sget-object v9, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    .line 3721
    iget-object v9, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v5, v9}, Lcom/android/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v6

    .line 3722
    .local v6, remoteMessage:Lcom/android/emailcommon/mail/Message;
    new-instance v1, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v1}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 3723
    .local v1, fp:Lcom/android/emailcommon/mail/FetchProfile;
    sget-object v9, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v1, v9}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 3724
    const/4 v9, 0x1

    new-array v9, v9, [Lcom/android/emailcommon/mail/Message;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v1, v10}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 3729
    if-eqz v6, :cond_4

    .line 3730
    const/4 v9, 0x1

    invoke-virtual {p0, v6, v0, v2, v9}, Lcom/android/email/MessagingController;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;I)V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3741
    :cond_4
    const/4 v9, 0x1

    goto :goto_0

    .line 3733
    .end local v0           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v1           #fp:Lcom/android/emailcommon/mail/FetchProfile;
    .end local v2           #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v4           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v5           #remoteFolder:Lcom/android/emailcommon/mail/Folder;
    .end local v6           #remoteMessage:Lcom/android/emailcommon/mail/Message;
    .end local v7           #remoteStore:Lcom/android/email/mail/Store;
    :catch_0
    move-exception v3

    .line 3736
    .local v3, me:Lcom/android/emailcommon/mail/MessagingException;
    const/4 v9, 0x0

    goto :goto_0

    .line 3737
    .end local v3           #me:Lcom/android/emailcommon/mail/MessagingException;
    :catch_1
    move-exception v8

    .line 3738
    .local v8, rte:Ljava/lang/RuntimeException;
    const/4 v9, 0x0

    goto :goto_0
.end method

.method private processAccountMoveUploadMessage(Landroid/content/ContentResolver;Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Account;JLcom/android/emailcommon/provider/EmailContent$Mailbox;J)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 3319
    const/4 v0, 0x0

    .line 3321
    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v1, p7, p8}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v6

    .line 3324
    if-nez v6, :cond_0

    .line 3325
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upsync failed for null message, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3343
    :goto_0
    return v0

    .line 3326
    :cond_0
    iget v1, p6, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 3327
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upsync skipped for mailbox=drafts, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3328
    :cond_1
    iget v1, p6, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 3329
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upsync skipped for mailbox=outbox, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3338
    :cond_2
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upsyc triggered for message id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-wide v3, p4

    move-object v5, p6

    .line 3339
    invoke-direct/range {v0 .. v6}, Lcom/android/email/MessagingController;->processPendingAccountMoveAppend(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Account;JLcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;)Z

    move-result v0

    goto :goto_0
.end method

.method private processPendingAccountMoveActionsSynchronous(JJLcom/android/emailcommon/provider/EmailContent$Account;J)Z
    .locals 12
    .parameter "messageId"
    .parameter "target_accountId"
    .parameter "account"
    .parameter "target_boxkey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 3265
    const/4 v11, 0x0

    .line 3266
    .local v11, bret:Z
    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 3267
    .local v7, resolver:Landroid/content/ContentResolver;
    const/4 v1, 0x1

    new-array v8, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    move-object/from16 v0, p5

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v1

    .local v8, accountIdArgs:[Ljava/lang/String;
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v6, p5

    move-wide/from16 v9, p6

    .line 3271
    invoke-direct/range {v1 .. v10}, Lcom/android/email/MessagingController;->processPendingAccountMoveUploadsSynchronous(JJLcom/android/emailcommon/provider/EmailContent$Account;Landroid/content/ContentResolver;[Ljava/lang/String;J)Z

    move-result v11

    .line 3274
    return v11
.end method

.method private processPendingAccountMoveAppend(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Account;JLcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3354
    iget-object v3, p5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v3

    .line 3355
    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3356
    sget-object v4, Lcom/android/emailcommon/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/emailcommon/mail/Folder$FolderType;

    invoke-virtual {v3, v4}, Lcom/android/emailcommon/mail/Folder;->canCreate(Lcom/android/emailcommon/mail/Folder$FolderType;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3361
    const-string v1, "processPendingAccountMoveAppend"

    const-string v2, "This Pop account do not allowed upload sync. So we will just local move."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3458
    :goto_0
    return v0

    .line 3379
    :cond_0
    sget-object v4, Lcom/android/emailcommon/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/emailcommon/mail/Folder$FolderType;

    invoke-virtual {v3, v4}, Lcom/android/emailcommon/mail/Folder;->create(Lcom/android/emailcommon/mail/Folder$FolderType;)Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v1

    .line 3382
    goto :goto_0

    .line 3385
    :cond_1
    sget-object v4, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v3, v4, v2}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    .line 3386
    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Folder;->getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-result-object v4

    sget-object v5, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    if-eq v4, v5, :cond_2

    .line 3387
    const-string v0, "processPendingAccountMoveAppend"

    const-string v2, "remoteFolder.getMode() != OpenMode.READ_WRITE."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3389
    invoke-virtual {v3, v1}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    move v0, v1

    .line 3390
    goto :goto_0

    .line 3395
    :cond_2
    iget-object v4, p6, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p6, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 3396
    iget-object v2, p6, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/android/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v2

    .line 3401
    :cond_3
    if-nez v2, :cond_5

    .line 3417
    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v2, p6}, Lcom/android/email/LegacyConversions;->makeMessage(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/mail/Message;

    move-result-object v2

    .line 3420
    new-instance v4, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v4}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 3421
    sget-object v5, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v4, v5}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 3423
    const/4 v4, 0x1

    :try_start_0
    new-array v4, v4, [Lcom/android/emailcommon/mail/Message;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Lcom/android/emailcommon/mail/Folder;->appendMessages([Lcom/android/emailcommon/mail/Message;)V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3432
    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p6, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    .line 3440
    iget-object v2, p6, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p6, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p6, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_6

    .line 3442
    :cond_4
    const-string v0, "processPendingAccountMoveAppend"

    const-string v2, "message.mServerId is null. Sending is failed...."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3444
    invoke-virtual {v3, v1}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    move v0, v1

    .line 3445
    goto :goto_0

    .line 3426
    :catch_0
    move-exception v0

    .line 3427
    invoke-virtual {v3, v1}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    move v0, v1

    .line 3428
    goto :goto_0

    .line 3434
    :cond_5
    const-string v0, "processPendingAccountMoveAppend"

    const-string v2, "Target Account Server Already have same message. Something wrong. Do nothing."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3436
    invoke-virtual {v3, v1}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    move v0, v1

    .line 3437
    goto/16 :goto_0

    .line 3456
    :cond_6
    invoke-virtual {v3, v1}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto/16 :goto_0
.end method

.method private processPendingAccountMoveUploadsSynchronous(JJLcom/android/emailcommon/provider/EmailContent$Account;Landroid/content/ContentResolver;[Ljava/lang/String;J)Z
    .locals 12
    .parameter "messageId"
    .parameter "target_accountId"
    .parameter "account"
    .parameter "resolver"
    .parameter "accountIdArgs"
    .parameter "target_boxkey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 3287
    const/4 v11, 0x0

    .line 3289
    .local v11, bret:Z
    const/4 v4, 0x0

    .line 3291
    .local v4, remoteStore:Lcom/android/email/mail/Store;
    const-wide/16 v2, 0x0

    cmp-long v2, p8, v2

    if-ltz v2, :cond_3

    .line 3292
    const/4 v8, 0x0

    .line 3296
    .local v8, target_mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-nez v4, :cond_0

    .line 3297
    :try_start_0
    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v4

    .line 3300
    :cond_0
    if-nez v8, :cond_1

    .line 3301
    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p8

    invoke-static {v2, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v8

    .line 3304
    :cond_1
    if-eqz v8, :cond_2

    move-object v2, p0

    move-object/from16 v3, p6

    move-object/from16 v5, p5

    move-wide v6, p3

    move-wide v9, p1

    .line 3305
    invoke-direct/range {v2 .. v10}, Lcom/android/email/MessagingController;->processAccountMoveUploadMessage(Landroid/content/ContentResolver;Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Account;JLcom/android/emailcommon/provider/EmailContent$Mailbox;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    .line 3313
    .end local v8           #target_mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :cond_2
    :goto_0
    return v11

    .line 3308
    .restart local v8       #target_mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :catchall_0
    move-exception v2

    throw v2

    .line 3311
    .end local v8           #target_mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :cond_3
    const/4 v11, 0x0

    goto :goto_0
.end method

.method private processPendingActionsSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 3758
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3759
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 3763
    const-string v2, "MsgControl >>>"

    const-string v3, "PERFORMANCE DELETE START"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3766
    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/MessagingController;->processPendingMultiDeletesSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Landroid/content/ContentResolver;[Ljava/lang/String;)V

    .line 3767
    const-string v2, "MsgControl >>>"

    const-string v3, "PERFORMANCE DELETE END"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3770
    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/MessagingController;->processPendingUploadsSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Landroid/content/ContentResolver;[Ljava/lang/String;)V

    .line 3773
    invoke-direct {p0, p1, v0, v1}, Lcom/android/email/MessagingController;->processPendingUpdatesSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Landroid/content/ContentResolver;[Ljava/lang/String;)V

    .line 3774
    return-void
.end method

.method private processPendingAppend(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;)Z
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 4431
    .line 4437
    iget-object v3, p3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v5

    .line 4438
    invoke-virtual {v5}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 4439
    sget-object v3, Lcom/android/emailcommon/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/emailcommon/mail/Folder$FolderType;

    invoke-virtual {v5, v3}, Lcom/android/emailcommon/mail/Folder;->canCreate(Lcom/android/emailcommon/mail/Folder$FolderType;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 4444
    iget-object v2, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 4445
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Local-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    .line 4446
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 4448
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 4449
    const-string v4, "syncServerId"

    iget-object v5, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4450
    iget-object v4, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v0, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4573
    :cond_1
    :goto_0
    return v1

    .line 4454
    :cond_2
    sget-object v3, Lcom/android/emailcommon/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/emailcommon/mail/Folder$FolderType;

    invoke-virtual {v5, v3}, Lcom/android/emailcommon/mail/Folder;->create(Lcom/android/emailcommon/mail/Folder$FolderType;)Z

    move-result v3

    if-nez v3, :cond_3

    move v1, v2

    .line 4457
    goto :goto_0

    .line 4462
    :cond_3
    :try_start_0
    sget-object v3, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v4, 0x0

    invoke-virtual {v5, v3, v4}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    .line 4463
    invoke-virtual {v5}, Lcom/android/emailcommon/mail/Folder;->getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-result-object v3

    sget-object v4, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v3, v4, :cond_5

    .line 4568
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4569
    invoke-virtual {v5, v2}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    :cond_4
    move v1, v2

    goto :goto_0

    .line 4469
    :cond_5
    :try_start_1
    iget-object v3, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    .line 4470
    iget-object v0, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/android/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v0

    .line 4475
    :cond_6
    if-nez v0, :cond_a

    .line 4477
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0, p4}, Lcom/android/email/LegacyConversions;->makeMessage(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/mail/Message;

    move-result-object v0

    .line 4480
    new-instance v3, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v3}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 4481
    sget-object v4, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v3, v4}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 4482
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/emailcommon/mail/Message;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v5, v3}, Lcom/android/emailcommon/mail/Folder;->appendMessages([Lcom/android/emailcommon/mail/Message;)V

    .line 4487
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move v3, v2

    move v0, v1

    move v4, v1

    .line 4537
    :goto_1
    if-eqz v4, :cond_7

    iget-object v4, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_7

    .line 4539
    :try_start_2
    iget-object v4, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/android/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v4

    .line 4540
    if-eqz v4, :cond_7

    .line 4541
    new-instance v6, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v6}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 4542
    sget-object v7, Lcom/android/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v6, v7}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 4543
    const/4 v7, 0x1

    new-array v7, v7, [Lcom/android/emailcommon/mail/Message;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v6, v8}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 4546
    invoke-virtual {v4}, Lcom/android/emailcommon/mail/Message;->getInternalDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    iput-wide v6, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerTimeStamp:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0

    move v0, v1

    .line 4555
    :cond_7
    :goto_2
    if-nez v3, :cond_8

    if-eqz v0, :cond_9

    .line 4556
    :cond_8
    :try_start_3
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, p4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 4557
    iget-object v6, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 4558
    if-eqz v3, :cond_c

    .line 4559
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {v6, v4, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4568
    :cond_9
    :goto_3
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4569
    invoke-virtual {v5, v2}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto/16 :goto_0

    .line 4494
    :cond_a
    :try_start_4
    new-instance v3, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v3}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 4495
    sget-object v4, Lcom/android/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v3, v4}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 4496
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/android/emailcommon/mail/Message;

    const/4 v6, 0x0

    aput-object v0, v4, v6

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v3, v6}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 4499
    new-instance v4, Ljava/util/Date;

    iget-wide v6, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerTimeStamp:J

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 4500
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Message;->getInternalDate()Ljava/util/Date;

    move-result-object v6

    .line 4501
    if-eqz v6, :cond_b

    invoke-virtual {v6, v4}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v4

    if-lez v4, :cond_b

    move v3, v1

    move v0, v2

    move v4, v2

    .line 4506
    goto :goto_1

    .line 4513
    :cond_b
    iget-object v4, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v4, p4}, Lcom/android/email/LegacyConversions;->makeMessage(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/mail/Message;

    move-result-object v4

    .line 4516
    invoke-virtual {v3}, Lcom/android/emailcommon/mail/FetchProfile;->clear()V

    .line 4517
    new-instance v3, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v3}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 4518
    sget-object v6, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v3, v6}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 4519
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/emailcommon/mail/Message;

    const/4 v6, 0x0

    aput-object v4, v3, v6

    invoke-virtual {v5, v3}, Lcom/android/emailcommon/mail/Folder;->appendMessages([Lcom/android/emailcommon/mail/Message;)V

    .line 4524
    invoke-virtual {v4}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    .line 4530
    sget-object v3, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/android/emailcommon/mail/Message;->setFlag(Lcom/android/emailcommon/mail/Flag;Z)V

    move v3, v2

    move v0, v1

    move v4, v1

    goto/16 :goto_1

    .line 4560
    :cond_c
    if-eqz v0, :cond_9

    .line 4561
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4562
    const-string v3, "syncServerId"

    iget-object v7, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v0, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4563
    const-string v3, "syncServerTimeStamp"

    iget-wide v7, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerTimeStamp:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4564
    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v0, v3, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    .line 4568
    :catchall_0
    move-exception v0

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 4569
    invoke-virtual {v5, v2}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    :cond_d
    throw v0

    .line 4549
    :catch_0
    move-exception v4

    goto/16 :goto_2
.end method

.method private processPendingDataChange(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Mailbox;ZZZZLcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 4128
    const/4 v0, 0x0

    .line 4132
    iget-object v1, p8, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p8, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p8, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    const-string v2, "Local-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p2, :cond_1

    .line 4216
    :cond_0
    :goto_0
    return-void

    .line 4142
    :cond_1
    if-eqz p6, :cond_b

    .line 4144
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-wide v1, p7, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 4147
    :goto_1
    if-eqz v0, :cond_0

    .line 4152
    iget v1, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 4157
    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v1

    .line 4158
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4163
    :try_start_0
    sget-object v0, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    .line 4164
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-result-object v0

    sget-object v2, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v2, :cond_2

    .line 4212
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4213
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto :goto_0

    .line 4169
    :cond_2
    :try_start_1
    iget-object v0, p8, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 4170
    if-nez v0, :cond_3

    .line 4212
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4213
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto :goto_0

    .line 4173
    :cond_3
    :try_start_2
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 4174
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update for msg id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " read="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p8, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " flagged="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p8, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " new mailbox="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p8, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4178
    :cond_4
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/emailcommon/mail/Message;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 4181
    if-eqz p3, :cond_5

    .line 4182
    sget-object v3, Lcom/android/email/MessagingController;->FLAG_LIST_SEEN:[Lcom/android/emailcommon/mail/Flag;

    iget-boolean v4, p8, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/emailcommon/mail/Folder;->setFlags([Lcom/android/emailcommon/mail/Message;[Lcom/android/emailcommon/mail/Flag;Z)V

    .line 4184
    :cond_5
    if-eqz p4, :cond_6

    .line 4185
    sget-object v3, Lcom/android/email/MessagingController;->FLAG_LIST_FLAGGED:[Lcom/android/emailcommon/mail/Flag;

    iget-boolean v4, p8, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/emailcommon/mail/Folder;->setFlags([Lcom/android/emailcommon/mail/Message;[Lcom/android/emailcommon/mail/Flag;Z)V

    .line 4188
    :cond_6
    if-eqz p5, :cond_7

    .line 4189
    sget-object v3, Lcom/android/email/MessagingController;->FLAG_LIST_ANSWERED:[Lcom/android/emailcommon/mail/Flag;

    iget-boolean v4, p8, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagReply:Z

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/emailcommon/mail/Folder;->setFlags([Lcom/android/emailcommon/mail/Message;[Lcom/android/emailcommon/mail/Flag;Z)V

    .line 4192
    :cond_7
    if-eqz p6, :cond_9

    .line 4193
    iget-object v3, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v3

    .line 4194
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->exists()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-nez v4, :cond_8

    .line 4212
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4213
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto/16 :goto_0

    .line 4198
    :cond_8
    const/4 v4, 0x0

    :try_start_3
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/emailcommon/mail/Folder;->copyMessages([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Folder;Lcom/android/emailcommon/mail/Folder$MessageUpdateCallbacks;)V

    .line 4200
    sget-object v2, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/emailcommon/mail/Message;->setFlag(Lcom/android/emailcommon/mail/Flag;Z)V

    .line 4201
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->expunge()[Lcom/android/emailcommon/mail/Message;

    .line 4205
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4206
    const-string v2, "syncServerId"

    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4207
    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4212
    :cond_9
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4213
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto/16 :goto_0

    .line 4212
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 4213
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    :cond_a
    throw v0

    :cond_b
    move-object v6, v0

    move-object v0, p2

    move-object p2, v6

    goto/16 :goto_1
.end method

.method private processPendingDeleteForeverFromAnyfolder(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 5
    .parameter "remoteStore"
    .parameter "account"
    .parameter "oldMailbox"
    .parameter "oldMessage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3468
    iget-object v2, p3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v1

    .line 3469
    .local v1, remoteTrashFolder:Lcom/android/emailcommon/mail/Folder;
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3490
    :goto_0
    return-void

    .line 3473
    :cond_0
    sget-object v2, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    .line 3474
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    if-eq v2, v3, :cond_1

    .line 3475
    invoke-virtual {v1, v4}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto :goto_0

    .line 3480
    :cond_1
    iget-object v2, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v0

    .line 3481
    .local v0, remoteMessage:Lcom/android/emailcommon/mail/Message;
    if-nez v0, :cond_2

    .line 3482
    invoke-virtual {v1, v4}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto :goto_0

    .line 3487
    :cond_2
    sget-object v2, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/emailcommon/mail/Message;->setFlag(Lcom/android/emailcommon/mail/Flag;Z)V

    .line 3488
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->expunge()[Lcom/android/emailcommon/mail/Message;

    .line 3489
    invoke-virtual {v1, v4}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto :goto_0
.end method

.method private processPendingMoveToTrash(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 4233
    iget-object v0, p5, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p5, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p5, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    const-string v1, "Local-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4365
    :cond_0
    :goto_0
    return-void

    .line 4240
    :cond_1
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-wide v1, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 4241
    if-eqz v0, :cond_0

    .line 4246
    iget v1, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    .line 4260
    if-eqz p2, :cond_2

    .line 4261
    invoke-virtual {p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDeletePolicy()I

    move-result v1

    if-eqz v1, :cond_0

    .line 4278
    :cond_2
    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v1

    .line 4279
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4284
    :try_start_0
    sget-object v0, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    .line 4285
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-result-object v0

    sget-object v2, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    if-eq v0, v2, :cond_3

    .line 4286
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/mail/Folder;->close(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4361
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4362
    invoke-virtual {v1, v5}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto :goto_0

    .line 4291
    :cond_3
    :try_start_1
    iget-object v0, p4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v0

    .line 4292
    if-nez v0, :cond_4

    .line 4293
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/mail/Folder;->close(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4361
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4362
    invoke-virtual {v1, v5}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto :goto_0

    .line 4298
    :cond_4
    :try_start_2
    iget-object v2, p3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v2

    .line 4299
    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v3

    if-nez v3, :cond_5

    .line 4303
    sget-object v3, Lcom/android/emailcommon/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/emailcommon/mail/Folder$FolderType;

    invoke-virtual {v2, v3}, Lcom/android/emailcommon/mail/Folder;->create(Lcom/android/emailcommon/mail/Folder$FolderType;)Z

    .line 4310
    :cond_5
    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Folder;->exists()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v3

    if-eqz v3, :cond_7

    .line 4317
    :try_start_3
    sget-object v3, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    .line 4318
    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Folder;->getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-result-object v3

    sget-object v4, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    if-eq v3, v4, :cond_6

    .line 4319
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    .line 4320
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/android/emailcommon/mail/Folder;->close(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4352
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {v2, v0}, Lcom/android/emailcommon/mail/Folder;->close(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4361
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4362
    invoke-virtual {v1, v5}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto/16 :goto_0

    .line 4324
    :cond_6
    const/4 v3, 0x1

    :try_start_5
    new-array v3, v3, [Lcom/android/emailcommon/mail/Message;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    new-instance v4, Lcom/android/email/MessagingController$16;

    invoke-direct {v4, p0, p5}, Lcom/android/email/MessagingController$16;-><init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    invoke-virtual {v1, v3, v2, v4}, Lcom/android/emailcommon/mail/Folder;->copyMessages([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Folder;Lcom/android/emailcommon/mail/Folder$MessageUpdateCallbacks;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4352
    const/4 v3, 0x0

    :try_start_6
    invoke-virtual {v2, v3}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    .line 4357
    :cond_7
    sget-object v2, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/emailcommon/mail/Message;->setFlag(Lcom/android/emailcommon/mail/Flag;Z)V

    .line 4358
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->expunge()[Lcom/android/emailcommon/mail/Message;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 4361
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4362
    invoke-virtual {v1, v5}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto/16 :goto_0

    .line 4352
    :catchall_0
    move-exception v0

    const/4 v3, 0x0

    :try_start_7
    invoke-virtual {v2, v3}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 4361
    :catchall_1
    move-exception v0

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 4362
    invoke-virtual {v1, v5}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    :cond_8
    throw v0
.end method

.method private processPendingMultiDeleteFromTrash(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/util/HashSet;)V
    .locals 9
    .parameter "remoteStore"
    .parameter "account"
    .parameter "oldMailbox"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/email/mail/Store;",
            "Lcom/android/emailcommon/provider/EmailContent$Account;",
            "Lcom/android/emailcommon/provider/EmailContent$Mailbox;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .local p4, messageServerId:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 4381
    iget v5, p3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v6, 0x6

    if-eq v5, v6, :cond_1

    .line 4415
    :cond_0
    :goto_0
    return-void

    .line 4387
    :cond_1
    iget-object v5, p3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v3

    .line 4388
    .local v3, remoteTrashFolder:Lcom/android/emailcommon/mail/Folder;
    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4392
    sget-object v5, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v3, v5, v8}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    .line 4393
    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Folder;->getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-result-object v5

    sget-object v6, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    if-eq v5, v6, :cond_2

    .line 4394
    invoke-virtual {v3, v7}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto :goto_0

    .line 4398
    :cond_2
    const/4 v2, 0x0

    .line 4400
    .local v2, remoteMessages:[Lcom/android/emailcommon/mail/Message;
    invoke-virtual {p4}, Ljava/util/HashSet;->toArray()[Ljava/lang/Object;

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_3

    .line 4401
    invoke-virtual {p4}, Ljava/util/HashSet;->toArray()[Ljava/lang/Object;

    move-result-object v5

    array-length v5, v5

    new-array v4, v5, [Ljava/lang/String;

    .line 4402
    .local v4, serverIds:[Ljava/lang/String;
    invoke-virtual {p4, v4}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v3, v5, v8}, Lcom/android/emailcommon/mail/Folder;->getMessages([Ljava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;

    move-result-object v2

    .line 4406
    .end local v4           #serverIds:[Ljava/lang/String;
    :cond_3
    if-eqz v2, :cond_5

    .line 4407
    array-length v5, v2

    new-array v0, v5, [Lcom/android/emailcommon/mail/Flag;

    .line 4408
    .local v0, flags:[Lcom/android/emailcommon/mail/Flag;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v5, v2

    if-ge v1, v5, :cond_4

    .line 4409
    sget-object v5, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    aput-object v5, v0, v1

    .line 4408
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4411
    :cond_4
    const/4 v5, 0x1

    invoke-virtual {v3, v2, v0, v5}, Lcom/android/emailcommon/mail/Folder;->setFlags([Lcom/android/emailcommon/mail/Message;[Lcom/android/emailcommon/mail/Flag;Z)V

    .line 4413
    .end local v0           #flags:[Lcom/android/emailcommon/mail/Flag;
    .end local v1           #i:I
    :cond_5
    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Folder;->expunge()[Lcom/android/emailcommon/mail/Message;

    .line 4414
    invoke-virtual {v3, v7}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto :goto_0
.end method

.method private processPendingMultiDeletesSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Landroid/content/ContentResolver;[Ljava/lang/String;)V
    .locals 15
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 3786
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION_UP_DEL:[Ljava/lang/String;

    const-string v4, "accountKey=?"

    const-string v6, "mailboxKey"

    move-object/from16 v1, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3790
    const-wide/16 v3, -0x1

    .line 3793
    const/4 v1, 0x0

    .line 3795
    const/4 v2, 0x0

    .line 3798
    :try_start_0
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 3799
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 3802
    if-nez v1, :cond_7

    .line 3803
    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-static {v1, v5, v9}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v1

    move-object v5, v1

    .line 3805
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3806
    const-class v1, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-static {v6, v1}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v1

    check-cast v1, Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 3808
    if-eqz v1, :cond_2

    .line 3809
    iget-wide v3, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 3811
    if-eqz v2, :cond_0

    iget-wide v9, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v11, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    cmp-long v9, v9, v11

    if-eqz v9, :cond_1

    .line 3812
    :cond_0
    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-wide v9, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v2, v9, v10}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v2

    .line 3814
    :cond_1
    iget v9, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_2

    .line 3815
    iget-object v9, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3816
    iget-wide v9, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    move-object v1, v2

    move-wide v13, v3

    move-wide v2, v13

    move-wide v13, v2

    move-wide v3, v13

    move-object v2, v1

    .line 3819
    goto :goto_0

    .line 3822
    :cond_3
    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 3823
    move-object/from16 v0, p1

    invoke-direct {p0, v5, v0, v2, v7}, Lcom/android/email/MessagingController;->processPendingMultiDeleteFromTrash(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/util/HashSet;)V

    .line 3827
    :cond_4
    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 3828
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 3830
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v5, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3833
    :catch_0
    move-exception v1

    .line 3837
    :try_start_1
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 3838
    const-string v2, "MsgControl >>>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to process pending delete for id="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3840
    :cond_5
    new-instance v2, Lcom/android/emailcommon/mail/MessagingException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3842
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3844
    return-void

    :cond_7
    move-object v5, v1

    goto/16 :goto_0
.end method

.method private processPendingMultiMoveSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Landroid/content/ContentResolver;Ljava/util/HashMap;JJ)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/emailcommon/provider/EmailContent$Account;",
            "Landroid/content/ContentResolver;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;JJ)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 3060
    .line 3062
    const/4 v0, 0x0

    .line 3064
    :try_start_0
    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v3

    .line 3065
    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v1, p4, p5}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v4

    .line 3066
    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v1, p6, p7}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v1

    .line 3068
    if-eqz v3, :cond_a

    if-eqz v4, :cond_a

    if-eqz v1, :cond_a

    .line 3070
    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3071
    :try_start_1
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3076
    sget-object v0, Lcom/android/emailcommon/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/emailcommon/mail/Folder$FolderType;

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/mail/Folder;->create(Lcom/android/emailcommon/mail/Folder$FolderType;)Z

    .line 3078
    :cond_0
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3079
    const/4 v0, 0x0

    .line 3166
    :goto_0
    return v0

    .line 3082
    :cond_1
    sget-object v0, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    .line 3083
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-result-object v0

    sget-object v2, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    if-eq v0, v2, :cond_2

    .line 3084
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    .line 3085
    const/4 v0, 0x0

    goto :goto_0

    .line 3089
    :cond_2
    const/4 v0, 0x0

    .line 3096
    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_c

    .line 3097
    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    .line 3098
    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/emailcommon/mail/Folder;->getMessages([Ljava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;

    move-result-object v0

    move-object v2, v0

    .line 3102
    :goto_1
    if-eqz v2, :cond_3

    array-length v0, v2

    if-gtz v0, :cond_4

    .line 3103
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    .line 3104
    const/4 v0, 0x0

    goto :goto_0

    .line 3107
    :cond_4
    iget-object v0, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v0

    .line 3108
    const-string v3, "processPendingMultiMoveSynchronous"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "newMailbox.mDisplayName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3110
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v3

    if-nez v3, :cond_5

    .line 3115
    sget-object v3, Lcom/android/emailcommon/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/emailcommon/mail/Folder$FolderType;

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/mail/Folder;->create(Lcom/android/emailcommon/mail/Folder$FolderType;)Z

    .line 3122
    :cond_5
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 3127
    sget-object v3, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    .line 3128
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Folder;->getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-result-object v3

    sget-object v4, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    if-eq v3, v4, :cond_6

    .line 3129
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    .line 3130
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    .line 3131
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 3134
    :cond_6
    new-instance v3, Lcom/android/email/MessagingController$14;

    invoke-direct {v3, p0}, Lcom/android/email/MessagingController$14;-><init>(Lcom/android/email/MessagingController;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/emailcommon/mail/Folder;->copyMessages([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Folder;Lcom/android/emailcommon/mail/Folder$MessageUpdateCallbacks;)V

    .line 3142
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    .line 3145
    if-eqz v2, :cond_8

    .line 3146
    array-length v0, v2

    new-array v3, v0, [Lcom/android/emailcommon/mail/Flag;

    .line 3147
    const/4 v0, 0x0

    :goto_2
    array-length v4, v2

    if-ge v0, v4, :cond_7

    .line 3148
    sget-object v4, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    aput-object v4, v3, v0

    .line 3147
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3150
    :cond_7
    const/4 v0, 0x1

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/emailcommon/mail/Folder;->setFlags([Lcom/android/emailcommon/mail/Message;[Lcom/android/emailcommon/mail/Flag;Z)V

    .line 3152
    :cond_8
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Folder;->expunge()[Lcom/android/emailcommon/mail/Message;

    .line 3153
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/mail/Folder;->close(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3154
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 3156
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 3158
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 3159
    :catch_0
    move-exception v1

    .line 3160
    :goto_3
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 3161
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    .line 3163
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 3159
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_3

    :cond_c
    move-object v2, v0

    goto/16 :goto_1
.end method

.method private processPendingUpdatesSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Landroid/content/ContentResolver;[Ljava/lang/String;)V
    .locals 21
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3964
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION_UP_DEL:[Ljava/lang/String;

    const-string v5, "accountKey=?"

    const-string v7, "mailboxKey"

    move-object/from16 v2, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 3968
    const-wide/16 v4, -0x1

    .line 3969
    const/4 v2, 0x0

    .line 3972
    if-eqz p1, :cond_0

    .line 3973
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v3, v6}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v3

    .line 3975
    if-eqz v3, :cond_0

    .line 3976
    const-string v6, "pop3"

    iget-object v3, v3, Lcom/android/email/mail/Store$StoreInfo;->mScheme:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :cond_0
    move/from16 v17, v2

    .line 3983
    :goto_0
    const/4 v3, 0x0

    .line 3985
    const/4 v2, 0x0

    .line 3987
    :cond_1
    :goto_1
    :try_start_1
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 3988
    const/4 v8, 0x0

    .line 3991
    const/4 v14, 0x0

    .line 3995
    const-class v6, Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v0, v20

    invoke-static {v0, v6}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v6

    check-cast v6, Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 3998
    if-eqz v6, :cond_1

    .line 3999
    iget-wide v0, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v18, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 4000
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-wide v9, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v9, v10}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v7

    .line 4002
    if-eqz v7, :cond_7

    .line 4003
    if-eqz v2, :cond_2

    iget-wide v4, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v9, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    cmp-long v4, v4, v9

    if-eqz v4, :cond_3

    .line 4004
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-wide v4, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v2, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v5

    .line 4006
    if-nez v5, :cond_4

    move-object v2, v5

    move-wide/from16 v4, v18

    .line 4007
    goto :goto_1

    .line 3978
    :catch_0
    move-exception v3

    .line 3979
    const-string v3, "Email"

    const-string v6, "Error !!"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v17, v2

    goto :goto_0

    :cond_3
    move-object v5, v2

    .line 4011
    :cond_4
    :try_start_3
    iget-wide v9, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    iget-wide v11, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    cmp-long v2, v9, v11

    if-eqz v2, :cond_11

    .line 4012
    iget v2, v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v4, 0x6

    if-ne v2, v4, :cond_8

    .line 4013
    const/4 v2, 0x1

    .line 4018
    :goto_2
    iget-boolean v4, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    iget-boolean v8, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    if-eq v4, v8, :cond_9

    const/4 v11, 0x1

    .line 4019
    :goto_3
    iget-boolean v4, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    iget-boolean v8, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    if-eq v4, v8, :cond_a

    const/4 v12, 0x1

    .line 4021
    :goto_4
    iget-boolean v4, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagReply:Z

    iget-boolean v8, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagReply:Z

    if-eq v4, v8, :cond_b

    const/4 v13, 0x1

    .line 4024
    :goto_5
    if-nez v3, :cond_6

    if-eqz p1, :cond_6

    if-nez v2, :cond_5

    if-nez v11, :cond_5

    if-nez v12, :cond_5

    if-nez v13, :cond_5

    if-eqz v14, :cond_6

    .line 4028
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-static {v3, v4, v8}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v3

    .line 4033
    :cond_6
    if-eqz v2, :cond_c

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    .line 4035
    invoke-direct/range {v2 .. v7}, Lcom/android/email/MessagingController;->processPendingMoveToTrash(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    move-object v2, v5

    .line 4045
    :cond_7
    :goto_6
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 4047
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-wide/from16 v4, v18

    goto/16 :goto_1

    .line 4015
    :cond_8
    const/4 v14, 0x1

    move v2, v8

    goto :goto_2

    .line 4018
    :cond_9
    const/4 v11, 0x0

    goto :goto_3

    .line 4019
    :cond_a
    const/4 v12, 0x0

    goto :goto_4

    .line 4021
    :cond_b
    const/4 v13, 0x0

    goto :goto_5

    .line 4037
    :cond_c
    if-nez v17, :cond_e

    if-nez v11, :cond_d

    if-nez v12, :cond_d

    if-nez v13, :cond_d

    if-eqz v14, :cond_e

    :cond_d
    move-object/from16 v8, p0

    move-object v9, v3

    move-object v10, v5

    move-object v15, v6

    move-object/from16 v16, v7

    .line 4039
    invoke-direct/range {v8 .. v16}, Lcom/android/email/MessagingController;->processPendingDataChange(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Mailbox;ZZZZLcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_e
    move-object v2, v5

    goto :goto_6

    .line 4062
    :cond_f
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 4064
    :goto_7
    return-void

    .line 4051
    :catch_1
    move-exception v2

    .line 4055
    :goto_8
    :try_start_4
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_10

    .line 4056
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to process pending update for id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4062
    :cond_10
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto :goto_7

    .line 4059
    :catch_2
    move-exception v2

    .line 4060
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4062
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto :goto_7

    :catchall_0
    move-exception v2

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    throw v2

    .line 4051
    :catch_3
    move-exception v2

    move-wide/from16 v18, v4

    goto :goto_8

    :cond_11
    move v2, v8

    goto/16 :goto_2
.end method

.method private processPendingUploadsSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Landroid/content/ContentResolver;[Ljava/lang/String;)V
    .locals 18
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 3861
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->ID_PROJECTION:[Ljava/lang/String;

    const-string v4, "accountKey=? and type=5"

    const/4 v6, 0x0

    move-object/from16 v1, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 3864
    const-wide/16 v7, -0x1

    .line 3867
    const/4 v1, 0x0

    move-object v9, v1

    .line 3868
    :goto_0
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 3869
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 3870
    const/4 v1, 0x1

    new-array v14, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v14, v1

    .line 3874
    const/4 v10, 0x0

    .line 3877
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_PROJECTION:[Ljava/lang/String;

    const-string v4, "mailboxKey=? and (syncServerId is null or syncServerId=\'\')"

    const/4 v6, 0x0

    move-object/from16 v1, p2

    move-object v5, v14

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v15

    move-object/from16 v16, v10

    move-object v10, v9

    move-object/from16 v9, v16

    .line 3883
    :goto_1
    :try_start_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3885
    if-nez v10, :cond_e

    .line 3886
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v3

    .line 3890
    :goto_2
    if-nez v9, :cond_0

    .line 3891
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v1, v12, v13}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v5

    .line 3892
    if-nez v5, :cond_1

    move-object v9, v5

    move-object v10, v3

    .line 3893
    goto :goto_1

    :cond_0
    move-object v5, v9

    .line 3898
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v4, p1

    .line 3900
    :try_start_2
    invoke-direct/range {v1 .. v7}, Lcom/android/email/MessagingController;->processUploadMessage(Landroid/content/ContentResolver;Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object v9, v5

    move-object v10, v3

    move-wide/from16 v16, v6

    move-wide/from16 v7, v16

    .line 3901
    goto :goto_1

    .line 3903
    :cond_2
    if-eqz v15, :cond_3

    .line 3904
    :try_start_3
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 3910
    :cond_3
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_PROJECTION:[Ljava/lang/String;

    const-string v4, "mailboxKey=?"

    const/4 v6, 0x0

    move-object/from16 v1, p2

    move-object v5, v14

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v14

    move-object v5, v9

    move-object v1, v10

    move-wide/from16 v16, v7

    move-wide/from16 v6, v16

    .line 3914
    :goto_3
    :try_start_4
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3916
    if-nez v1, :cond_d

    .line 3917
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v3

    .line 3921
    :goto_4
    if-nez v5, :cond_7

    .line 3922
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v1, v12, v13}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v5

    .line 3923
    if-nez v5, :cond_7

    move-object v1, v3

    .line 3924
    goto :goto_3

    .line 3903
    :catchall_0
    move-exception v1

    move-wide v6, v7

    :goto_5
    if-eqz v15, :cond_4

    .line 3904
    :try_start_5
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_0

    .line 3939
    :catch_0
    move-exception v1

    move-wide v7, v6

    .line 3943
    :goto_6
    :try_start_6
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 3944
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to process pending upsync for id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 3948
    :cond_5
    if-eqz v11, :cond_6

    .line 3949
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 3952
    :cond_6
    :goto_7
    return-void

    .line 3929
    :cond_7
    const/4 v1, 0x0

    :try_start_7
    invoke-interface {v14, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v4, p1

    .line 3931
    invoke-direct/range {v1 .. v7}, Lcom/android/email/MessagingController;->processUploadMessage(Landroid/content/ContentResolver;Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v1, v3

    .line 3932
    goto :goto_3

    .line 3934
    :cond_8
    if-eqz v14, :cond_9

    .line 3935
    :try_start_8
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_9
    move-object v9, v1

    move-wide/from16 v16, v6

    move-wide/from16 v7, v16

    .line 3938
    goto/16 :goto_0

    .line 3934
    :catchall_1
    move-exception v1

    if-eqz v14, :cond_a

    .line 3935
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_8 .. :try_end_8} :catch_0

    .line 3948
    :catchall_2
    move-exception v1

    if-eqz v11, :cond_b

    .line 3949
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v1

    .line 3948
    :cond_c
    if-eqz v11, :cond_6

    .line 3949
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_7

    .line 3939
    :catch_1
    move-exception v1

    goto :goto_6

    .line 3903
    :catchall_3
    move-exception v1

    goto :goto_5

    :cond_d
    move-object v3, v1

    goto :goto_4

    :cond_e
    move-object v3, v10

    goto/16 :goto_2
.end method

.method private processUploadMessage(Landroid/content/ContentResolver;Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;J)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 4086
    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v1, p5, p6}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    .line 4089
    if-nez v1, :cond_1

    .line 4090
    const/4 v0, 0x1

    .line 4091
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upsync failed for null message, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4105
    :goto_0
    if-eqz v0, :cond_0

    .line 4107
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p5, p6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 4109
    invoke-virtual {p1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4111
    :cond_0
    return-void

    .line 4092
    :cond_1
    iget v2, p4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 4094
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upsync skipped for mailbox=drafts, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4095
    :cond_2
    iget v2, p4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 4097
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upsync skipped for mailbox=outbox, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4098
    :cond_3
    iget v2, p4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_4

    .line 4100
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upsync skipped for mailbox=trash, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4102
    :cond_4
    const-string v0, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upsyc triggered for message id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4103
    invoke-direct {p0, p2, p3, p4, v1}, Lcom/android/email/MessagingController;->processPendingAppend(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method private put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V
    .locals 3
    .parameter "description"
    .parameter "listener"
    .parameter "runnable"

    .prologue
    .line 303
    :try_start_0
    new-instance v0, Lcom/android/email/MessagingController$Command;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/email/MessagingController$Command;-><init>(Lcom/android/email/MessagingController$1;)V

    .line 304
    .local v0, command:Lcom/android/email/MessagingController$Command;
    iput-object p2, v0, Lcom/android/email/MessagingController$Command;->listener:Lcom/android/email/MessagingListener;

    .line 305
    iput-object p3, v0, Lcom/android/email/MessagingController$Command;->runnable:Ljava/lang/Runnable;

    .line 306
    iput-object p1, v0, Lcom/android/email/MessagingController$Command;->description:Ljava/lang/String;

    .line 307
    iget-object v2, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    return-void

    .line 308
    .end local v0           #command:Lcom/android/email/MessagingController$Command;
    :catch_0
    move-exception v1

    .line 309
    .local v1, ie:Ljava/lang/IllegalStateException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private put(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "description"
    .parameter "runnable"

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    .line 315
    return-void
.end method

.method private put(Ljava/lang/String;Ljava/lang/Runnable;Lcom/android/email/MessagingController$CommandInfo;)V
    .locals 8
    .parameter "description"
    .parameter "runnable"
    .parameter "info"

    .prologue
    .line 272
    :try_start_0
    new-instance v1, Lcom/android/email/MessagingController$Command;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lcom/android/email/MessagingController$Command;-><init>(Lcom/android/email/MessagingController$1;)V

    .line 273
    .local v1, command:Lcom/android/email/MessagingController$Command;
    iput-object p2, v1, Lcom/android/email/MessagingController$Command;->runnable:Ljava/lang/Runnable;

    .line 274
    iput-object p1, v1, Lcom/android/email/MessagingController$Command;->description:Ljava/lang/String;

    .line 275
    iput-object p3, v1, Lcom/android/email/MessagingController$Command;->info:Lcom/android/email/MessagingController$CommandInfo;

    .line 276
    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-boolean v4, Lcom/android/email/Email;->DEBUG_SENSITIVE:Z

    if-eqz v4, :cond_0

    .line 277
    const-string v4, "MsgControl >>>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<<< put cmd : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " | desc : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " | size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    :cond_0
    if-eqz p3, :cond_3

    const-string v4, "synchronizeMailbox"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "qreSyncMailbox"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 286
    :cond_1
    iget-object v4, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingController$Command;

    .line 287
    .local v0, c:Lcom/android/email/MessagingController$Command;
    iget-object v4, v0, Lcom/android/email/MessagingController$Command;->info:Lcom/android/email/MessagingController$CommandInfo;

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/android/email/MessagingController$Command;->description:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/android/email/MessagingController$Command;->info:Lcom/android/email/MessagingController$CommandInfo;

    iget-wide v4, v4, Lcom/android/email/MessagingController$CommandInfo;->mAccountId:J

    iget-wide v6, p3, Lcom/android/email/MessagingController$CommandInfo;->mAccountId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 289
    iget-object v4, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4, v0}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 290
    const-string v4, "MsgControl >>>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " [REMOVE] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " [size - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 296
    .end local v0           #c:Lcom/android/email/MessagingController$Command;
    .end local v1           #command:Lcom/android/email/MessagingController$Command;
    .end local v2           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v3

    .line 297
    .local v3, ie:Ljava/lang/IllegalStateException;
    new-instance v4, Ljava/lang/Error;

    invoke-direct {v4, v3}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 294
    .end local v3           #ie:Ljava/lang/IllegalStateException;
    .restart local v1       #command:Lcom/android/email/MessagingController$Command;
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 295
    const-string v4, "MsgControl >>>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " [ADD] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " [size - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 299
    return-void
.end method

.method private saveOrUpdate(Lcom/android/emailcommon/provider/EmailContent;Landroid/content/Context;)V
    .locals 1
    .parameter "content"
    .parameter "context"

    .prologue
    .line 1672
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1673
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent;->toContentValues()Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/android/emailcommon/provider/EmailContent;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 1677
    :goto_0
    return-void

    .line 1675
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/emailcommon/provider/EmailContent;->save(Landroid/content/Context;)Landroid/net/Uri;

    goto :goto_0
.end method

.method private syncSearchOnServer(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/lang/String;)Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    .locals 23
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1683
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*** syncSearchOnServer *** "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1686
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 1687
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual/range {p2 .. p2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getUri()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1688
    new-instance v3, Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/email/mail/StoreSynchronizer$SyncResults;-><init>(II)V

    .line 1953
    :goto_0
    return-object v3

    .line 1691
    :cond_1
    const/4 v9, 0x0

    .line 1692
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 1695
    :try_start_0
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/email/MessagingController$LocalMessageInfo;->PROJECTION:[Ljava/lang/String;

    const-string v6, "accountKey=? AND mailboxKey=?"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, p2

    iget-wide v10, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v4

    .line 1700
    :goto_1
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1701
    new-instance v5, Lcom/android/email/MessagingController$LocalMessageInfo;

    invoke-direct {v5, v4}, Lcom/android/email/MessagingController$LocalMessageInfo;-><init>(Landroid/database/Cursor;)V

    .line 1702
    iget-object v6, v5, Lcom/android/email/MessagingController$LocalMessageInfo;->mServerId:Ljava/lang/String;

    invoke-virtual {v12, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1705
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v4, :cond_2

    .line 1706
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v3

    .line 1705
    :cond_3
    if-eqz v4, :cond_4

    .line 1706
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1710
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v4

    .line 1711
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v13

    .line 1713
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_5

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_5

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    .line 1715
    :cond_5
    invoke-virtual {v13}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1716
    sget-object v4, Lcom/android/emailcommon/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/emailcommon/mail/Folder$FolderType;

    invoke-virtual {v13, v4}, Lcom/android/emailcommon/mail/Folder;->create(Lcom/android/emailcommon/mail/Folder$FolderType;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1717
    new-instance v3, Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/email/mail/StoreSynchronizer$SyncResults;-><init>(II)V

    goto/16 :goto_0

    .line 1722
    :cond_6
    sget-object v4, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v5, 0x0

    invoke-virtual {v13, v4, v5}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    .line 1723
    invoke-virtual {v13}, Lcom/android/emailcommon/mail/Folder;->getMessageCount()I

    move-result v14

    .line 1725
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mVisibleLimit:I

    .line 1726
    if-gtz v4, :cond_7

    .line 1727
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v4

    .line 1729
    if-eqz v4, :cond_7

    .line 1730
    iget v4, v4, Lcom/android/email/mail/Store$StoreInfo;->mVisibleLimitDefault:I

    .line 1733
    :cond_7
    const/4 v4, 0x0

    new-array v4, v4, [Lcom/android/emailcommon/mail/Message;

    .line 1734
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1735
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 1737
    const/4 v6, 0x0

    .line 1738
    if-lez v14, :cond_23

    .line 1741
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v13, v4, v0, v5}, Lcom/android/emailcommon/mail/Folder;->getMessages(ILjava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;

    move-result-object v5

    .line 1742
    if-eqz v5, :cond_c

    .line 1743
    array-length v7, v5

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v7, :cond_8

    aget-object v8, v5, v4

    .line 1744
    invoke-virtual {v8}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v16

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1743
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1746
    :cond_8
    array-length v8, v5

    const/4 v4, 0x0

    move v7, v4

    :goto_4
    if-ge v7, v8, :cond_c

    aget-object v9, v5, v7

    .line 1747
    invoke-virtual {v9}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/MessagingController$LocalMessageInfo;

    .line 1748
    if-nez v4, :cond_9

    .line 1749
    add-int/lit8 v6, v6, 0x1

    .line 1751
    :cond_9
    if-eqz v4, :cond_a

    iget v4, v4, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagLoaded:I

    if-nez v4, :cond_b

    .line 1753
    :cond_a
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1746
    :cond_b
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_4

    :cond_c
    move-object v11, v5

    .line 1759
    :goto_5
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1760
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_d

    .line 1761
    new-instance v17, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct/range {v17 .. v17}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 1762
    sget-object v4, Lcom/android/emailcommon/mail/FetchProfile$Item;->FLAGS:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1763
    sget-object v4, Lcom/android/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1764
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v12}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1767
    const/4 v4, 0x0

    new-array v4, v4, [Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, [Lcom/android/emailcommon/mail/Message;

    new-instance v4, Lcom/android/email/MessagingController$8;

    move-object/from16 v5, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/email/MessagingController$8;-><init>(Lcom/android/email/MessagingController;Ljava/util/HashMap;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/util/ArrayList;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v10, v0, v4}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 1811
    :cond_d
    new-instance v4, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v4}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 1812
    sget-object v5, Lcom/android/emailcommon/mail/FetchProfile$Item;->FLAGS:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v4, v5}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1813
    const/4 v5, 0x0

    invoke-virtual {v13, v11, v4, v5}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 1814
    const/4 v5, 0x0

    .line 1815
    const/4 v6, 0x0

    .line 1816
    invoke-virtual {v13}, Lcom/android/emailcommon/mail/Folder;->getPermanentFlags()[Lcom/android/emailcommon/mail/Flag;

    move-result-object v8

    array-length v10, v8

    const/4 v4, 0x0

    move v7, v4

    :goto_6
    if-ge v7, v10, :cond_e

    aget-object v17, v8, v7

    .line 1817
    sget-object v4, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, v17

    if-ne v0, v4, :cond_22

    .line 1818
    const/4 v4, 0x1

    .line 1820
    :goto_7
    sget-object v5, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, v17

    if-ne v0, v5, :cond_21

    .line 1821
    const/4 v5, 0x1

    .line 1816
    :goto_8
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    move v6, v5

    move v5, v4

    goto :goto_6

    .line 1825
    :cond_e
    if-nez v5, :cond_f

    if-eqz v6, :cond_15

    .line 1826
    :cond_f
    array-length v0, v11

    move/from16 v17, v0

    const/4 v4, 0x0

    move v10, v4

    :goto_9
    move/from16 v0, v17

    if-ge v10, v0, :cond_15

    aget-object v8, v11, v10

    .line 1827
    invoke-virtual {v8}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/MessagingController$LocalMessageInfo;

    .line 1828
    if-nez v4, :cond_11

    .line 1826
    :cond_10
    :goto_a
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    goto :goto_9

    .line 1831
    :cond_11
    iget-boolean v7, v4, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagRead:Z

    .line 1832
    sget-object v18, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v18

    .line 1833
    if-eqz v5, :cond_13

    move/from16 v0, v18

    if-eq v0, v7, :cond_13

    const/4 v7, 0x1

    .line 1834
    :goto_b
    iget-boolean v0, v4, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagFavorite:Z

    move/from16 v19, v0

    .line 1835
    sget-object v20, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v20

    .line 1836
    if-eqz v6, :cond_14

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_14

    const/4 v8, 0x1

    .line 1837
    :goto_c
    if-nez v7, :cond_12

    if-eqz v8, :cond_10

    .line 1838
    :cond_12
    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v0, v4, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    invoke-static {v7, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 1840
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1841
    const-string v8, "flagRead"

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1842
    const-string v8, "flagFavorite"

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1843
    const/4 v8, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v3, v4, v7, v8, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_a

    .line 1833
    :cond_13
    const/4 v7, 0x0

    goto :goto_b

    .line 1836
    :cond_14
    const/4 v8, 0x0

    goto :goto_c

    .line 1848
    :cond_15
    new-instance v5, Ljava/util/HashSet;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1849
    const/4 v4, 0x0

    new-array v4, v4, [Lcom/android/emailcommon/mail/Message;

    .line 1850
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1851
    const/16 v4, 0x3e8

    .line 1852
    const/4 v7, 0x0

    sub-int v4, v14, v4

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 1855
    if-lez v14, :cond_17

    .line 1856
    const/4 v7, 0x0

    invoke-virtual {v13, v4, v14, v7}, Lcom/android/emailcommon/mail/Folder;->getMessages(IILcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;

    move-result-object v7

    .line 1857
    array-length v8, v7

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v8, :cond_16

    aget-object v10, v7, v4

    .line 1858
    invoke-virtual {v10}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1857
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 1860
    :cond_16
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 1863
    :cond_17
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1864
    invoke-virtual {v12, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/MessagingController$LocalMessageInfo;

    .line 1865
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v0, v4, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    invoke-static {v8, v10, v11, v0, v1}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    .line 1867
    sget-object v8, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v10, v4, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    invoke-static {v8, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 1869
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v3, v8, v10, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1871
    sget-object v8, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    iget-wide v10, v4, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    invoke-static {v8, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 1873
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v3, v8, v10, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1874
    sget-object v8, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    iget-wide v10, v4, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    invoke-static {v8, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 1876
    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual {v3, v4, v8, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_e

    .line 1879
    :cond_18
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1880
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1881
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/emailcommon/mail/Message;

    .line 1882
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseRetrievesize()Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 1883
    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Message;->getSize()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/emailcommon/provider/EmailContent$Account;->getLargeMsgCriSize(Landroid/content/Context;)I

    move-result v11

    if-le v10, v11, :cond_19

    .line 1884
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 1886
    :cond_19
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 1889
    :cond_1a
    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Message;->getSize()I

    move-result v10

    const/16 v11, 0x6400

    if-le v10, v11, :cond_1b

    .line 1890
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 1892
    :cond_1b
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 1897
    :cond_1c
    new-instance v8, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v8}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 1898
    sget-object v3, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v8, v3}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1899
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/emailcommon/mail/Message;

    new-instance v7, Lcom/android/email/MessagingController$9;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v7, v0, v1, v2}, Lcom/android/email/MessagingController$9;-><init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    invoke-virtual {v13, v3, v8, v7}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 1911
    invoke-virtual {v8}, Lcom/android/emailcommon/mail/FetchProfile;->clear()V

    .line 1912
    sget-object v3, Lcom/android/emailcommon/mail/FetchProfile$Item;->STRUCTURE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v8, v3}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1913
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/emailcommon/mail/Message;

    const/4 v7, 0x0

    invoke-virtual {v13, v3, v8, v7}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 1914
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_10
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/emailcommon/mail/Message;

    .line 1915
    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Message;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v4

    if-nez v4, :cond_1e

    .line 1916
    invoke-virtual {v8}, Lcom/android/emailcommon/mail/FetchProfile;->clear()V

    .line 1917
    sget-object v4, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY_SANE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v8, v4}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1918
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseRetrievesize()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1919
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/android/emailcommon/mail/Message;

    const/4 v10, 0x0

    aput-object v3, v4, v10

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/emailcommon/provider/EmailContent$Account;->getLargeMsgCriSize(Landroid/content/Context;)I

    move-result v11

    invoke-virtual {v13, v4, v8, v10, v11}, Lcom/android/emailcommon/mail/Folder;->fetchWithRetrieveSize([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;I)V

    .line 1927
    :goto_11
    const/4 v4, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/email/MessagingController;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;I)V

    goto :goto_10

    .line 1923
    :cond_1d
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/android/emailcommon/mail/Message;

    const/4 v10, 0x0

    aput-object v3, v4, v10

    const/4 v10, 0x0

    invoke-virtual {v13, v4, v8, v10}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    goto :goto_11

    .line 1930
    :cond_1e
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1931
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1932
    invoke-static {v3, v4, v10}, Lcom/android/emailcommon/internet/MimeUtility;->collectParts(Lcom/android/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1933
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_12
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/emailcommon/mail/Part;

    .line 1934
    invoke-virtual {v8}, Lcom/android/emailcommon/mail/FetchProfile;->clear()V

    .line 1935
    invoke-virtual {v8, v4}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 1936
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/android/emailcommon/mail/Message;

    const/4 v11, 0x0

    aput-object v3, v4, v11

    const/4 v11, 0x0

    invoke-virtual {v13, v4, v8, v11}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    goto :goto_12

    .line 1940
    :cond_1f
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/email/MessagingController;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;I)V

    goto/16 :goto_10

    .line 1944
    :cond_20
    invoke-virtual {v12}, Ljava/util/HashMap;->clear()V

    .line 1946
    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    .line 1947
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->clear()V

    .line 1949
    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    .line 1951
    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 1953
    new-instance v3, Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v3, v14, v4}, Lcom/android/email/mail/StoreSynchronizer$SyncResults;-><init>(II)V

    goto/16 :goto_0

    .line 1705
    :catchall_1
    move-exception v3

    move-object v4, v9

    goto/16 :goto_2

    :cond_21
    move v5, v6

    goto/16 :goto_8

    :cond_22
    move v4, v5

    goto/16 :goto_7

    :cond_23
    move-object v11, v4

    goto/16 :goto_5
.end method

.method private synchronizeMailboxGeneric(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    .locals 25
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2022
    .line 2023
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2025
    const/4 v11, 0x0

    .line 2027
    const-string v3, "Email"

    const-string v4, "*** synchronizeMailboxGeneric ***"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2033
    :try_start_0
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 2034
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual/range {p2 .. p2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getUri()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 2035
    new-instance v3, Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/email/mail/StoreSynchronizer$SyncResults;-><init>(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2677
    if-eqz v11, :cond_1

    throw v11

    move-result v4

    if-eqz v4, :cond_1

    .line 2678
    const/4 v4, 0x0

    throw v11

    .line 2681
    :cond_1
    :goto_0
    return-object v3

    .line 2042
    :cond_2
    const/4 v10, 0x0

    .line 2043
    :try_start_1
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2046
    :try_start_2
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/email/MessagingController$LocalMessageInfo;->PROJECTION:[Ljava/lang/String;

    const-string v6, "accountKey=? AND mailboxKey=?"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v4

    .line 2051
    :goto_1
    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2052
    new-instance v5, Lcom/android/email/MessagingController$LocalMessageInfo;

    invoke-direct {v5, v4}, Lcom/android/email/MessagingController$LocalMessageInfo;-><init>(Landroid/database/Cursor;)V

    .line 2053
    iget-object v6, v5, Lcom/android/email/MessagingController$LocalMessageInfo;->mServerId:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 2056
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v4, :cond_3

    .line 2057
    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2677
    :catchall_1
    move-exception v3

    move-object v4, v11

    :goto_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2678
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    :cond_4
    throw v3

    .line 2056
    :cond_5
    if-eqz v4, :cond_6

    .line 2057
    :try_start_5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 2074
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v4

    .line 2075
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v17

    .line 2085
    :try_start_6
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_7

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_7

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_8

    .line 2087
    :cond_7
    invoke-virtual/range {v17 .. v17}, Lcom/android/emailcommon/mail/Folder;->exists()Z

    move-result v4

    if-nez v4, :cond_8

    .line 2088
    sget-object v4, Lcom/android/emailcommon/mail/Folder$FolderType;->HOLDS_MESSAGES:Lcom/android/emailcommon/mail/Folder$FolderType;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/mail/Folder;->create(Lcom/android/emailcommon/mail/Folder$FolderType;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 2089
    new-instance v3, Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/email/mail/StoreSynchronizer$SyncResults;-><init>(II)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2677
    if-eqz v17, :cond_1

    invoke-virtual/range {v17 .. v17}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2678
    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    goto/16 :goto_0

    .line 2097
    :cond_8
    :try_start_7
    const-string v4, "EMAIL_PERFORMANCE"

    const-string v5, "synchronizeMailboxGeneric() BEFORE OPEN"

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 2098
    sget-object v4, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    .line 2099
    const-string v4, "EMAIL_PERFORMANCE"

    const-string v5, "synchronizeMailboxGeneric() AFTER OPEN"

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 2105
    invoke-virtual/range {v17 .. v17}, Lcom/android/emailcommon/mail/Folder;->getMessageCount()I

    move-result v19

    .line 2108
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mVisibleLimit:I

    .line 2109
    if-gtz v4, :cond_2f

    .line 2110
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v4

    .line 2112
    iget v4, v4, Lcom/android/email/mail/Store$StoreInfo;->mVisibleLimitDefault:I

    move v5, v4

    .line 2116
    :goto_4
    const/4 v4, 0x0

    new-array v4, v4, [Lcom/android/emailcommon/mail/Message;

    .line 2117
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 2118
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 2120
    const/4 v6, 0x0

    .line 2121
    if-lez v19, :cond_2e

    .line 2125
    const/4 v4, 0x0

    sub-int v5, v19, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 2127
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v4, v1, v5}, Lcom/android/emailcommon/mail/Folder;->getMessages(IILcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;

    move-result-object v5

    .line 2128
    array-length v7, v5

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v7, :cond_9

    aget-object v8, v5, v4

    .line 2129
    invoke-virtual {v8}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v21

    invoke-virtual {v0, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2128
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 2133
    :cond_9
    invoke-direct/range {p0 .. p1}, Lcom/android/email/MessagingController;->checkITPolicy_AllowPOPIMAP(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 2134
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    .line 2135
    new-instance v3, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v4, 0x7

    invoke-direct {v3, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v3

    .line 2677
    :catchall_2
    move-exception v3

    move-object/from16 v4, v17

    goto/16 :goto_3

    .line 2148
    :cond_a
    array-length v8, v5

    const/4 v4, 0x0

    move v7, v4

    :goto_6
    if-ge v7, v8, :cond_e

    aget-object v10, v5, v7

    .line 2149
    invoke-virtual {v10}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/MessagingController$LocalMessageInfo;

    .line 2150
    if-nez v4, :cond_b

    .line 2151
    add-int/lit8 v6, v6, 0x1

    .line 2153
    :cond_b
    if-eqz v4, :cond_c

    iget v4, v4, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagLoaded:I

    if-nez v4, :cond_d

    .line 2155
    :cond_c
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2148
    :cond_d
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_6

    :cond_e
    move-object v13, v5

    .line 2173
    :goto_7
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_f

    .line 2174
    new-instance v11, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v11}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 2175
    sget-object v4, Lcom/android/emailcommon/mail/FetchProfile$Item;->FLAGS:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v11, v4}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 2176
    sget-object v4, Lcom/android/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v11, v4}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 2177
    new-instance v6, Ljava/util/HashMap;

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 2180
    const/4 v4, 0x0

    new-array v4, v4, [Lcom/android/emailcommon/mail/Message;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, [Lcom/android/emailcommon/mail/Message;

    move-object v10, v0

    new-instance v4, Lcom/android/email/MessagingController$10;

    move-object/from16 v5, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/email/MessagingController$10;-><init>(Lcom/android/email/MessagingController;Ljava/util/HashMap;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/util/ArrayList;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v10, v11, v4}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 2236
    :cond_f
    invoke-direct/range {p0 .. p1}, Lcom/android/email/MessagingController;->checkITPolicy_AllowPOPIMAP(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 2237
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    .line 2238
    new-instance v3, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v4, 0x7

    invoke-direct {v3, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v3

    .line 2244
    :cond_10
    new-instance v4, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v4}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 2245
    sget-object v5, Lcom/android/emailcommon/mail/FetchProfile$Item;->FLAGS:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v4, v5}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 2246
    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13, v4, v5}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 2247
    const/4 v12, 0x0

    .line 2248
    const/4 v11, 0x0

    .line 2250
    const/4 v5, 0x0

    .line 2252
    invoke-virtual/range {v17 .. v17}, Lcom/android/emailcommon/mail/Folder;->getPermanentFlags()[Lcom/android/emailcommon/mail/Flag;

    move-result-object v10

    array-length v14, v10

    const/4 v4, 0x0

    move v8, v4

    :goto_8
    if-ge v8, v14, :cond_11

    aget-object v15, v10, v8

    .line 2253
    sget-object v4, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    if-ne v15, v4, :cond_2d

    .line 2254
    const/4 v4, 0x1

    move v7, v4

    .line 2256
    :goto_9
    sget-object v4, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    if-ne v15, v4, :cond_2c

    .line 2257
    const/4 v4, 0x1

    move v6, v4

    .line 2259
    :goto_a
    sget-object v4, Lcom/android/emailcommon/mail/Flag;->ANSWERED:Lcom/android/emailcommon/mail/Flag;

    if-ne v15, v4, :cond_2b

    .line 2260
    const/4 v4, 0x1

    .line 2252
    :goto_b
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    move v11, v6

    move v12, v7

    move v5, v4

    goto :goto_8

    .line 2266
    :cond_11
    if-nez v12, :cond_12

    if-nez v11, :cond_12

    if-eqz v5, :cond_19

    .line 2267
    :cond_12
    array-length v14, v13

    const/4 v4, 0x0

    move v10, v4

    :goto_c
    if-ge v10, v14, :cond_19

    aget-object v15, v13, v10

    .line 2268
    invoke-virtual {v15}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/MessagingController$LocalMessageInfo;

    .line 2269
    if-nez v4, :cond_14

    .line 2267
    :cond_13
    :goto_d
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    goto :goto_c

    .line 2272
    :cond_14
    iget-boolean v6, v4, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagRead:Z

    .line 2273
    sget-object v7, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    invoke-virtual {v15, v7}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v16

    .line 2274
    if-eqz v12, :cond_16

    move/from16 v0, v16

    if-eq v0, v6, :cond_16

    const/4 v6, 0x1

    move v8, v6

    .line 2275
    :goto_e
    iget-boolean v6, v4, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagFavorite:Z

    .line 2276
    sget-object v7, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    invoke-virtual {v15, v7}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v22

    .line 2277
    if-eqz v11, :cond_17

    move/from16 v0, v22

    if-eq v6, v0, :cond_17

    const/4 v6, 0x1

    move v7, v6

    .line 2279
    :goto_f
    iget-boolean v6, v4, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagReply:Z

    .line 2280
    sget-object v23, Lcom/android/emailcommon/mail/Flag;->ANSWERED:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v15

    .line 2281
    if-eqz v5, :cond_18

    if-eq v6, v15, :cond_18

    const/4 v6, 0x1

    .line 2283
    :goto_10
    if-nez v8, :cond_15

    if-nez v7, :cond_15

    if-eqz v6, :cond_13

    .line 2284
    :cond_15
    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v0, v4, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    invoke-static {v7, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 2286
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 2287
    const-string v8, "flagRead"

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v7, v8, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2288
    const-string v8, "flagFavorite"

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v7, v8, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2289
    const-string v8, "flagReply"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2290
    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v4, v7, v6, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_d

    .line 2274
    :cond_16
    const/4 v6, 0x0

    move v8, v6

    goto :goto_e

    .line 2277
    :cond_17
    const/4 v6, 0x0

    move v7, v6

    goto :goto_f

    .line 2281
    :cond_18
    const/4 v6, 0x0

    goto :goto_10

    .line 2339
    :cond_19
    new-instance v6, Ljava/util/HashSet;

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2340
    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 2342
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1a
    :goto_11
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2347
    if-eqz v4, :cond_1a

    const-string v7, "LocalAccountMoved-"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1a

    .line 2352
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/MessagingController$LocalMessageInfo;

    .line 2357
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v12, v4, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    invoke-static {v7, v10, v11, v12, v13}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    .line 2361
    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v10, v4, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    invoke-static {v7, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 2363
    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual {v3, v7, v8, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2366
    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    iget-wide v10, v4, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    invoke-static {v7, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 2368
    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual {v3, v7, v8, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2369
    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    iget-wide v10, v4, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    invoke-static {v7, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 2371
    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual {v3, v7, v8, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2375
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const-string v11, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v12, 0x190

    const/4 v7, 0x1

    new-array v13, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-wide v14, v4, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v13, v7

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v10 .. v16}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IIZ)V

    goto :goto_11

    .line 2398
    :cond_1b
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2399
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2400
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_12
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/emailcommon/mail/Message;

    .line 2401
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseRetrievesize()Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 2402
    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Message;->getSize()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/android/emailcommon/provider/EmailContent$Account;->getLargeMsgCriSize(Landroid/content/Context;)I

    move-result v10

    if-le v8, v10, :cond_1c

    .line 2403
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 2405
    :cond_1c
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 2408
    :cond_1d
    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Message;->getSize()I

    move-result v8

    const/16 v10, 0x6400

    if-le v8, v10, :cond_1e

    .line 2409
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 2411
    :cond_1e
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 2428
    :cond_1f
    new-instance v7, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v7}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 2429
    sget-object v3, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v7, v3}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 2430
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/emailcommon/mail/Message;

    new-instance v5, Lcom/android/email/MessagingController$11;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v5, v0, v1, v2}, Lcom/android/email/MessagingController$11;-><init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v7, v5}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 2449
    invoke-virtual {v7}, Lcom/android/emailcommon/mail/FetchProfile;->clear()V

    .line 2450
    sget-object v3, Lcom/android/emailcommon/mail/FetchProfile$Item;->STRUCTURE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v7, v3}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 2451
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/emailcommon/mail/Message;

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v7, v5}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 2452
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_13
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/emailcommon/mail/Message;

    .line 2453
    invoke-virtual {v3}, Lcom/android/emailcommon/mail/Message;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v4

    if-nez v4, :cond_21

    .line 2460
    invoke-virtual {v7}, Lcom/android/emailcommon/mail/FetchProfile;->clear()V

    .line 2461
    sget-object v4, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY_SANE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v7, v4}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 2470
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseRetrievesize()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 2471
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/android/emailcommon/mail/Message;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/android/emailcommon/provider/EmailContent$Account;->getLargeMsgCriSize(Landroid/content/Context;)I

    move-result v10

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v7, v5, v10}, Lcom/android/emailcommon/mail/Folder;->fetchWithRetrieveSize([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;I)V

    .line 2482
    :goto_14
    const/4 v4, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/email/MessagingController;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;I)V

    goto :goto_13

    .line 2475
    :cond_20
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/android/emailcommon/mail/Message;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v7, v5}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    goto :goto_14

    .line 2491
    :cond_21
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2492
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2493
    invoke-static {v3, v10, v4}, Lcom/android/emailcommon/internet/MimeUtility;->collectParts(Lcom/android/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2495
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseRetrievesize()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 2496
    const/4 v4, 0x0

    .line 2497
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v5, v4

    :goto_15
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/emailcommon/mail/Part;

    .line 2498
    invoke-interface {v4}, Lcom/android/emailcommon/mail/Part;->getSize()I

    move-result v4

    add-int/2addr v4, v5

    move v5, v4

    goto :goto_15

    .line 2500
    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getLargeMsgCriSize(Landroid/content/Context;)I

    move-result v4

    if-le v5, v4, :cond_23

    .line 2501
    invoke-virtual {v7}, Lcom/android/emailcommon/mail/FetchProfile;->clear()V

    .line 2502
    sget-object v4, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY_SANE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    invoke-virtual {v7, v4}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 2503
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/android/emailcommon/mail/Message;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/android/emailcommon/provider/EmailContent$Account;->getLargeMsgCriSize(Landroid/content/Context;)I

    move-result v10

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v7, v5, v10}, Lcom/android/emailcommon/mail/Folder;->fetchWithRetrieveSize([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;I)V

    .line 2506
    const/4 v4, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/email/MessagingController;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;I)V

    goto/16 :goto_13

    .line 2509
    :cond_23
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_16
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/emailcommon/mail/Part;

    .line 2510
    invoke-virtual {v7}, Lcom/android/emailcommon/mail/FetchProfile;->clear()V

    .line 2511
    invoke-virtual {v7, v4}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 2512
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/android/emailcommon/mail/Message;

    const/4 v10, 0x0

    aput-object v3, v4, v10

    const/4 v10, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v7, v10}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    goto :goto_16

    .line 2516
    :cond_24
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/email/MessagingController;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;I)V

    goto/16 :goto_13

    .line 2521
    :cond_25
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_17
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/emailcommon/mail/Part;

    .line 2522
    invoke-virtual {v7}, Lcom/android/emailcommon/mail/FetchProfile;->clear()V

    .line 2523
    invoke-virtual {v7, v4}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 2528
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/android/emailcommon/mail/Message;

    const/4 v10, 0x0

    aput-object v3, v4, v10

    const/4 v10, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v7, v10}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    goto :goto_17

    .line 2534
    :cond_26
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/email/MessagingController;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;I)V

    goto/16 :goto_13

    .line 2541
    :cond_27
    invoke-direct/range {p0 .. p1}, Lcom/android/email/MessagingController;->checkITPolicy_AllowPOPIMAP(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 2542
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    .line 2543
    new-instance v3, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v4, 0x7

    invoke-direct {v3, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v3

    .line 2551
    :cond_28
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->clear()V

    .line 2553
    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 2555
    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->clear()V

    .line 2670
    invoke-direct/range {p0 .. p1}, Lcom/android/email/MessagingController;->checkITPolicy_AllowPOPIMAP(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v3

    if-nez v3, :cond_29

    .line 2671
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    .line 2672
    new-instance v3, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v4, 0x7

    invoke-direct {v3, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2677
    :cond_29
    if-eqz v17, :cond_2a

    invoke-virtual/range {v17 .. v17}, Lcom/android/emailcommon/mail/Folder;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 2678
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/mail/Folder;->close(Z)V

    .line 2681
    :cond_2a
    new-instance v3, Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v19

    invoke-direct {v3, v0, v4}, Lcom/android/email/mail/StoreSynchronizer$SyncResults;-><init>(II)V

    goto/16 :goto_0

    .line 2056
    :catchall_3
    move-exception v3

    move-object v4, v10

    goto/16 :goto_2

    :cond_2b
    move v4, v5

    goto/16 :goto_b

    :cond_2c
    move v6, v11

    goto/16 :goto_a

    :cond_2d
    move v7, v12

    goto/16 :goto_9

    :cond_2e
    move-object v13, v4

    goto/16 :goto_7

    :cond_2f
    move v5, v4

    goto/16 :goto_4
.end method

.method private synchronizeMailboxSearchOnServer(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/lang/String;)V
    .locals 11
    .parameter "account"
    .parameter "folder"
    .parameter "searchText"

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxStarted(JJ)V

    .line 1262
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v8

    .line 1264
    .local v8, nc:Lcom/android/email/NotificationController;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/email/MessagingController;->processPendingActionsSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 1269
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v9

    .line 1270
    .local v9, remoteStore:Lcom/android/email/mail/Store;
    invoke-virtual {v9}, Lcom/android/email/mail/Store;->getMessageSynchronizer()Lcom/android/email/mail/StoreSynchronizer;

    move-result-object v7

    .line 1271
    .local v7, customSync:Lcom/android/email/mail/StoreSynchronizer;
    if-nez v7, :cond_0

    .line 1272
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/MessagingController;->syncSearchOnServer(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/lang/String;)Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    move-result-object v10

    .line 1277
    .local v10, results:Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    :goto_0
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget v5, v10, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mTotalMessages:I

    iget v6, v10, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mNewMessages:I

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxFinished(JJII)V

    .line 1280
    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v8, v0, v1}, Lcom/android/email/NotificationController;->cancelLoginFailedNotification(J)V

    .line 1291
    .end local v7           #customSync:Lcom/android/email/mail/StoreSynchronizer;
    .end local v9           #remoteStore:Lcom/android/email/mail/Store;
    .end local v10           #results:Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    :goto_1
    return-void

    .line 1274
    .restart local v7       #customSync:Lcom/android/email/mail/StoreSynchronizer;
    .restart local v9       #remoteStore:Lcom/android/email/mail/Store;
    :cond_0
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-interface {v7, p1, p2, v0, v1}, Lcom/android/email/mail/StoreSynchronizer;->SynchronizeMessagesSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/email/GroupMessagingListener;Landroid/content/Context;)Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .restart local v10       #results:Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    goto :goto_0

    .line 1281
    .end local v7           #customSync:Lcom/android/email/mail/StoreSynchronizer;
    .end local v9           #remoteStore:Lcom/android/email/mail/Store;
    .end local v10           #results:Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    :catch_0
    move-exception v5

    .line 1285
    .local v5, e:Lcom/android/emailcommon/mail/MessagingException;
    instance-of v0, v5, Lcom/android/emailcommon/mail/AuthenticationFailedException;

    if-eqz v0, :cond_1

    .line 1287
    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v8, v0, v1}, Lcom/android/email/NotificationController;->showLoginFailedNotification(J)V

    .line 1289
    :cond_1
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxFailed(JJLjava/lang/Exception;)V

    goto :goto_1
.end method

.method private synchronizeMailboxSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .locals 13
    .parameter "account"
    .parameter "folder"

    .prologue
    .line 1404
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/provider/EmailContent;->isSNCAccount(Landroid/content/Context;Ljava/lang/Long;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1405
    invoke-direct {p0, p1, p2}, Lcom/android/email/MessagingController;->synchronizeMailboxSynchronousForSnc(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    .line 1450
    :cond_0
    :goto_0
    return-void

    .line 1409
    :cond_1
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v8

    .line 1410
    .local v8, nc:Lcom/android/email/NotificationController;
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxStarted(JJ)V

    .line 1412
    :try_start_0
    const-string v0, "EMAIL_PERFORMANCE"

    const-string v1, "synchronizeMailboxGeneric() START"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    invoke-direct {p0, p1}, Lcom/android/email/MessagingController;->processPendingActionsSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 1418
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v9

    .line 1419
    .local v9, remoteStore:Lcom/android/email/mail/Store;
    invoke-virtual {v9}, Lcom/android/email/mail/Store;->getMessageSynchronizer()Lcom/android/email/mail/StoreSynchronizer;

    move-result-object v7

    .line 1420
    .local v7, customSync:Lcom/android/email/mail/StoreSynchronizer;
    if-nez v7, :cond_3

    .line 1421
    invoke-direct {p0, p1, p2}, Lcom/android/email/MessagingController;->synchronizeMailboxGeneric(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    move-result-object v10

    .line 1427
    .local v10, results:Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    :goto_1
    invoke-virtual {p0, p2}, Lcom/android/email/MessagingController;->updatesynctime(Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    .line 1428
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget v5, v10, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mTotalMessages:I

    iget v6, v10, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mNewMessages:I

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxFinished(JJII)V

    .line 1431
    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v8, v0, v1}, Lcom/android/email/NotificationController;->cancelLoginFailedNotification(J)V

    .line 1432
    const-string v0, "EMAIL_PERFORMANCE"

    const-string v1, "synchronizeMailboxGeneric() END_SUCCESS"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    iget v0, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-nez v0, :cond_0

    .line 1435
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v2, 0x190

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-wide v11, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x7

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IIZ)V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1439
    .end local v7           #customSync:Lcom/android/email/mail/StoreSynchronizer;
    .end local v9           #remoteStore:Lcom/android/email/mail/Store;
    .end local v10           #results:Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    :catch_0
    move-exception v5

    .line 1440
    .local v5, e:Lcom/android/emailcommon/mail/MessagingException;
    const-string v0, "EMAIL_PERFORMANCE"

    const-string v1, "synchronizeMailboxGeneric() END_FAIL"

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1444
    instance-of v0, v5, Lcom/android/emailcommon/mail/AuthenticationFailedException;

    if-eqz v0, :cond_2

    .line 1446
    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v8, v0, v1}, Lcom/android/email/NotificationController;->showLoginFailedNotification(J)V

    .line 1448
    :cond_2
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxFailed(JJLjava/lang/Exception;)V

    goto/16 :goto_0

    .line 1423
    .end local v5           #e:Lcom/android/emailcommon/mail/MessagingException;
    .restart local v7       #customSync:Lcom/android/email/mail/StoreSynchronizer;
    .restart local v9       #remoteStore:Lcom/android/email/mail/Store;
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-interface {v7, p1, p2, v0, v1}, Lcom/android/email/mail/StoreSynchronizer;->SynchronizeMessagesSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/email/GroupMessagingListener;Landroid/content/Context;)Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    :try_end_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    .restart local v10       #results:Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    goto :goto_1
.end method

.method private synchronizeMailboxSynchronousForSnc(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .locals 20
    .parameter "account"
    .parameter "folder"

    .prologue
    .line 1463
    const-string v3, "MsgControl >>>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "synchronizeMailboxSynchronous Starts for account "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Folder: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v15

    .line 1469
    .local v15, mbx:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    const/4 v4, 0x0

    iget-wide v5, v15, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    move-object/from16 v0, p2

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-virtual/range {v3 .. v10}, Lcom/android/email/GroupMessagingListener;->updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V

    .line 1471
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/email/MessagingController;->processPendingActionsSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 1472
    const/4 v11, 0x0

    .line 1474
    .local v11, customSync:Lcom/android/email/mail/StoreSynchronizer;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v17

    .line 1475
    .local v17, remoteStore:Lcom/android/email/mail/Store;
    const/16 v16, 0x0

    .line 1477
    .local v16, remoteFolder:Lcom/android/emailcommon/mail/Folder;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/emailcommon/provider/EmailContent;->isSNCAccount(Landroid/content/Context;Ljava/lang/Long;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1478
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-static {v3, v0}, Lcom/android/email/provider/EmailProvider;->getRemoteFolder(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v16

    .line 1484
    :goto_0
    if-eqz v16, :cond_0

    .line 1485
    invoke-virtual/range {v16 .. v16}, Lcom/android/emailcommon/mail/Folder;->getMailBoxSynchronizer()Ljava/lang/Object;

    move-result-object v11

    .end local v11           #customSync:Lcom/android/email/mail/StoreSynchronizer;
    check-cast v11, Lcom/android/email/mail/StoreSynchronizer;

    .line 1492
    .restart local v11       #customSync:Lcom/android/email/mail/StoreSynchronizer;
    :cond_0
    if-nez v11, :cond_5

    .line 1493
    invoke-direct/range {p0 .. p2}, Lcom/android/email/MessagingController;->synchronizeMailboxGeneric(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    move-result-object v18

    .line 1496
    .local v18, results:Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    if-eqz v18, :cond_1

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mNewMessages:I

    if-lez v3, :cond_1

    .line 1497
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 1498
    .local v12, cv:Landroid/content/ContentValues;
    const-string v3, "newMessageCount"

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mNewMessages:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v12, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1499
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    .line 1501
    .local v19, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v12, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1509
    .end local v12           #cv:Landroid/content/ContentValues;
    .end local v19           #uri:Landroid/net/Uri;
    :cond_1
    :goto_1
    if-eqz v18, :cond_c

    .line 1511
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncStatus:Ljava/lang/String;

    if-eqz v3, :cond_6

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncStatus:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 1514
    .local v13, folderSyncStatus:I
    :goto_2
    const-string v3, "MsgControl >>>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "synchronizeMailboxSynchronous | ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " results Total/New/Fetched - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mTotalMessages:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mNewMessages:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mMessageFetched:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1521
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    const/4 v4, 0x0

    iget-wide v5, v15, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    move-object/from16 v0, p2

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/16 v9, 0x64

    const/4 v10, -0x1

    invoke-virtual/range {v3 .. v10}, Lcom/android/email/GroupMessagingListener;->updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V

    .line 1523
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mMessageFetched:I

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mTotalMessages:I

    if-ge v3, v5, :cond_2

    const/4 v3, 0x2

    if-ne v13, v3, :cond_8

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mMessageFetched:I

    const/16 v5, 0x64

    if-lt v3, v5, :cond_8

    .line 1525
    :cond_2
    const/4 v3, 0x2

    if-ne v13, v3, :cond_7

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mMessageFetched:I

    const/16 v5, 0x64

    if-ge v3, v5, :cond_7

    .line 1527
    const-string v3, "MsgControl >>>"

    const-string v5, "Sync results ignored. Waiting for SMS from Gateway"

    invoke-static {v3, v5}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1607
    .end local v11           #customSync:Lcom/android/email/mail/StoreSynchronizer;
    .end local v13           #folderSyncStatus:I
    .end local v16           #remoteFolder:Lcom/android/emailcommon/mail/Folder;
    .end local v17           #remoteStore:Lcom/android/email/mail/Store;
    .end local v18           #results:Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    :cond_3
    :goto_3
    return-void

    .line 1481
    .restart local v11       #customSync:Lcom/android/email/mail/StoreSynchronizer;
    .restart local v16       #remoteFolder:Lcom/android/emailcommon/mail/Folder;
    .restart local v17       #remoteStore:Lcom/android/email/mail/Store;
    :cond_4
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v16

    goto/16 :goto_0

    .line 1506
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/email/MessagingController;->mRemoteSync:Z

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v11, v0, v1, v3}, Lcom/android/email/mail/StoreSynchronizer;->SynchronizeMailBox(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Z)Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    move-result-object v18

    .restart local v18       #results:Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    goto/16 :goto_1

    .line 1511
    :cond_6
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 1535
    .restart local v13       #folderSyncStatus:I
    :cond_7
    const-string v3, "MsgControl >>>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Setting initial_sync success since all r fetched"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1537
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v7, 0x1

    invoke-static {v3, v5, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->setSyncStatus(Landroid/content/Context;JI)V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1600
    .end local v11           #customSync:Lcom/android/email/mail/StoreSynchronizer;
    .end local v13           #folderSyncStatus:I
    .end local v16           #remoteFolder:Lcom/android/emailcommon/mail/Folder;
    .end local v17           #remoteStore:Lcom/android/email/mail/Store;
    .end local v18           #results:Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    :catch_0
    move-exception v4

    .line 1601
    .local v4, e:Lcom/android/emailcommon/mail/MessagingException;
    const-string v3, "MsgControl >>>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "synchronizeMailboxSynchronous [accId - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "][mbId - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] Got exception - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1605
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v5, v15, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    move-object/from16 v0, p2

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-virtual/range {v3 .. v10}, Lcom/android/email/GroupMessagingListener;->updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V

    goto/16 :goto_3

    .line 1549
    .end local v4           #e:Lcom/android/emailcommon/mail/MessagingException;
    .restart local v11       #customSync:Lcom/android/email/mail/StoreSynchronizer;
    .restart local v13       #folderSyncStatus:I
    .restart local v16       #remoteFolder:Lcom/android/emailcommon/mail/Folder;
    .restart local v17       #remoteStore:Lcom/android/email/mail/Store;
    .restart local v18       #results:Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    :cond_8
    move-object/from16 v14, p2

    .line 1554
    .local v14, mbInbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-eqz p2, :cond_3

    :try_start_1
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncStatus:Ljava/lang/String;

    if-eqz v3, :cond_9

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncStatus:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncStatus:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1560
    :cond_9
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mMessageFetched:I

    const/16 v5, 0x64

    if-ge v3, v5, :cond_a

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mTotalMessages:I

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mMessageFetched:I

    sub-int/2addr v3, v5

    if-lez v3, :cond_a

    .line 1562
    const-string v3, "MsgControl >>>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "## Run the synchronizeMailbox for acct "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " folder "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Messages Fetched "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mMessageFetched:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " TotalMessage "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/email/mail/StoreSynchronizer$SyncResults;->mTotalMessages:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 1568
    .restart local v12       #cv:Landroid/content/ContentValues;
    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mVisibleLimit:I

    add-int/lit8 v3, v3, 0x64

    move-object/from16 v0, p2

    iput v3, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mVisibleLimit:I

    .line 1569
    const-string v3, "visibleLimit"

    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mVisibleLimit:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v12, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1570
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p2

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    .line 1572
    .restart local v19       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v12, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1574
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/MessagingController;->synchronizeMailbox(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/email/MessagingListener;)V

    goto/16 :goto_3

    .line 1581
    .end local v12           #cv:Landroid/content/ContentValues;
    .end local v19           #uri:Landroid/net/Uri;
    :cond_a
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncStatus:Ljava/lang/String;

    if-eqz v3, :cond_b

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncStatus:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1584
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v7, 0x1

    invoke-static {v3, v5, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->setSyncStatus(Landroid/content/Context;JI)V

    goto/16 :goto_3

    .line 1593
    .end local v13           #folderSyncStatus:I
    .end local v14           #mbInbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    new-instance v4, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v5, 0x2c

    invoke-direct {v4, v5}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    iget-wide v5, v15, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    move-object/from16 v0, p2

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-virtual/range {v3 .. v10}, Lcom/android/email/GroupMessagingListener;->updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V

    .line 1595
    if-eqz v11, :cond_3

    .line 1596
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncStatus(Landroid/content/Context;Ljava/lang/Long;I)V
    :try_end_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method private updateHistoryForEmailSend(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Body;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2789
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2793
    :try_start_0
    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->toFriendlyUseInBubbleButton([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v1

    .line 2800
    const-string v2, "MsgControl >>>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateHistoryForEmailSend "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 2802
    const-string v2, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2803
    const-string v2, "type"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2804
    const-string v2, "account_name"

    invoke-virtual {v3, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2805
    const-string v2, "contactid"

    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2806
    const-string v2, "account_id"

    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2807
    const-string v2, "name"

    invoke-virtual {v3, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2808
    const-string v1, "messageid"

    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2809
    const-string v1, "m_subject"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2816
    iget-object v1, p2, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    .line 2817
    iget-object v4, p2, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    .line 2818
    const-string v2, ""

    .line 2820
    if-eqz v1, :cond_1

    .line 2830
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x32

    if-le v2, v4, :cond_2

    .line 2831
    const-string v2, "m_content"

    const/4 v4, 0x0

    const/16 v5, 0x31

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2834
    :goto_1
    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 2835
    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2836
    array-length v2, v1

    :goto_2
    if-ge v0, v2, :cond_3

    aget-object v4, v1, v0

    .line 2837
    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2839
    array-length v5, v4

    if-lez v5, :cond_0

    .line 2840
    const/4 v5, 0x0

    aget-object v5, v4, v5

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2841
    const-string v5, "number"

    const/4 v6, 0x0

    aget-object v4, v4, v6

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2842
    iget-object v4, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://logs/email"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2836
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2822
    :cond_1
    if-eqz v4, :cond_4

    .line 2823
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<body>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2824
    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "</body>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2825
    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2833
    :cond_2
    const-string v2, "m_content"

    invoke-virtual {v3, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2848
    :catch_0
    move-exception v0

    .line 2851
    :cond_3
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 2852
    return-void

    :cond_4
    move-object v1, v2

    goto/16 :goto_0
.end method


# virtual methods
.method public addListener(Lcom/android/email/MessagingListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    invoke-virtual {v0, p1}, Lcom/android/email/GroupMessagingListener;->addListener(Lcom/android/email/MessagingListener;)V

    .line 319
    return-void
.end method

.method public checkMail(JJLcom/android/email/MessagingListener;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5279
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/GroupMessagingListener;->checkMailStarted(Landroid/content/Context;JJ)V

    .line 5282
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/email/MessagingController;->listFolders(JLcom/android/email/MessagingListener;)V

    .line 5285
    const-string v6, "checkMail"

    new-instance v0, Lcom/android/email/MessagingController$21;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/email/MessagingController$21;-><init>(Lcom/android/email/MessagingController;JJ)V

    invoke-direct {p0, v6, p5, v0}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    .line 5317
    return-void
.end method

.method public copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;I)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 2869
    if-nez p1, :cond_1

    .line 2899
    :cond_0
    :goto_0
    return-void

    .line 2875
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "accountKey=? AND mailboxKey=? AND syncServerId=?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v7, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    iget-wide v7, p3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x2

    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 2885
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2886
    const-class v0, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-static {v7, v0}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 2887
    iget-wide v0, p3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 2888
    iget-wide v0, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 2889
    iget-object v5, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/MessagingController;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Mailbox;ILandroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2895
    :cond_2
    if-eqz v7, :cond_0

    .line 2896
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2892
    :catch_0
    move-exception v0

    move-object v1, v6

    .line 2893
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2895
    if-eqz v1, :cond_0

    .line 2896
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2895
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v6, :cond_3

    .line 2896
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 2895
    :catchall_1
    move-exception v0

    move-object v6, v7

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v6, v1

    goto :goto_2

    .line 2892
    :catch_1
    move-exception v0

    move-object v1, v7

    goto :goto_1
.end method

.method public copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Mailbox;ILandroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2916
    :try_start_0
    iget-wide v0, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p5, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyWithMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Body;

    move-result-object v0

    .line 2918
    if-nez v0, :cond_3

    .line 2919
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Body;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Body;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v8, v0

    .line 2923
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    iget-wide v5, p2, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    iget v7, p3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    move-object v1, p2

    move-object v2, p1

    invoke-static/range {v0 .. v7}, Lcom/android/email/LegacyConversions;->updateMessageFields(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/mail/Message;JJI)Z

    .line 2927
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2928
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2929
    invoke-static {p1, v0, v6}, Lcom/android/emailcommon/internet/MimeUtility;->collectParts(Lcom/android/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2931
    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const v2, 0x7f080086

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8, p2, v0}, Lcom/android/emailcommon/utility/ConversionUtilities;->updateBodyFields(Ljava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Body;Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/util/ArrayList;)Z
    :try_end_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2934
    :try_start_2
    iget-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2935
    iget-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/emailcommon/mail/Snippet;->fromHtmlText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2941
    :cond_0
    :goto_1
    :try_start_3
    const-string v0, "MsgControl >>>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/emailcommon/provider/EmailContent$Message;->isSaved()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " b : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/android/emailcommon/provider/EmailContent$Body;->isSaved()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " f : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 2943
    if-eqz p6, :cond_1

    invoke-virtual {v8}, Lcom/android/emailcommon/provider/EmailContent$Body;->isSaved()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2944
    iget-object v5, p6, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move-object v3, p2

    move-object v4, v8

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/MessagingController;->updateHistoryForEmail(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Body;Ljava/lang/String;)Z

    .line 2950
    :cond_1
    invoke-direct {p0, p2, p5}, Lcom/android/email/MessagingController;->saveOrUpdate(Lcom/android/emailcommon/provider/EmailContent;Landroid/content/Context;)V

    .line 2951
    invoke-direct {p0, v8, p5}, Lcom/android/email/MessagingController;->saveOrUpdate(Lcom/android/emailcommon/provider/EmailContent;Landroid/content/Context;)V

    .line 2954
    invoke-static {p5, p2, v6, p6}, Lcom/android/email/LegacyConversions;->updateAttachments(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/util/ArrayList;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 2957
    iput p4, p2, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    .line 2959
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2960
    const-string v1, "flagAttachment"

    iget-boolean v2, p2, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2961
    const-string v1, "flagLoaded"

    iget v2, p2, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2962
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 2964
    invoke-virtual {p5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2967
    iget-boolean v0, p2, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    if-eqz v0, :cond_2

    .line 2969
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v2, 0x190

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-wide v5, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xc

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IIZ)V
    :try_end_3
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 2983
    :cond_2
    :goto_2
    return-void

    .line 2974
    :catch_0
    move-exception v0

    .line 2975
    :try_start_4
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while copying downloaded message."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 2978
    :catch_1
    move-exception v0

    .line 2979
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while storing downloaded message."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2980
    :catch_2
    move-exception v0

    .line 2981
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while storing attachment."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2937
    :catch_3
    move-exception v0

    goto/16 :goto_1

    :cond_3
    move-object v8, v0

    goto/16 :goto_0
.end method

.method public createFolder(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/lang/String;JLcom/android/email/MessagingListener;)V
    .locals 8
    .parameter "mailbox"
    .parameter "mailboxName"
    .parameter "accountKey"
    .parameter "listener"

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0, p3, p4}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v6

    .line 563
    .local v6, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v6, :cond_0

    .line 793
    :goto_0
    return-void

    .line 569
    :cond_0
    const-string v7, "createFolder"

    new-instance v0, Lcom/android/email/MessagingController$2;

    move-object v1, p0

    move-wide v2, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/email/MessagingController$2;-><init>(Lcom/android/email/MessagingController;JLcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    invoke-direct {p0, v7, p5, v0}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public deleteFolder(JLjava/util/ArrayList;Lcom/android/email/MessagingListener;)V
    .locals 7
    .parameter "accountKey"
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/email/MessagingListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1034
    .local p3, mailboxIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v5

    .line 1036
    .local v5, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v5, :cond_0

    .line 1243
    :goto_0
    return-void

    .line 1041
    :cond_0
    const-string v6, "deleteFolder"

    new-instance v0, Lcom/android/email/MessagingController$4;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/email/MessagingController$4;-><init>(Lcom/android/email/MessagingController;JLjava/util/ArrayList;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    invoke-direct {p0, v6, p4, v0}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public deleteUserAccount(J)V
    .locals 8
    .parameter

    .prologue
    .line 5534
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 5536
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 5537
    :try_start_0
    const-string v0, "MsgControl >>>"

    const-string v1, "Invalid Account Id"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5609
    :goto_0
    return-void

    .line 5541
    :cond_0
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 5543
    if-nez v0, :cond_1

    .line 5544
    const-string v0, "MsgControl >>>"

    const-string v1, "Account is Empty: Null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5545
    const-string v0, "validate_result_code"

    const/16 v1, 0x5b

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5547
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    invoke-virtual {v0, v7, p1, p2}, Lcom/android/email/GroupMessagingListener;->deleteUserAccountStatus(Landroid/os/Bundle;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5603
    :catch_0
    move-exception v0

    .line 5604
    const-string v1, "MsgControl >>>"

    const-string v2, "Exception while deleting account"

    invoke-static {v1, v2, v0}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5606
    :goto_1
    const-string v0, "validate_result_code"

    const/16 v1, 0x1a

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5607
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    invoke-virtual {v0, v7, p1, p2}, Lcom/android/email/GroupMessagingListener;->deleteUserAccountStatus(Landroid/os/Bundle;J)V

    goto :goto_0

    .line 5551
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 5555
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5556
    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/mail/Store;->delete()V

    .line 5558
    invoke-static {v1}, Lcom/android/email/mail/Store;->removeInstance(Ljava/lang/String;)V

    .line 5562
    :cond_2
    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSenderUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 5565
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 5566
    invoke-static {v1}, Lcom/android/email/mail/Sender;->removeInstance(Ljava/lang/String;)V

    .line 5569
    :cond_3
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 5570
    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 5574
    :try_start_2
    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://logs/email"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "account_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5581
    if-eqz v0, :cond_4

    .line 5582
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    .line 5586
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v2, 0x190

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IIZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 5597
    :cond_4
    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/AccountBackupRestore;->backupAccounts(Landroid/content/Context;)V

    .line 5600
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/SecurityPolicy;->reducePolicies()V

    .line 5602
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/Email;->setServicesEnabled(Landroid/content/Context;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 5591
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public dumpConnectionStatus()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 6395
    const-string v0, "MsgControl >>>"

    const-string v1, " ***** LEGACY CONNECTION STATISTICS START ***** "

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6396
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccounts(Landroid/content/Context;Ljava/lang/String;)[Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    .line 6397
    if-nez v2, :cond_0

    .line 6398
    const-string v0, "MsgControl >>>"

    const-string v1, " ***** LEGACY CONNECTION STATISTICS END *** "

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6414
    :goto_0
    return-void

    .line 6401
    :cond_0
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v0, v2, v1

    .line 6402
    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v5}, Lcom/android/email/Controller;->isLegacy(J)Z

    move-result v4

    if-nez v4, :cond_1

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v5}, Lcom/android/email/Controller;->isSnc(J)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6405
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6401
    :cond_2
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 6407
    :catch_0
    move-exception v0

    .line 6409
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/MessagingException;->printStackTrace()V

    goto :goto_2

    .line 6413
    :cond_3
    const-string v0, "MsgControl >>>"

    const-string v1, " ***** LEGACY CONNECTION STATISTICS END ***** \n"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dumpIdleStatus()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 6363
    const-string v1, "MsgControl >>>"

    const-string v2, " ***** IDLE STATISTICS START  *****"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6364
    const-string v1, "MsgControl >>>"

    const-string v2, "IDLE ResetTimer - 600000 RestartTimer - 1800000 DelayedFetchTimer - 10000 DelayedQresyncTimer - 30000"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6367
    const-string v1, "MsgControl >>>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IDLE Is Reset Timer Running? ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/MessagingController;->mResetTimerCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/MessagingController;->mResetTimerStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-ne v0, v3, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6369
    iget-object v0, p0, Lcom/android/email/MessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 6370
    iget-object v2, p0, Lcom/android/email/MessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingController$ImapIdleFolder;

    .line 6371
    if-eqz v0, :cond_0

    .line 6372
    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/android/email/MessagingController$ImapIdleFolder;->dumpStatus(Ljava/lang/String;)V

    goto :goto_1

    .line 6367
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 6374
    :cond_2
    const-string v0, "MsgControl >>>"

    const-string v1, " ***** IDLE STATISTICS  END   *****\n"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6375
    const-string v0, "MsgControl >>>"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6376
    return-void
.end method

.method public dumpStatus()V
    .locals 5

    .prologue
    .line 6379
    const-string v0, "MsgControl >>>"

    const-string v1, " ***** LEGACY COMMAND STATISTICS START ***** "

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6380
    iget-object v0, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    .line 6381
    const-string v1, "MsgControl >>>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No. of pending commands: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6382
    if-lez v0, :cond_0

    .line 6383
    iget-object v1, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    new-array v0, v0, [Lcom/android/email/MessagingController$Command;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/email/MessagingController$Command;

    check-cast v0, [Lcom/android/email/MessagingController$Command;

    .line 6384
    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 6385
    const-string v4, "MsgControl >>>"

    invoke-virtual {v3}, Lcom/android/email/MessagingController$Command;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6384
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6388
    :cond_0
    const-string v0, "MsgControl >>>"

    const-string v1, " ***** LEGACY COMMAND STATISTICS END ***** \n"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6389
    const-string v0, "MsgControl >>>"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6390
    invoke-virtual {p0}, Lcom/android/email/MessagingController;->dumpIdleStatus()V

    .line 6391
    invoke-virtual {p0}, Lcom/android/email/MessagingController;->dumpConnectionStatus()V

    .line 6392
    return-void
.end method

.method public getMailboxSyncState(J)I
    .locals 1
    .parameter "mailboxId"

    .prologue
    .line 6292
    const/4 v0, -0x1

    return v0
.end method

.method public listFolders(JLcom/android/email/MessagingListener;)V
    .locals 3
    .parameter "accountId"
    .parameter "listener"

    .prologue
    .line 389
    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 391
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v0, :cond_0

    .line 557
    :goto_0
    return-void

    .line 394
    :cond_0
    iget-object v1, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    invoke-virtual {v1, p1, p2}, Lcom/android/email/GroupMessagingListener;->listFoldersStarted(J)V

    .line 395
    const-string v1, "listFolders"

    new-instance v2, Lcom/android/email/MessagingController$1;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/email/MessagingController$1;-><init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;J)V

    invoke-direct {p0, v1, p3, v2}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public loadAttachment(JJJJLcom/android/email/MessagingListener;Z)V
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4712
    iget-object v2, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-object v3, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p7

    invoke-static {v3, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v3

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v3, :cond_0

    const/4 v9, 0x1

    :goto_0
    move-wide v3, p1

    move-wide/from16 v5, p3

    move-wide/from16 v7, p7

    invoke-virtual/range {v2 .. v9}, Lcom/android/email/GroupMessagingListener;->loadAttachmentStarted(JJJZ)V

    .line 4715
    const-string v13, "loadAttachment"

    new-instance v2, Lcom/android/email/MessagingController$18;

    move-object v3, p0

    move-wide/from16 v4, p7

    move-wide v6, p1

    move-wide/from16 v8, p3

    move/from16 v10, p10

    move-wide/from16 v11, p5

    invoke-direct/range {v2 .. v12}, Lcom/android/email/MessagingController$18;-><init>(Lcom/android/email/MessagingController;JJJZJ)V

    move-object/from16 v0, p9

    invoke-direct {p0, v13, v0, v2}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    .line 4848
    return-void

    .line 4712
    :cond_0
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public loadAttachment(JJJJLcom/android/email/MessagingListener;ZZZ)V
    .locals 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4864
    :try_start_0
    iget-object v2, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-object v3, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p7

    invoke-static {v3, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v3

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v3, :cond_0

    const/4 v9, 0x1

    :goto_0
    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move-wide/from16 v7, p7

    invoke-virtual/range {v2 .. v9}, Lcom/android/email/GroupMessagingListener;->loadAttachmentStarted(JJJZ)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4874
    :goto_1
    const-string v14, "loadAttachment"

    new-instance v2, Lcom/android/email/MessagingController$19;

    move-object v3, p0

    move/from16 v4, p10

    move-wide/from16 v5, p1

    move-wide/from16 v7, p5

    move-wide/from16 v9, p3

    move-wide/from16 v11, p7

    move/from16 v13, p12

    invoke-direct/range {v2 .. v13}, Lcom/android/email/MessagingController$19;-><init>(Lcom/android/email/MessagingController;ZJJJJZ)V

    move-object/from16 v0, p9

    invoke-direct {p0, v14, v0, v2}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    .line 5025
    return-void

    .line 4864
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 4870
    :catch_0
    move-exception v2

    .line 4871
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Nullpointer Exception!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public loadAttachmentSyncronous(JJJJ)Z
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3585
    :try_start_0
    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    .line 3587
    iget-object v3, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p5

    invoke-static {v3, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v3

    .line 3589
    iget-object v4, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v4, p3, p4}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v4

    .line 3592
    iget-object v5, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p7

    invoke-static {v5, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v5

    .line 3594
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    if-nez v5, :cond_1

    .line 3595
    :cond_0
    iget-object v2, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    new-instance v9, Lcom/android/emailcommon/mail/MessagingException;

    const-string v3, "Account, mailbox, message or attachment are null"

    invoke-direct {v9, v3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    move-wide v3, p1

    move-wide v5, p3

    move-wide/from16 v7, p7

    invoke-virtual/range {v2 .. v10}, Lcom/android/email/GroupMessagingListener;->loadAttachmentFailed(JJJLcom/android/emailcommon/mail/MessagingException;Z)V

    .line 3598
    const/4 v2, 0x0

    .line 3659
    :goto_0
    return v2

    .line 3601
    :cond_1
    iget-object v6, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-static {v2, v6, v7}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v2

    .line 3602
    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v3

    .line 3603
    if-nez v3, :cond_2

    .line 3604
    iget-object v2, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    new-instance v9, Lcom/android/emailcommon/mail/MessagingException;

    const-string v3, "Error while getting remoteFolder."

    invoke-direct {v9, v3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    move-wide v3, p1

    move-wide v5, p3

    move-wide/from16 v7, p7

    invoke-virtual/range {v2 .. v10}, Lcom/android/email/GroupMessagingListener;->loadAttachmentFailed(JJJLcom/android/emailcommon/mail/MessagingException;Z)V

    .line 3606
    const/4 v2, 0x0

    goto :goto_0

    .line 3608
    :cond_2
    sget-object v2, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    const/4 v6, 0x0

    invoke-virtual {v3, v2, v6}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V

    .line 3613
    iget-object v2, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/android/emailcommon/mail/Folder;->createMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v4

    .line 3614
    new-instance v6, Lcom/android/emailcommon/internet/MimeBodyPart;

    invoke-direct {v6}, Lcom/android/emailcommon/internet/MimeBodyPart;-><init>()V

    .line 3615
    iget-wide v7, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    long-to-int v2, v7

    invoke-virtual {v6, v2}, Lcom/android/emailcommon/internet/MimeBodyPart;->setSize(I)V

    .line 3616
    const-string v2, "X-Android-Attachment-StoreData"

    iget-object v7, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    invoke-virtual {v6, v2, v7}, Lcom/android/emailcommon/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3618
    const-string v2, "Content-Type"

    const-string v7, "%s;\n name=\"%s\""

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Lcom/android/emailcommon/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3625
    const-string v2, "base64"

    .line 3626
    iget-object v7, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mEncoding:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mEncoding:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 3627
    iget-object v2, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mEncoding:Ljava/lang/String;

    .line 3629
    :cond_3
    const-string v7, "Content-Transfer-Encoding"

    invoke-virtual {v6, v7, v2}, Lcom/android/emailcommon/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3633
    new-instance v2, Lcom/android/emailcommon/internet/MimeMultipart;

    invoke-direct {v2}, Lcom/android/emailcommon/internet/MimeMultipart;-><init>()V

    .line 3634
    const-string v7, "mixed"

    invoke-virtual {v2, v7}, Lcom/android/emailcommon/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    .line 3635
    invoke-virtual {v2, v6}, Lcom/android/emailcommon/internet/MimeMultipart;->addBodyPart(Lcom/android/emailcommon/mail/BodyPart;)V

    .line 3637
    const-string v7, "Content-Type"

    const-string v8, "multipart/mixed"

    invoke-virtual {v4, v7, v8}, Lcom/android/emailcommon/mail/Message;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3638
    invoke-virtual {v4, v2}, Lcom/android/emailcommon/mail/Message;->setBody(Lcom/android/emailcommon/mail/Body;)V

    .line 3642
    new-instance v2, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v2}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 3643
    invoke-virtual {v2, v6}, Lcom/android/emailcommon/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 3644
    const/4 v7, 0x1

    new-array v7, v7, [Lcom/android/emailcommon/mail/Message;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v4, 0x0

    invoke-virtual {v3, v7, v2, v4}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 3650
    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v2, v6, v5, p1, p2}, Lcom/android/email/LegacyConversions;->saveAttachmentBody(Landroid/content/Context;Lcom/android/emailcommon/mail/Part;Lcom/android/emailcommon/provider/EmailContent$Attachment;J)V

    .line 3652
    iget-object v2, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 3653
    :catch_0
    move-exception v2

    .line 3656
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 3657
    :catch_1
    move-exception v2

    .line 3658
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while storing attachment."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3659
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public loadMessageForView(JLcom/android/email/MessagingListener;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 4583
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/GroupMessagingListener;->loadMessageForViewStarted(J)V

    .line 4584
    const-string v0, "loadMessageForViewRemote"

    new-instance v1, Lcom/android/email/MessagingController$17;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/email/MessagingController$17;-><init>(Lcom/android/email/MessagingController;J)V

    invoke-direct {p0, v0, p3, v1}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    .line 4699
    return-void
.end method

.method public loadMore(J)V
    .locals 2
    .parameter

    .prologue
    .line 5352
    const-string v0, "MsgControl >>>"

    const-string v1, "load More"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5406
    return-void
.end method

.method public onIdleExists(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 6303
    const-string v0, "MsgControl >>>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IDLE onIdleExists [Delayed by 30000 ]| accId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mbId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6305
    iget-object v0, p0, Lcom/android/email/MessagingController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/email/MessagingController$23;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/email/MessagingController$23;-><init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6315
    return-void
.end method

.method public processPendingAccountMoveActions(Ljava/util/ArrayList;JJJJJII)V
    .locals 20
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;JJJJJII)V"
        }
    .end annotation

    .prologue
    .line 3174
    const-string v18, "processPendingAccountMoveActions"

    const/16 v19, 0x0

    new-instance v3, Lcom/android/email/MessagingController$15;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    move-wide/from16 v14, p10

    move/from16 v16, p12

    move/from16 v17, p13

    invoke-direct/range {v3 .. v17}, Lcom/android/email/MessagingController$15;-><init>(Lcom/android/email/MessagingController;Ljava/util/ArrayList;JJJJJII)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    .line 3252
    return-void
.end method

.method public processPendingActions(J)V
    .locals 3
    .parameter

    .prologue
    .line 2986
    const-string v0, "processPendingActions"

    const/4 v1, 0x0

    new-instance v2, Lcom/android/email/MessagingController$12;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/email/MessagingController$12;-><init>(Lcom/android/email/MessagingController;J)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    .line 3006
    return-void
.end method

.method public processPendingDeletesForeverSynchronous(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;JLandroid/content/ContentResolver;JIIJJ)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3498
    const-wide/16 v3, -0x1

    .line 3501
    const/4 v2, 0x0

    .line 3503
    const/4 v5, 0x0

    .line 3505
    :try_start_0
    move-wide/from16 v0, p6

    invoke-static {p1, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v6

    .line 3508
    if-eqz v6, :cond_5

    .line 3509
    iget-wide v3, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 3510
    if-eqz v5, :cond_0

    throw v5

    throw v6

    cmp-long v7, v7, v9

    if-eqz v7, :cond_5

    .line 3511
    :cond_0
    iget-wide v7, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {p1, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    move-wide v9, v3

    move-object v3, v5

    .line 3516
    :goto_0
    if-nez v2, :cond_1

    .line 3517
    :try_start_1
    invoke-virtual {p2, p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, p1, v4}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v2

    .line 3520
    :cond_1
    if-eqz v3, :cond_2

    .line 3521
    invoke-direct {p0, v2, p2, v3, v6}, Lcom/android/email/MessagingController;->processPendingDeleteForeverFromAnyfolder(Lcom/android/email/mail/Store;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    .line 3526
    :cond_2
    const/4 v2, 0x3

    move/from16 v0, p8

    if-ne v0, v2, :cond_3

    .line 3530
    move-wide/from16 v0, p6

    invoke-static {p1, p3, p4, v0, v1}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    .line 3532
    const-string v2, "processPendingDeletesForeverSynchronous"

    const-string v3, "target_server_type is IMAP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3533
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p6

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 3534
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3578
    :goto_1
    return-void

    .line 3537
    :cond_3
    const-string v2, "processPendingDeletesForeverSynchronous"

    const-string v3, "target_server_type is POP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3551
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3554
    move-wide/from16 v0, p6

    invoke-static {p1, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    .line 3556
    if-eqz v3, :cond_4

    .line 3557
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LocalAccountMoved-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3559
    const-string v4, "accountKey"

    invoke-static/range {p10 .. p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3560
    const-string v4, "mailboxKey"

    invoke-static/range {p12 .. p13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3561
    const-string v4, "syncServerId"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3564
    :cond_4
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p6

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 3566
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3569
    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-wide v3, p3

    move-wide/from16 v5, p6

    move-wide/from16 v7, p10

    invoke-static/range {v2 .. v8}, Lcom/android/email/provider/AttachmentProvider;->moveAllAttachmentToOtherAccount(Landroid/content/Context;JJJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 3573
    :catch_0
    move-exception v2

    move-wide v3, v9

    .line 3574
    :goto_2
    :try_start_2
    const-string v5, "processPendingDeletesForeverSynchronous"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to process pending delete for id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 3576
    :catchall_0
    move-exception v2

    throw v2

    .line 3573
    :catch_1
    move-exception v2

    goto :goto_2

    :cond_5
    move-wide v9, v3

    move-object v3, v5

    goto/16 :goto_0
.end method

.method public processPendingMoveActions(Ljava/util/HashMap;JJJ)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;JJJ)V"
        }
    .end annotation

    .prologue
    .line 3011
    const-string v9, "processPendingMoveActions"

    const/4 v10, 0x0

    new-instance v0, Lcom/android/email/MessagingController$13;

    move-object v1, p0

    move-wide v2, p2

    move-object v4, p1

    move-wide v5, p4

    move-wide/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/email/MessagingController$13;-><init>(Lcom/android/email/MessagingController;JLjava/util/HashMap;JJ)V

    invoke-direct {p0, v9, v10, v0}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    .line 3049
    return-void
.end method

.method pruneCachedAttachments(J)V
    .locals 17
    .parameter "accountId"

    .prologue
    .line 5034
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 5035
    .local v2, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p1

    invoke-static {v4, v0, v1}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentDirectory(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v10

    .line 5036
    .local v10, cacheDir:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12

    .line 5039
    .local v12, fileList:[Ljava/io/File;
    if-nez v12, :cond_1

    .line 5073
    :cond_0
    return-void

    .line 5041
    :cond_1
    move-object v8, v12

    .local v8, arr$:[Ljava/io/File;
    array-length v0, v8

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_0
    move/from16 v0, v16

    if-ge v13, v0, :cond_0

    aget-object v11, v8, v13

    .line 5042
    .local v11, file:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5046
    :try_start_0
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 5047
    .local v14, id:J
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 5048
    .local v3, uri:Landroid/net/Uri;
    sget-object v4, Lcom/android/email/MessagingController;->PRUNE_ATTACHMENT_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 5050
    .local v9, c:Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5053
    const/4 v4, 0x0

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    if-nez v4, :cond_3

    .line 5058
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 5041
    .end local v3           #uri:Landroid/net/Uri;
    .end local v9           #c:Landroid/database/Cursor;
    .end local v14           #id:J
    :cond_2
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 5058
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v9       #c:Landroid/database/Cursor;
    .restart local v14       #id:J
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 5062
    sget-object v4, Lcom/android/email/MessagingController;->PRUNE_ATTACHMENT_CV:Landroid/content/ContentValues;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 5068
    .end local v3           #uri:Landroid/net/Uri;
    .end local v9           #c:Landroid/database/Cursor;
    .end local v14           #id:J
    :goto_2
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_2

    .line 5069
    invoke-virtual {v11}, Ljava/io/File;->deleteOnExit()V

    goto :goto_1

    .line 5058
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v9       #c:Landroid/database/Cursor;
    .restart local v14       #id:J
    :catchall_0
    move-exception v4

    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v4
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    .line 5063
    .end local v3           #uri:Landroid/net/Uri;
    .end local v9           #c:Landroid/database/Cursor;
    .end local v14           #id:J
    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method public qreSyncMailboxSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .locals 11
    .parameter "account"
    .parameter "folder"

    .prologue
    const/4 v10, 0x0

    .line 1361
    const-string v5, "MsgControl >>>"

    const-string v6, "QReSyncMailboxSynchronous Starts"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    iget-object v5, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v6, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    new-instance v8, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v9, 0x1b

    invoke-direct {v8, v9}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    invoke-virtual {v5, v6, v7, v8, v10}, Lcom/android/email/GroupMessagingListener;->syncMailboxStatus(JLcom/android/emailcommon/mail/MessagingException;I)V

    .line 1365
    const/4 v4, 0x0

    .line 1366
    .local v4, results:Lcom/android/email/mail/StoreSynchronizer$SyncResults;
    :try_start_0
    iget-object v5, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v3

    .line 1367
    .local v3, remoteStore:Lcom/android/email/mail/Store;
    iget-object v5, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v2

    .line 1368
    .local v2, remoteFolder:Lcom/android/emailcommon/mail/Folder;
    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Folder;->getMailBoxSynchronizer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/StoreSynchronizer;

    .line 1371
    .local v0, customSync:Lcom/android/email/mail/StoreSynchronizer;
    if-nez v0, :cond_0

    .line 1372
    invoke-direct {p0, p1, p2}, Lcom/android/email/MessagingController;->synchronizeMailboxGeneric(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    move-result-object v4

    .line 1377
    :goto_0
    if-eqz v4, :cond_1

    .line 1378
    iget-object v5, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v6, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    new-instance v8, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v9, 0x1a

    invoke-direct {v8, v9}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/email/GroupMessagingListener;->syncMailboxStatus(JLcom/android/emailcommon/mail/MessagingException;I)V

    .line 1389
    .end local v0           #customSync:Lcom/android/email/mail/StoreSynchronizer;
    .end local v2           #remoteFolder:Lcom/android/emailcommon/mail/Folder;
    .end local v3           #remoteStore:Lcom/android/email/mail/Store;
    :goto_1
    return-void

    .line 1374
    .restart local v0       #customSync:Lcom/android/email/mail/StoreSynchronizer;
    .restart local v2       #remoteFolder:Lcom/android/emailcommon/mail/Folder;
    .restart local v3       #remoteStore:Lcom/android/email/mail/Store;
    :cond_0
    iget-boolean v5, p0, Lcom/android/email/MessagingController;->mRemoteSync:Z

    invoke-interface {v0, p1, p2, v5}, Lcom/android/email/mail/StoreSynchronizer;->qresyncMailBox(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Z)Lcom/android/email/mail/StoreSynchronizer$SyncResults;

    move-result-object v4

    goto :goto_0

    .line 1381
    :cond_1
    iget-object v5, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v6, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    new-instance v8, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v9, 0x2c

    invoke-direct {v8, v9}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/email/GroupMessagingListener;->syncMailboxStatus(JLcom/android/emailcommon/mail/MessagingException;I)V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1384
    .end local v0           #customSync:Lcom/android/email/mail/StoreSynchronizer;
    .end local v2           #remoteFolder:Lcom/android/emailcommon/mail/Folder;
    .end local v3           #remoteStore:Lcom/android/email/mail/Store;
    :catch_0
    move-exception v1

    .line 1385
    .local v1, e:Lcom/android/emailcommon/mail/MessagingException;
    const-string v5, "MsgControl >>>"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "synchronizeMailboxSearchOnServer [accId - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "][mbId - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] Got exception - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    iget-object v5, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v6, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v5, v6, v7, v1, v10}, Lcom/android/email/GroupMessagingListener;->syncMailboxStatus(JLcom/android/emailcommon/mail/MessagingException;I)V

    goto :goto_1
.end method

.method public removeListener(Lcom/android/email/MessagingListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    invoke-virtual {v0, p1}, Lcom/android/email/GroupMessagingListener;->removeListener(Lcom/android/email/MessagingListener;)V

    .line 323
    return-void
.end method

.method public renameFolder(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/lang/String;Lcom/android/email/MessagingListener;)V
    .locals 7
    .parameter "mailbox"
    .parameter "newMailboxName"
    .parameter "listener"

    .prologue
    .line 797
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v6

    .line 799
    .local v6, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v6, :cond_0

    .line 800
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    const/4 v3, 0x3

    new-instance v5, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v4, 0x68

    invoke-direct {v5, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/GroupMessagingListener;->foldersCommandFinished(JILjava/lang/String;Lcom/android/emailcommon/mail/MessagingException;)V

    .line 1030
    :goto_0
    return-void

    .line 808
    :cond_0
    const-string v0, "renameFolder"

    new-instance v1, Lcom/android/email/MessagingController$3;

    invoke-direct {v1, p0, p1, p2, v6}, Lcom/android/email/MessagingController$3;-><init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    invoke-direct {p0, v0, p3, v1}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public resetIdling(Z)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 5728
    const-string v0, "MsgControl >>>"

    const-string v1, "IDLE resetIdling"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5730
    if-eqz p1, :cond_5

    .line 5731
    iget-object v0, p0, Lcom/android/email/MessagingController;->mResetTimerCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 5732
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5733
    iget-object v0, p0, Lcom/android/email/MessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 5734
    iget-object v3, p0, Lcom/android/email/MessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingController$ImapIdleFolder;

    .line 5735
    if-eqz v0, :cond_0

    .line 5737
    iget-object v3, v0, Lcom/android/email/MessagingController$ImapIdleFolder;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Lcom/android/email/adapter/ProtocolAdapter;->isSncAccount(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5738
    iget-object v3, v0, Lcom/android/email/MessagingController$ImapIdleFolder;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct {p0, v3}, Lcom/android/email/MessagingController;->isPushScheduledNow(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 5741
    const-string v3, "Off-Peak Time"

    iput-object v3, v0, Lcom/android/email/MessagingController$ImapIdleFolder;->mFailureString:Ljava/lang/String;

    goto :goto_0

    .line 5749
    :cond_1
    invoke-virtual {v0}, Lcom/android/email/MessagingController$ImapIdleFolder;->status()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 5751
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5753
    :cond_2
    invoke-virtual {v0}, Lcom/android/email/MessagingController$ImapIdleFolder;->reset()V

    goto :goto_0

    .line 5758
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 5759
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingController$ImapIdleFolder;

    .line 5760
    iget-object v3, v0, Lcom/android/email/MessagingController$ImapIdleFolder;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/email/MessagingController$ImapIdleFolder;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-virtual {p0, v3, v0}, Lcom/android/email/MessagingController;->startIdling(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    goto :goto_1

    .line 5763
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 5767
    :cond_5
    iget-object v0, p0, Lcom/android/email/MessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5768
    iget-object v0, p0, Lcom/android/email/MessagingController;->mResetTimerStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 5769
    const-string v0, "MsgControl >>>"

    const-string v1, "IDLE No need to reset since no idle connections!"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5790
    :goto_2
    return-void

    .line 5773
    :cond_6
    iget-object v0, p0, Lcom/android/email/MessagingController;->mResetTimerStatus:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-ne v5, v0, :cond_7

    .line 5774
    const-string v0, "MsgControl >>>"

    const-string v1, "IDLE Reset timer is already running!"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 5780
    :cond_7
    iget-object v0, p0, Lcom/android/email/MessagingController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/email/MessagingController$22;

    invoke-direct {v1, p0}, Lcom/android/email/MessagingController$22;-><init>(Lcom/android/email/MessagingController;)V

    const-wide/32 v2, 0x927c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 242
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 247
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingController$Command;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    .local v0, command:Lcom/android/email/MessagingController$Command;
    iget-object v2, v0, Lcom/android/email/MessagingController$Command;->listener:Lcom/android/email/MessagingListener;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/email/MessagingController$Command;->listener:Lcom/android/email/MessagingListener;

    invoke-direct {p0, v2}, Lcom/android/email/MessagingController;->isActiveListener(Lcom/android/email/MessagingListener;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 253
    :cond_0
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 254
    const-string v2, "MsgControl >>>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MessagingController:run() process command START : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/email/MessagingController$Command;->description:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_1
    iput-boolean v3, p0, Lcom/android/email/MessagingController;->mBusy:Z

    .line 259
    iget-object v2, v0, Lcom/android/email/MessagingController$Command;->runnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 260
    iget-object v5, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-object v2, p0, Lcom/android/email/MessagingController;->mCommands:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v2

    if-lez v2, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Lcom/android/email/GroupMessagingListener;->controllerCommandCompleted(Z)V

    .line 262
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 263
    const-string v2, "MsgControl >>>"

    const-string v5, "MessagingController:run() process command END"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_2
    iput-boolean v4, p0, Lcom/android/email/MessagingController;->mBusy:Z

    goto :goto_0

    .line 248
    .end local v0           #command:Lcom/android/email/MessagingController$Command;
    :catch_0
    move-exception v1

    .line 249
    .local v1, e:Ljava/lang/InterruptedException;
    goto :goto_0

    .end local v1           #e:Ljava/lang/InterruptedException;
    .restart local v0       #command:Lcom/android/email/MessagingController$Command;
    :cond_3
    move v2, v4

    .line 260
    goto :goto_1
.end method

.method public searchOnServerSync(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/lang/String;Lcom/android/email/MessagingListener;)V
    .locals 5
    .parameter "account"
    .parameter "folder"
    .parameter "searchText"
    .parameter "listener"

    .prologue
    .line 1249
    iget v0, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1257
    :goto_0
    return-void

    .line 1251
    :cond_0
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxStarted(JJ)V

    .line 1252
    const-string v0, "searchOnServerSync"

    new-instance v1, Lcom/android/email/MessagingController$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/email/MessagingController$5;-><init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/lang/String;)V

    invoke-direct {p0, v0, p4, v1}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public sendPendingMessages(Lcom/android/emailcommon/provider/EmailContent$Account;JLcom/android/email/MessagingListener;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5083
    const-string v0, "sendPendingMessages"

    new-instance v1, Lcom/android/email/MessagingController$20;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/email/MessagingController$20;-><init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;J)V

    invoke-direct {p0, v0, p4, v1}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    .line 5088
    return-void
.end method

.method public sendPendingMessagesSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;J)V
    .locals 17
    .parameter
    .parameter

    .prologue
    .line 5097
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v9

    .line 5099
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v4, 0x4

    invoke-static {v1, v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v6

    .line 5100
    const-wide/16 v1, -0x1

    cmp-long v1, v6, v1

    if-nez v1, :cond_0

    .line 5242
    :goto_0
    return-void

    .line 5103
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 5104
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_SUBJECT_COLUMN_PROJECTION:[Ljava/lang/String;

    const-string v4, "mailboxKey=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 5117
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-gtz v2, :cond_1

    .line 5240
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 5121
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const-wide/16 v5, -0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/email/GroupMessagingListener;->sendPendingMessagesStarted(JJ)V

    .line 5123
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSenderUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/mail/Sender;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/mail/Sender;

    move-result-object v11

    .line 5124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v2

    .line 5125
    invoke-virtual {v2}, Lcom/android/email/mail/Store;->requireCopyMessageToSentFolder()Z

    move-result v12

    .line 5126
    const/4 v2, 0x0

    .line 5127
    if-eqz v12, :cond_d

    .line 5128
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 5129
    const-string v3, "mailboxKey"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object v8, v2

    .line 5133
    :cond_2
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-eqz v2, :cond_a

    .line 5134
    const-wide/16 v5, -0x1

    .line 5138
    const/4 v2, 0x0

    :try_start_2
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 5139
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 5141
    const/4 v4, 0x2

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    const-wide/16 v15, -0x1

    cmp-long v4, v13, v15

    if-eqz v4, :cond_2

    .line 5144
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v4, v13, v14, v5, v6}, Lcom/android/email/GroupMessagingListener;->sendPendingMessagesStarted(JJ)V

    .line 5146
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v4, v5, v6}, Lcom/android/emailcommon/utility/Utility;->hasUnloadedAttachments(Landroid/content/Context;J)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 5147
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 5148
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t send #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; unloaded attachments"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 5154
    :catch_0
    move-exception v7

    .line 5156
    :try_start_3
    instance-of v2, v7, Lcom/android/emailcommon/mail/MessagingException;

    if-eqz v2, :cond_3

    .line 5157
    invoke-virtual {v7}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to attach"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 5159
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 5161
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 5162
    const-string v4, "syncServerId"

    const/4 v13, -0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v4, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5165
    const/4 v4, 0x0

    const/4 v13, 0x0

    invoke-virtual {v1, v2, v3, v4, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5171
    :cond_3
    instance-of v2, v7, Lcom/android/emailcommon/mail/AuthenticationFailedException;

    if-eqz v2, :cond_4

    .line 5172
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v9, v2, v3}, Lcom/android/email/NotificationController;->showLoginFailedNotification(J)V

    .line 5174
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual/range {v2 .. v7}, Lcom/android/email/GroupMessagingListener;->sendPendingMessagesFailed(JJLjava/lang/Exception;)V

    .line 5175
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendPendingMessagesSynchronous failed  messageID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " me="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5177
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v4, 0x3

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v6, v2, v3, v4}, Lcom/android/email/Controller;->showSendingNotification_fail(JJLjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 5234
    :catch_1
    move-exception v6

    .line 5235
    :try_start_4
    instance-of v1, v6, Lcom/android/emailcommon/mail/AuthenticationFailedException;

    if-eqz v1, :cond_5

    .line 5236
    move-object/from16 v0, p1

    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v9, v1, v2}, Lcom/android/email/NotificationController;->showLoginFailedNotification(J)V

    .line 5238
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const-wide/16 v4, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/email/GroupMessagingListener;->sendPendingMessagesFailed(JJLjava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 5240
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 5153
    :cond_6
    :try_start_5
    invoke-virtual {v11, v5, v6}, Lcom/android/email/mail/Sender;->sendMessage(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_0

    .line 5181
    :try_start_6
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 5183
    if-eqz v12, :cond_9

    .line 5188
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v7, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v7

    .line 5190
    if-eqz v7, :cond_7

    iget v7, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_7

    .line 5191
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v7, v13, v14, v5, v6}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    .line 5194
    :cond_7
    const/4 v7, 0x0

    const/4 v13, 0x0

    invoke-virtual {v1, v4, v8, v7, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5203
    :goto_2
    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v4, 0x3

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v6, v13, v14, v4}, Lcom/android/email/Controller;->showSendingNotification_finish(JJLjava/lang/String;)V

    .line 5206
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v4, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v4

    .line 5208
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v7, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyWithMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Body;

    move-result-object v5

    .line 5211
    if-eqz v4, :cond_8

    if-eqz v5, :cond_8

    .line 5212
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/android/email/MessagingController;->updateHistoryForEmailSend(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Body;Ljava/lang/String;)V

    .line 5217
    :cond_8
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    .line 5218
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/email/MessagingController;->setMessageReply(JZ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    .line 5240
    :catchall_0
    move-exception v1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1

    .line 5196
    :cond_9
    :try_start_7
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v7, v13, v14, v5, v6}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    .line 5197
    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 5199
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v1, v7, v13, v14}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5200
    const/4 v7, 0x0

    const/4 v13, 0x0

    invoke-virtual {v1, v4, v7, v13}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    .line 5222
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Lcom/android/email/GroupMessagingListener;->sendPendingMessagesCompleted(J)V

    .line 5223
    const-string v1, "EMAIL_PERFORMANCE"

    const-string v2, "SEND SUCCESS Notification"

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 5224
    move-object/from16 v0, p1

    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v9, v1, v2}, Lcom/android/email/NotificationController;->cancelLoginFailedNotification(J)V

    .line 5228
    const-string v1, "TN_US_ATT"

    invoke-static {v1}, Lcom/android/emailcommon/utility/SecFeatureWrapper;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "TN_US_COMM"

    invoke-static {v1}, Lcom/android/emailcommon/utility/SecFeatureWrapper;->isEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 5230
    :cond_b
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 5231
    const-string v1, "GATE"

    const-string v2, "<GATE-M>EMAIL_MESSAGE_SENT</GATE-M>"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_7 .. :try_end_7} :catch_1

    .line 5240
    :cond_c
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_d
    move-object v8, v2

    goto/16 :goto_1
.end method

.method public setFetchFlag(JI)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 5818
    const-string v0, "MsgControl >>>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IDLE resetFetchFlag | FolderHash - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/MessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mbId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5821
    iget-object v0, p0, Lcom/android/email/MessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingController$ImapIdleFolder;

    .line 5822
    if-eqz v0, :cond_0

    .line 5823
    invoke-virtual {v0, p3}, Lcom/android/email/MessagingController$ImapIdleFolder;->setFetchFlag(I)V

    .line 5827
    :goto_0
    return-void

    .line 5825
    :cond_0
    const-string v0, "MsgControl >>>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IDLE resetFetchFlag | No match found for mbId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setMessageReply(JZ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 5254
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5255
    const-string v1, "flagReply"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 5256
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 5258
    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5260
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 5263
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTypeMsg:I

    if-nez v1, :cond_0

    .line 5264
    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-virtual {p0, v0, v1}, Lcom/android/email/MessagingController;->processPendingActions(J)V

    .line 5266
    :cond_0
    return-void
.end method

.method public declared-synchronized startIdling(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 5694
    monitor-enter p0

    .line 5696
    :try_start_0
    const-string v0, "MsgControl >>>"

    const-string v2, "IDLE startIdling Starts"

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5698
    iget-object v0, p0, Lcom/android/email/MessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v2, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingController$ImapIdleFolder;

    if-eqz v0, :cond_0

    .line 5699
    const-string v0, "MsgControl >>>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IDLE Folder is already being idled [accId/mbId -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Hence stopping it!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5701
    invoke-virtual {p0, p1, p2}, Lcom/android/email/MessagingController;->stopIdling(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    .line 5705
    :cond_0
    new-instance v2, Lcom/android/email/MessagingController$ImapIdleFolder;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/email/MessagingController$ImapIdleFolder;-><init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    .line 5706
    iget-object v0, p0, Lcom/android/email/MessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5707
    const/4 v0, 0x1

    .line 5709
    iget-object v3, v2, Lcom/android/email/MessagingController$ImapIdleFolder;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Lcom/android/email/adapter/ProtocolAdapter;->isSncAccount(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5710
    iget-object v3, v2, Lcom/android/email/MessagingController$ImapIdleFolder;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct {p0, v3}, Lcom/android/email/MessagingController;->isPushScheduledNow(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 5711
    const-string v0, "Off-Peak Time"

    iput-object v0, v2, Lcom/android/email/MessagingController$ImapIdleFolder;->mFailureString:Ljava/lang/String;

    move v0, v1

    .line 5717
    :cond_1
    if-eqz v0, :cond_2

    const/4 v0, -0x1

    invoke-virtual {v2}, Lcom/android/email/MessagingController$ImapIdleFolder;->start()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 5718
    const-string v0, "MsgControl >>>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IDLE IDLE failed to start for folder "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "And will be retried while reset-ting!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5721
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/MessagingController;->resetIdling(Z)V

    .line 5722
    const-string v0, "MsgControl >>>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IDLE IDLE started for folder "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " successfully by thread "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v2, Lcom/android/email/MessagingController$ImapIdleFolder;->mIdleThreadId:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5724
    monitor-exit p0

    return-void

    .line 5694
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startIdling(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Z)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5642
    monitor-enter p0

    .line 5644
    :try_start_0
    const-string v0, "MsgControl >>>"

    const-string v3, "IDLE startIdling Starts"

    invoke-static {v0, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5646
    iget-object v0, p0, Lcom/android/email/MessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingController$ImapIdleFolder;

    if-eqz v0, :cond_0

    .line 5647
    const-string v0, "MsgControl >>>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IDLE Folder is already being idled [accId/mbId -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Hence stopping it!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5649
    invoke-virtual {p0, p1, p2}, Lcom/android/email/MessagingController;->stopIdling(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    .line 5653
    :cond_0
    new-instance v3, Lcom/android/email/MessagingController$ImapIdleFolder;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/email/MessagingController$ImapIdleFolder;-><init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    .line 5654
    iget-object v0, p0, Lcom/android/email/MessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v4, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5657
    iget-object v0, v3, Lcom/android/email/MessagingController$ImapIdleFolder;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v5}, Lcom/android/email/adapter/ProtocolAdapter;->isSncAccount(J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5658
    iget-object v0, v3, Lcom/android/email/MessagingController$ImapIdleFolder;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct {p0, v0}, Lcom/android/email/MessagingController;->isPushScheduledNow(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 5659
    const-string v0, "Off-Peak Time"

    iput-object v0, v3, Lcom/android/email/MessagingController$ImapIdleFolder;->mFailureString:Ljava/lang/String;

    move v0, v2

    .line 5668
    :goto_0
    if-eqz p3, :cond_1

    .line 5670
    invoke-static {}, Lcom/android/email/EmailConnectivityManager;->isMobileAvailable()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 5672
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    const/4 v0, -0x1

    invoke-virtual {v3}, Lcom/android/email/MessagingController$ImapIdleFolder;->start()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 5673
    const-string v0, "MsgControl >>>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IDLE IDLE failed to start for folder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "And will be retried while reset-ting!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5676
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/MessagingController;->resetIdling(Z)V

    .line 5677
    const-string v0, "MsgControl >>>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IDLE IDLE started for folder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " successfully by thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v3, Lcom/android/email/MessagingController$ImapIdleFolder;->mIdleThreadId:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5679
    monitor-exit p0

    return-void

    :cond_3
    move v0, v2

    .line 5670
    goto :goto_1

    .line 5642
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public stopIdling(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 5800
    const-string v0, "MsgControl >>>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IDLE stopIdling | FolderHash - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/MessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mbId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5803
    iget-object v0, p0, Lcom/android/email/MessagingController;->mIdleFolderHash:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v1, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingController$ImapIdleFolder;

    .line 5804
    if-eqz v0, :cond_0

    .line 5805
    invoke-virtual {v0}, Lcom/android/email/MessagingController$ImapIdleFolder;->stop()V

    .line 5811
    :goto_0
    return-void

    .line 5807
    :cond_0
    const-string v0, "MsgControl >>>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IDLE stopIdling | No match found for mbId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5808
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v2, 0x3d

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/email/GroupMessagingListener;->folderPushStatus(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/mail/MessagingException;I)V

    goto :goto_0
.end method

.method public synchronizeMailbox(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/email/MessagingListener;)V
    .locals 5
    .parameter "account"
    .parameter "folder"
    .parameter "listener"

    .prologue
    .line 1307
    iget v0, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1317
    :cond_0
    :goto_0
    return-void

    .line 1311
    :cond_1
    iget-object v0, p0, Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;

    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v3, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/GroupMessagingListener;->synchronizeMailboxStarted(JJ)V

    .line 1312
    const-string v0, "synchronizeMailbox"

    new-instance v1, Lcom/android/email/MessagingController$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/email/MessagingController$6;-><init>(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    invoke-direct {p0, v0, p3, v1}, Lcom/android/email/MessagingController;->put(Ljava/lang/String;Lcom/android/email/MessagingListener;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public updateHistoryForEmail(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Body;Ljava/lang/String;)Z
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 2699
    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    if-eqz v1, :cond_0

    .line 2784
    :goto_0
    return v0

    .line 2703
    :cond_0
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 2711
    :try_start_0
    const-string v1, "date"

    iget-wide v2, p3, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2712
    const-string v1, "type"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2713
    const-string v1, "number"

    invoke-virtual {p2}, Lcom/android/emailcommon/mail/Message;->getFrom()[Lcom/android/emailcommon/mail/Address;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2714
    const-string v1, "contactid"

    iget-wide v2, p3, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2715
    const-string v1, "messageid"

    iget-wide v2, p3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2716
    const-string v1, "m_subject"

    iget-object v2, p3, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2717
    const-string v1, "account_name"

    invoke-virtual {v8, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2718
    const-string v1, "account_id"

    iget-wide v2, p3, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2719
    const-string v1, "name"

    iget-object v2, p3, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2722
    const-string v1, "new"

    iget-boolean v2, p3, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    if-eqz v2, :cond_1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2730
    iget-object v0, p4, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    .line 2731
    iget-object v2, p4, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    .line 2732
    const-string v1, ""

    .line 2734
    if-eqz v0, :cond_2

    .line 2756
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x32

    if-le v1, v2, :cond_3

    .line 2757
    const-string v1, "m_content"

    const/4 v2, 0x0

    const/16 v3, 0x31

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 2770
    :goto_3
    :try_start_1
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://logs/email"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2775
    iget-object v0, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v2, 0x190

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-wide v5, p3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IIZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 2783
    :goto_4
    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    move v0, v7

    .line 2784
    goto/16 :goto_0

    :cond_1
    move v0, v7

    .line 2722
    goto :goto_1

    .line 2736
    :cond_2
    if-eqz v2, :cond_4

    .line 2739
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<body>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2749
    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "</body>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2750
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 2759
    :cond_3
    const-string v1, "m_content"

    invoke-virtual {v8, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_3

    .line 2760
    :catch_0
    move-exception v0

    .line 2762
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/MessagingException;->printStackTrace()V

    goto :goto_3

    .line 2763
    :catch_1
    move-exception v0

    .line 2764
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while updating History For Email."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2765
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_3

    .line 2781
    :catch_2
    move-exception v0

    goto :goto_4

    .line 2766
    :catch_3
    move-exception v0

    goto :goto_3

    :cond_4
    move-object v0, v1

    goto/16 :goto_2
.end method

.method public updatesynctime(Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .locals 5
    .parameter

    .prologue
    .line 2686
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2688
    iget-object v1, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v1

    .line 2689
    const-string v2, "syncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2690
    if-eqz v1, :cond_0

    .line 2691
    iget-object v2, p0, Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 2692
    :cond_0
    return-void
.end method

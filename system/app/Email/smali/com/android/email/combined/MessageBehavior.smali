.class public Lcom/android/email/combined/MessageBehavior;
.super Ljava/lang/Object;
.source "MessageBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/combined/MessageBehavior$LocalMailboxInfo;,
        Lcom/android/email/combined/MessageBehavior$NotificationTimestamp;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/android/email/combined/MessageBehavior;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/email/combined/MessageFacade$MessageListener;",
            ">;"
        }
    .end annotation
.end field

.field private mListenersMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/android/email/combined/MessageFacade$MessageListener;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mNotificationTimestamp:Lcom/android/email/combined/MessageBehavior$NotificationTimestamp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/combined/MessageBehavior;->mInstance:Lcom/android/email/combined/MessageBehavior;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 102
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Lcom/android/email/combined/MessageBehavior$NotificationTimestamp;

    invoke-direct {v0}, Lcom/android/email/combined/MessageBehavior$NotificationTimestamp;-><init>()V

    iput-object v0, p0, Lcom/android/email/combined/MessageBehavior;->mNotificationTimestamp:Lcom/android/email/combined/MessageBehavior$NotificationTimestamp;

    .line 115
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/combined/MessageBehavior;->mListenersMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 117
    iget-object v0, p0, Lcom/android/email/combined/MessageBehavior;->mListenersMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/combined/MessageBehavior;->mListeners:Ljava/util/Set;

    .line 103
    iput-object p1, p0, Lcom/android/email/combined/MessageBehavior;->mContext:Landroid/content/Context;

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/combined/MessageBehavior;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/email/combined/MessageBehavior;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/email/combined/MessageBehavior;
    .locals 2
    .parameter

    .prologue
    .line 107
    sget-object v0, Lcom/android/email/combined/MessageBehavior;->mInstance:Lcom/android/email/combined/MessageBehavior;

    if-nez v0, :cond_0

    .line 108
    const-class v1, Lcom/android/email/combined/MessageBehavior;

    monitor-enter v1

    .line 109
    :try_start_0
    new-instance v0, Lcom/android/email/combined/MessageBehavior;

    invoke-direct {v0, p0}, Lcom/android/email/combined/MessageBehavior;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/email/combined/MessageBehavior;->mInstance:Lcom/android/email/combined/MessageBehavior;

    .line 110
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :cond_0
    sget-object v0, Lcom/android/email/combined/MessageBehavior;->mInstance:Lcom/android/email/combined/MessageBehavior;

    return-object v0

    .line 110
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public addFolder(IILjava/lang/String;)V
    .locals 5
    .parameter "remoteAccountId"
    .parameter "remoteFolderId"
    .parameter "remoteFolderName"

    .prologue
    const/4 v4, 0x1

    .line 463
    iget-object v2, p0, Lcom/android/email/combined/MessageBehavior;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithSevenAccountId(Landroid/content/Context;I)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 465
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    if-ge p2, v4, :cond_1

    .line 466
    :cond_0
    const-string v2, "MessageBehavior"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addFolder >> account: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", remoteFolderName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", remoteFolderId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :goto_0
    return-void

    .line 470
    :cond_1
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 471
    .local v1, remoteFolder:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {p0, v2, v3, v1, v4}, Lcom/android/email/combined/MessageBehavior;->listFolders(JLjava/util/Hashtable;Z)V

    goto :goto_0
.end method

.method public declared-synchronized addListener(Lcom/android/email/combined/MessageFacade$MessageListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/combined/MessageBehavior;->mListenersMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit p0

    return-void

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Body;[Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 2
    .parameter "message"
    .parameter "body"
    .parameter "attachments"

    .prologue
    .line 208
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/email/combined/MessageBehavior$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/email/combined/MessageBehavior$1;-><init>(Lcom/android/email/combined/MessageBehavior;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Body;[Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 297
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 298
    return-void
.end method

.method public listFolders(JLjava/util/Hashtable;Z)V
    .locals 8
    .parameter "accountId"
    .parameter
    .parameter "isPush"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1002
    .local p3, remoteFolders:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/email/combined/MessageBehavior;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v3

    .line 1004
    .local v3, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v3, :cond_0

    if-nez p3, :cond_1

    .line 1005
    :cond_0
    const-string v0, "MessageBehavior"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listFolders >> remoteFolders: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    :goto_0
    return-void

    .line 1008
    :cond_1
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/android/email/combined/MessageBehavior$9;

    move-object v1, p0

    move-object v2, p3

    move v4, p4

    move-wide v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/email/combined/MessageBehavior$9;-><init>(Lcom/android/email/combined/MessageBehavior;Ljava/util/Hashtable;Lcom/android/emailcommon/provider/EmailContent$Account;ZJ)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1114
    .local v7, thread:Ljava/lang/Thread;
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public declared-synchronized notifyFolderFailed(Lcom/android/email/combined/EmailException;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 183
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/email/combined/MessageBehavior;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/combined/MessageFacade$MessageListener;

    .line 184
    .local v1, listener:Lcom/android/email/combined/MessageFacade$MessageListener;
    invoke-interface {v1, p1}, Lcom/android/email/combined/MessageFacade$MessageListener;->onFolderFailed(Lcom/android/email/combined/EmailException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 183
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/combined/MessageFacade$MessageListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 186
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized notifyFolderFinished(J)V
    .locals 3
    .parameter "accountId"

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/email/combined/MessageBehavior;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/combined/MessageFacade$MessageListener;

    .line 175
    .local v1, listener:Lcom/android/email/combined/MessageFacade$MessageListener;
    invoke-interface {v1, p1, p2}, Lcom/android/email/combined/MessageFacade$MessageListener;->onFolderFinished(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 174
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/combined/MessageFacade$MessageListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 177
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized notifyFolderStarted()V
    .locals 3

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/email/combined/MessageBehavior;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/combined/MessageFacade$MessageListener;

    .line 166
    .local v1, listener:Lcom/android/email/combined/MessageFacade$MessageListener;
    invoke-interface {v1}, Lcom/android/email/combined/MessageFacade$MessageListener;->onFolderStarted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 165
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/combined/MessageFacade$MessageListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 168
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized notifyMessageFailed(Lcom/android/email/combined/EmailException;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/email/combined/MessageBehavior;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/combined/MessageFacade$MessageListener;

    .line 157
    .local v1, listener:Lcom/android/email/combined/MessageFacade$MessageListener;
    invoke-interface {v1, p1}, Lcom/android/email/combined/MessageFacade$MessageListener;->onMessageFailed(Lcom/android/email/combined/EmailException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 156
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/combined/MessageFacade$MessageListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 159
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized notifyMessageFinished(J)V
    .locals 3
    .parameter "accountId"

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/email/combined/MessageBehavior;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/combined/MessageFacade$MessageListener;

    .line 148
    .local v1, listener:Lcom/android/email/combined/MessageFacade$MessageListener;
    invoke-interface {v1, p1, p2}, Lcom/android/email/combined/MessageFacade$MessageListener;->onMessageFinished(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 147
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/combined/MessageFacade$MessageListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 150
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized notifyMessageStarted()V
    .locals 3

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/email/combined/MessageBehavior;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/combined/MessageFacade$MessageListener;

    .line 139
    .local v1, listener:Lcom/android/email/combined/MessageFacade$MessageListener;
    invoke-interface {v1}, Lcom/android/email/combined/MessageFacade$MessageListener;->onMessageStarted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 138
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/combined/MessageFacade$MessageListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 141
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public removeFolder(II)V
    .locals 2
    .parameter "remoteAccountId"
    .parameter "remoteFolderId"

    .prologue
    .line 539
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/email/combined/MessageBehavior$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/email/combined/MessageBehavior$3;-><init>(Lcom/android/email/combined/MessageBehavior;II)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 581
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 582
    return-void
.end method

.method public declared-synchronized removeListener(Lcom/android/email/combined/MessageFacade$MessageListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/combined/MessageBehavior;->mListenersMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeMessage(II)V
    .locals 2
    .parameter "remoteMessageId"
    .parameter "remoteFolderId"

    .prologue
    .line 765
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/email/combined/MessageBehavior$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/email/combined/MessageBehavior$7;-><init>(Lcom/android/email/combined/MessageBehavior;II)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 875
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 876
    return-void
.end method

.method public removeMessageForDate(IJ)V
    .locals 2
    .parameter "remoteAccountId"
    .parameter "remainDay"

    .prologue
    .line 885
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/email/combined/MessageBehavior$8;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/android/email/combined/MessageBehavior$8;-><init>(Lcom/android/email/combined/MessageBehavior;JI)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 990
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 991
    return-void
.end method

.method public replacePosToBasic(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "s"
    .parameter "leng"

    .prologue
    const/4 v1, 0x0

    .line 443
    if-nez p1, :cond_1

    .line 451
    :cond_0
    :goto_0
    return-object v1

    .line 445
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 447
    const/4 v2, 0x1

    if-le p2, v2, :cond_0

    .line 450
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 451
    .local v0, pos:I
    add-int/lit8 v1, v0, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public setMessageFavorite(IZ)V
    .locals 2
    .parameter "remoteMessageId"
    .parameter "isFavorite"

    .prologue
    .line 592
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/email/combined/MessageBehavior$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/email/combined/MessageBehavior$4;-><init>(Lcom/android/email/combined/MessageBehavior;IZ)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 623
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 624
    return-void
.end method

.method public setMessageRead(IZ)V
    .locals 2
    .parameter "remoteMessageId"
    .parameter "isRead"

    .prologue
    .line 635
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/email/combined/MessageBehavior$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/email/combined/MessageBehavior$5;-><init>(Lcom/android/email/combined/MessageBehavior;IZ)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 665
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 666
    return-void
.end method

.method public toContentAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;II)Landroid/content/ContentValues;
    .locals 4
    .parameter "attachment"
    .parameter "mId"
    .parameter "leng"

    .prologue
    .line 429
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 430
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "fileName"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const-string v1, "mimeType"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    const-string v1, "size"

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 433
    const-string v1, "contentId"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const-string v1, "contentUri"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const-string v1, "messageKey"

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 436
    const-string v1, "location"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    invoke-virtual {p0, v2, p3}, Lcom/android/email/combined/MessageBehavior;->replacePosToBasic(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const-string v1, "encoding"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const-string v1, "messageKey"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 439
    return-object v0
.end method

.method public toContentValues(Lcom/android/emailcommon/provider/EmailContent$Message;)Landroid/content/ContentValues;
    .locals 14
    .parameter "message"

    .prologue
    const-wide/16 v12, 0x0

    .line 307
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 309
    .local v5, value:Landroid/content/ContentValues;
    const-string v6, "displayName"

    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v6, "timeStamp"

    iget-wide v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 311
    const-string v6, "subject"

    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v6, "flagRead"

    iget-boolean v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 313
    const-string v6, "flagLoaded"

    iget v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 314
    const-string v6, "flagFavorite"

    iget-boolean v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 315
    const-string v6, "flagAttachment"

    iget-boolean v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 316
    const-string v6, "flags"

    iget v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 317
    const-string v6, "syncServerId"

    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v6, "syncServerTimeStamp"

    iget-wide v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerTimeStamp:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 319
    const-string v6, "clientId"

    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mClientId:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v6, "messageId"

    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v6, p0, Lcom/android/email/combined/MessageBehavior;->mContext:Landroid/content/Context;

    iget-wide v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenAccountKey:J

    invoke-static {v6, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->getAccountKey(Landroid/content/Context;J)J

    move-result-wide v6

    long-to-int v0, v6

    .line 328
    .local v0, accountKey:I
    const-string v6, "accountKey"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 329
    const-string v6, "mailboxKey"

    iget-object v7, p0, Lcom/android/email/combined/MessageBehavior;->mContext:Landroid/content/Context;

    int-to-long v8, v0

    iget v10, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenMailboxKey:I

    int-to-long v10, v10

    invoke-static {v7, v8, v9, v10, v11}, Lcom/android/emailcommon/provider/EmailContent$MailboxCB;->findMailboxKey(Landroid/content/Context;JJ)J

    move-result-wide v7

    long-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 332
    const-string v6, "fromList"

    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v6, "toList"

    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string v6, "ccList"

    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string v6, "bccList"

    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v6, "replyToList"

    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v6, "meetingInfo"

    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 343
    .local v3, subjectStr:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 344
    iput-wide v12, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mThreadId:J

    .line 362
    :goto_0
    const-string v6, "threadId"

    iget-wide v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mThreadId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 366
    const-string v6, "snippet"

    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    return-object v5

    .line 347
    :cond_0
    const/16 v6, 0x3a

    :try_start_0
    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 348
    .local v2, iStartStr:I
    const/4 v4, 0x0

    .line 349
    .local v4, threadSubject:Ljava/lang/String;
    if-gez v2, :cond_1

    .line 350
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 355
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    int-to-long v6, v6

    const/16 v8, 0xc

    shl-long/2addr v6, v8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    and-int/lit16 v8, v8, 0xfff

    int-to-long v8, v8

    or-long/2addr v6, v8

    iput-wide v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mThreadId:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 358
    .end local v2           #iStartStr:I
    .end local v4           #threadSubject:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 359
    .local v1, e:Ljava/lang/Exception;
    iput-wide v12, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mThreadId:J

    goto :goto_0

    .line 352
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #iStartStr:I
    .restart local v4       #threadSubject:Ljava/lang/String;
    :cond_1
    add-int/lit8 v6, v2, 0x1

    :try_start_1
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_1
.end method

.method public toContentValuesBody(Lcom/android/emailcommon/provider/EmailContent$Body;I)Landroid/content/ContentValues;
    .locals 5
    .parameter "body"
    .parameter "mId"

    .prologue
    const-wide/16 v3, 0x0

    .line 394
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 396
    .local v0, cv:Landroid/content/ContentValues;
    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 397
    const-string v1, "textContent"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    :cond_0
    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 400
    const-string v1, "htmlContent"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    :cond_1
    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextReply:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 403
    const-string v1, "textReply"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextReply:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    :cond_2
    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlReply:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 406
    const-string v1, "htmlReply"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlReply:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    :cond_3
    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Body;->mSourceKey:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_6

    .line 409
    const-string v1, "sourceMessageKey"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 413
    :cond_4
    :goto_0
    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Body;->mIntroText:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 414
    const-string v1, "introText"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Body;->mIntroText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    :cond_5
    const-string v1, "messageKey"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 417
    return-object v0

    .line 410
    :cond_6
    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Body;->mSourceKey:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    .line 411
    const-string v1, "sourceMessageKey"

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent$Body;->mSourceKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method public toContentValuesSeven(Lcom/android/emailcommon/provider/EmailContent$Message;)Landroid/content/ContentValues;
    .locals 4
    .parameter "message"

    .prologue
    .line 371
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 373
    .local v0, value:Landroid/content/ContentValues;
    const-string v1, "sevenMessageKey"

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenMessageKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 374
    const-string v1, "typeMsg"

    iget v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTypeMsg:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 379
    const-string v1, "missingBody"

    iget v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMissingBody:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 380
    const-string v1, "missingHtmlBody"

    iget v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMissingHtmlBody:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 381
    const-string v1, "unkEncoding"

    iget v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mUnkEncoding:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 382
    const-string v1, "sevenAccountKey"

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenAccountKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 384
    return-object v0
.end method

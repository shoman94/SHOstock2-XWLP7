.class public Lcom/android/email/GroupMessagingListener;
.super Lcom/android/email/MessagingListener;
.source "GroupMessagingListener.java"


# instance fields
.field private mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/email/MessagingListener;",
            ">;"
        }
    .end annotation
.end field

.field private mListenersMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/android/email/MessagingListener;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/email/MessagingListener;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/GroupMessagingListener;->mListenersMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 42
    iget-object v0, p0, Lcom/android/email/GroupMessagingListener;->mListenersMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/android/email/MessagingListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/GroupMessagingListener;->mListenersMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized checkMailFinished(Landroid/content/Context;JJJ)V
    .locals 9
    .parameter "context"
    .parameter "accountId"
    .parameter "folderId"
    .parameter "tag"

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingListener;

    .local v0, l:Lcom/android/email/MessagingListener;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    .line 148
    invoke-virtual/range {v0 .. v7}, Lcom/android/email/MessagingListener;->checkMailFinished(Landroid/content/Context;JJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 147
    .end local v0           #l:Lcom/android/email/MessagingListener;
    .end local v8           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 150
    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized checkMailStarted(Landroid/content/Context;JJ)V
    .locals 7
    .parameter "context"
    .parameter "accountId"
    .parameter "tag"

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingListener;

    .local v0, l:Lcom/android/email/MessagingListener;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 140
    invoke-virtual/range {v0 .. v5}, Lcom/android/email/MessagingListener;->checkMailStarted(Landroid/content/Context;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 139
    .end local v0           #l:Lcom/android/email/MessagingListener;
    .end local v6           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 142
    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized controllerCommandCompleted(Z)V
    .locals 3
    .parameter "moreCommandsToRun"

    .prologue
    .line 231
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/MessagingListener;

    .line 232
    .local v1, l:Lcom/android/email/MessagingListener;
    invoke-virtual {v1, p1}, Lcom/android/email/MessagingListener;->controllerCommandCompleted(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 231
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/android/email/MessagingListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 234
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public deleteUserAccountStatus(Landroid/os/Bundle;J)V
    .locals 4
    .parameter "bundle"
    .parameter "accountId"

    .prologue
    .line 239
    iget-object v3, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    monitor-enter v3

    .line 240
    :try_start_0
    iget-object v2, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/MessagingListener;

    .line 241
    .local v1, l:Lcom/android/email/MessagingListener;
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/email/MessagingListener;->deleteUserAccountStatus(Landroid/os/Bundle;J)V

    goto :goto_0

    .line 243
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/android/email/MessagingListener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    return-void
.end method

.method public folderPushStatus(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/mail/MessagingException;I)V
    .locals 4
    .parameter "mailbox"
    .parameter "e"
    .parameter "progress"

    .prologue
    .line 257
    iget-object v3, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    monitor-enter v3

    .line 258
    :try_start_0
    iget-object v2, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/MessagingListener;

    .line 259
    .local v1, l:Lcom/android/email/MessagingListener;
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/email/MessagingListener;->folderPushStatus(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/emailcommon/mail/MessagingException;I)V

    goto :goto_0

    .line 261
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/android/email/MessagingListener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    return-void
.end method

.method public declared-synchronized foldersCommandFinished(JILjava/lang/String;Lcom/android/emailcommon/mail/MessagingException;)V
    .locals 7
    .parameter "accountId"
    .parameter "command"
    .parameter "folderName"
    .parameter "result"

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingListener;

    .local v0, l:Lcom/android/email/MessagingListener;
    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 68
    invoke-virtual/range {v0 .. v5}, Lcom/android/email/MessagingListener;->foldersCommandFinished(JILjava/lang/String;Lcom/android/emailcommon/mail/MessagingException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 67
    .end local v0           #l:Lcom/android/email/MessagingListener;
    .end local v6           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 70
    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized isActiveListener(Lcom/android/email/MessagingListener;)Z
    .locals 1
    .parameter "listener"

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/GroupMessagingListener;->mListenersMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized listFoldersFailed(JLjava/lang/String;)V
    .locals 3
    .parameter "accountId"
    .parameter "message"

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/MessagingListener;

    .line 82
    .local v1, l:Lcom/android/email/MessagingListener;
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/email/MessagingListener;->listFoldersFailed(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 81
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/android/email/MessagingListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 84
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized listFoldersFinished(J)V
    .locals 3
    .parameter "accountId"

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/MessagingListener;

    .line 89
    .local v1, l:Lcom/android/email/MessagingListener;
    invoke-virtual {v1, p1, p2}, Lcom/android/email/MessagingListener;->listFoldersFinished(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 88
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/android/email/MessagingListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 91
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized listFoldersStarted(J)V
    .locals 3
    .parameter "accountId"

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/MessagingListener;

    .line 75
    .local v1, l:Lcom/android/email/MessagingListener;
    invoke-virtual {v1, p1, p2}, Lcom/android/email/MessagingListener;->listFoldersStarted(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 74
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/android/email/MessagingListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 77
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized loadAttachmentFailed(JJJLcom/android/emailcommon/mail/MessagingException;Z)V
    .locals 10
    .parameter "accountId"
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "me"
    .parameter "background"

    .prologue
    .line 224
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingListener;

    .local v0, l:Lcom/android/email/MessagingListener;
    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    .line 225
    invoke-virtual/range {v0 .. v8}, Lcom/android/email/MessagingListener;->loadAttachmentFailed(JJJLcom/android/emailcommon/mail/MessagingException;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 224
    .end local v0           #l:Lcom/android/email/MessagingListener;
    .end local v9           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 227
    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized loadAttachmentFinished(JJJZ)V
    .locals 9
    .parameter "accountId"
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "requiresDownload"

    .prologue
    .line 214
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingListener;

    .local v0, l:Lcom/android/email/MessagingListener;
    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move/from16 v7, p7

    .line 215
    invoke-virtual/range {v0 .. v7}, Lcom/android/email/MessagingListener;->loadAttachmentFinished(JJJZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 214
    .end local v0           #l:Lcom/android/email/MessagingListener;
    .end local v8           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 217
    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized loadAttachmentStarted(JJJZ)V
    .locals 9
    .parameter "accountId"
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "requiresDownload"

    .prologue
    .line 197
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingListener;

    .local v0, l:Lcom/android/email/MessagingListener;
    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move/from16 v7, p7

    .line 198
    invoke-virtual/range {v0 .. v7}, Lcom/android/email/MessagingListener;->loadAttachmentStarted(JJJZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 197
    .end local v0           #l:Lcom/android/email/MessagingListener;
    .end local v8           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 200
    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized loadMessageForViewFailed(JLjava/lang/String;)V
    .locals 3
    .parameter "messageId"
    .parameter "message"

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/MessagingListener;

    .line 133
    .local v1, l:Lcom/android/email/MessagingListener;
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/email/MessagingListener;->loadMessageForViewFailed(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 132
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/android/email/MessagingListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 135
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized loadMessageForViewFinished(J)V
    .locals 3
    .parameter "messageId"

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/MessagingListener;

    .line 126
    .local v1, l:Lcom/android/email/MessagingListener;
    invoke-virtual {v1, p1, p2}, Lcom/android/email/MessagingListener;->loadMessageForViewFinished(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 125
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/android/email/MessagingListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 128
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized loadMessageForViewStarted(J)V
    .locals 3
    .parameter "messageId"

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/MessagingListener;

    .line 119
    .local v1, l:Lcom/android/email/MessagingListener;
    invoke-virtual {v1, p1, p2}, Lcom/android/email/MessagingListener;->loadMessageForViewStarted(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 118
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/android/email/MessagingListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 121
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized movemessageToOtherAccountCallback(ZJJJJJJII)V
    .locals 18
    .parameter "result"
    .parameter "messageId"
    .parameter "source_accountId"
    .parameter "orig_boxkey"
    .parameter "target_accountId"
    .parameter "target_boxkey"
    .parameter "source_trashMailboxId"
    .parameter "target_server_type"
    .parameter "source_server_type"

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/MessagingListener;

    .local v1, l:Lcom/android/email/MessagingListener;
    move/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    move-wide/from16 v13, p12

    move/from16 v15, p14

    move/from16 v16, p15

    .line 188
    invoke-virtual/range {v1 .. v16}, Lcom/android/email/MessagingListener;->movemessageToOtherAccountCallback(ZJJJJJJII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 187
    .end local v1           #l:Lcom/android/email/MessagingListener;
    .end local v17           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 192
    .restart local v17       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized removeListener(Lcom/android/email/MessagingListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/GroupMessagingListener;->mListenersMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sendPendingMessagesCompleted(J)V
    .locals 3
    .parameter "accountId"

    .prologue
    .line 161
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/MessagingListener;

    .line 162
    .local v1, l:Lcom/android/email/MessagingListener;
    invoke-virtual {v1, p1, p2}, Lcom/android/email/MessagingListener;->sendPendingMessagesCompleted(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 161
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/android/email/MessagingListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 164
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized sendPendingMessagesFailed(JJLjava/lang/Exception;)V
    .locals 7
    .parameter "accountId"
    .parameter "messageId"
    .parameter "reason"

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingListener;

    .local v0, l:Lcom/android/email/MessagingListener;
    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    .line 170
    invoke-virtual/range {v0 .. v5}, Lcom/android/email/MessagingListener;->sendPendingMessagesFailed(JJLjava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 169
    .end local v0           #l:Lcom/android/email/MessagingListener;
    .end local v6           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 172
    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized sendPendingMessagesStarted(JJ)V
    .locals 3
    .parameter "accountId"
    .parameter "messageId"

    .prologue
    .line 154
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/MessagingListener;

    .line 155
    .local v1, l:Lcom/android/email/MessagingListener;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/email/MessagingListener;->sendPendingMessagesStarted(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 154
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/android/email/MessagingListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 157
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public syncMailboxStatus(JLcom/android/emailcommon/mail/MessagingException;I)V
    .locals 4
    .parameter "mailboxId"
    .parameter "e"
    .parameter "progress"

    .prologue
    .line 266
    iget-object v3, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    monitor-enter v3

    .line 267
    :try_start_0
    iget-object v2, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/MessagingListener;

    .line 268
    .local v1, l:Lcom/android/email/MessagingListener;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/email/MessagingListener;->syncMailboxStatus(JLcom/android/emailcommon/mail/MessagingException;I)V

    goto :goto_0

    .line 270
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/android/email/MessagingListener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    return-void
.end method

.method public declared-synchronized synchronizeMailboxFailed(JJLjava/lang/Exception;)V
    .locals 7
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "e"

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingListener;

    .local v0, l:Lcom/android/email/MessagingListener;
    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    .line 112
    invoke-virtual/range {v0 .. v5}, Lcom/android/email/MessagingListener;->synchronizeMailboxFailed(JJLjava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 111
    .end local v0           #l:Lcom/android/email/MessagingListener;
    .end local v6           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 114
    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized synchronizeMailboxFinished(JJII)V
    .locals 8
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "totalMessagesInMailbox"
    .parameter "numNewMessages"

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingListener;

    .local v0, l:Lcom/android/email/MessagingListener;
    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move v6, p6

    .line 104
    invoke-virtual/range {v0 .. v6}, Lcom/android/email/MessagingListener;->synchronizeMailboxFinished(JJII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 103
    .end local v0           #l:Lcom/android/email/MessagingListener;
    .end local v7           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 107
    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized synchronizeMailboxStarted(JJ)V
    .locals 3
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/MessagingListener;

    .line 96
    .local v1, l:Lcom/android/email/MessagingListener;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/email/MessagingListener;->synchronizeMailboxStarted(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 95
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #l:Lcom/android/email/MessagingListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 98
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V
    .locals 10
    .parameter "result"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "progress"
    .parameter "numNewMessages"

    .prologue
    .line 278
    iget-object v9, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    monitor-enter v9

    .line 279
    :try_start_0
    iget-object v1, p0, Lcom/android/email/GroupMessagingListener;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessagingListener;

    .local v0, l:Lcom/android/email/MessagingListener;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    .line 280
    invoke-virtual/range {v0 .. v7}, Lcom/android/email/MessagingListener;->updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V

    goto :goto_0

    .line 282
    .end local v0           #l:Lcom/android/email/MessagingListener;
    .end local v8           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    return-void
.end method

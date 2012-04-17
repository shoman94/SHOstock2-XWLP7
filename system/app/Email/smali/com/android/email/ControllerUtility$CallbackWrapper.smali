.class public Lcom/android/email/ControllerUtility$CallbackWrapper;
.super Lcom/android/email/Controller$Result;
.source "ControllerUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/ControllerUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallbackWrapper"
.end annotation


# instance fields
.field private mListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/email/Controller$Result;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/HashSet;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/email/Controller$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, listeners:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/email/Controller$Result;>;"
    invoke-direct {p0}, Lcom/android/email/Controller$Result;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    .line 22
    return-void
.end method


# virtual methods
.method public OoOCallback(Lcom/android/emailcommon/mail/MessagingException;JILandroid/os/Bundle;)V
    .locals 8
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"
    .parameter "oooResults"

    .prologue
    .line 26
    iget-object v7, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    monitor-enter v7

    .line 27
    :try_start_0
    iget-object v1, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .local v0, r:Lcom/android/email/Controller$Result;
    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    .line 28
    invoke-virtual/range {v0 .. v5}, Lcom/android/email/Controller$Result;->OoOCallback(Lcom/android/emailcommon/mail/MessagingException;JILandroid/os/Bundle;)V

    goto :goto_0

    .line 30
    .end local v0           #r:Lcom/android/email/Controller$Result;
    .end local v6           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    return-void
.end method

.method public deleteAccountCallback(Landroid/os/Bundle;J)V
    .locals 4
    .parameter "status"
    .parameter "accountId"

    .prologue
    .line 89
    iget-object v3, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    monitor-enter v3

    .line 90
    :try_start_0
    iget-object v2, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 91
    .local v1, r:Lcom/android/email/Controller$Result;
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/email/Controller$Result;->deleteAccountCallback(Landroid/os/Bundle;J)V

    goto :goto_0

    .line 93
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #r:Lcom/android/email/Controller$Result;
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

    .line 94
    return-void
.end method

.method public deviceInfoCallback(I)V
    .locals 4
    .parameter "status"

    .prologue
    .line 168
    iget-object v3, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    monitor-enter v3

    .line 169
    :try_start_0
    iget-object v2, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 170
    .local v1, r:Lcom/android/email/Controller$Result;
    invoke-virtual {v1, p1}, Lcom/android/email/Controller$Result;->deviceInfoCallback(I)V

    goto :goto_0

    .line 172
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #r:Lcom/android/email/Controller$Result;
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

    .line 173
    return-void
.end method

.method public emptyTrashCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .locals 4
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"

    .prologue
    .line 99
    iget-object v3, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    monitor-enter v3

    .line 100
    :try_start_0
    iget-object v2, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 101
    .local v1, r:Lcom/android/email/Controller$Result;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/email/Controller$Result;->emptyTrashCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V

    goto :goto_0

    .line 103
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #r:Lcom/android/email/Controller$Result;
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

    .line 104
    return-void
.end method

.method public folderCommandCallback(ILcom/android/emailcommon/mail/MessagingException;J)V
    .locals 4
    .parameter "command"
    .parameter "result"
    .parameter "mailboxId"

    .prologue
    .line 116
    iget-object v3, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    monitor-enter v3

    .line 117
    :try_start_0
    iget-object v2, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 118
    .local v1, r:Lcom/android/email/Controller$Result;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/email/Controller$Result;->folderCommandCallback(ILcom/android/emailcommon/mail/MessagingException;J)V

    goto :goto_0

    .line 120
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #r:Lcom/android/email/Controller$Result;
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

    .line 121
    return-void
.end method

.method public loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V
    .locals 11
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "progress"

    .prologue
    .line 62
    iget-object v10, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    monitor-enter v10

    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .local v0, r:Lcom/android/email/Controller$Result;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p8

    .line 64
    invoke-virtual/range {v0 .. v8}, Lcom/android/email/Controller$Result;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    goto :goto_0

    .line 66
    .end local v0           #r:Lcom/android/email/Controller$Result;
    .end local v9           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    return-void
.end method

.method public loadMessageForViewCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V
    .locals 9
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 53
    iget-object v8, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    monitor-enter v8

    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .local v0, r:Lcom/android/email/Controller$Result;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    .line 55
    invoke-virtual/range {v0 .. v6}, Lcom/android/email/Controller$Result;->loadMessageForViewCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V

    goto :goto_0

    .line 57
    .end local v0           #r:Lcom/android/email/Controller$Result;
    .end local v7           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    return-void
.end method

.method public loadMoreCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .locals 4
    .parameter "result"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 152
    iget-object v3, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    monitor-enter v3

    .line 153
    :try_start_0
    iget-object v2, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 154
    .local v1, r:Lcom/android/email/Controller$Result;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/email/Controller$Result;->loadMoreCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V

    goto :goto_0

    .line 156
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #r:Lcom/android/email/Controller$Result;
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

    .line 157
    return-void
.end method

.method public moveConvAlwaysCallback(Lcom/android/emailcommon/mail/MessagingException;[BII)V
    .locals 4
    .parameter "result"
    .parameter "convId"
    .parameter "progress"
    .parameter "ignore"

    .prologue
    .line 108
    iget-object v3, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    monitor-enter v3

    .line 109
    :try_start_0
    iget-object v2, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 110
    .local v1, r:Lcom/android/email/Controller$Result;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/email/Controller$Result;->moveConvAlwaysCallback(Lcom/android/emailcommon/mail/MessagingException;[BII)V

    goto :goto_0

    .line 112
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #r:Lcom/android/email/Controller$Result;
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

    .line 113
    return-void
.end method

.method public searchMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJIILjava/lang/String;)V
    .locals 11
    .parameter "result"
    .parameter "accountKey"
    .parameter "mailboxKey"
    .parameter "progress"
    .parameter "numNewMessages"
    .parameter "statusCode"

    .prologue
    .line 143
    iget-object v10, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    monitor-enter v10

    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .local v0, r:Lcom/android/email/Controller$Result;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 145
    invoke-virtual/range {v0 .. v8}, Lcom/android/email/Controller$Result;->searchMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJIILjava/lang/String;)V

    goto :goto_0

    .line 148
    .end local v0           #r:Lcom/android/email/Controller$Result;
    .end local v9           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    return-void
.end method

.method public sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V
    .locals 9
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 80
    iget-object v8, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    monitor-enter v8

    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .local v0, r:Lcom/android/email/Controller$Result;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    .line 82
    invoke-virtual/range {v0 .. v6}, Lcom/android/email/Controller$Result;->sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V

    goto :goto_0

    .line 84
    .end local v0           #r:Lcom/android/email/Controller$Result;
    .end local v7           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    return-void
.end method

.method public sendMeetingEditedResponseCallback(ZJJ)V
    .locals 8
    .parameter "success"
    .parameter "messageId"
    .parameter "draftId"

    .prologue
    .line 179
    iget-object v7, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    monitor-enter v7

    .line 180
    :try_start_0
    iget-object v1, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .local v0, r:Lcom/android/email/Controller$Result;
    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 181
    invoke-virtual/range {v0 .. v5}, Lcom/android/email/Controller$Result;->sendMeetingEditedResponseCallback(ZJJ)V

    goto :goto_0

    .line 183
    .end local v0           #r:Lcom/android/email/Controller$Result;
    .end local v6           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    return-void
.end method

.method public serviceCheckMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJIJ)V
    .locals 11
    .parameter "result"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "progress"
    .parameter "tag"

    .prologue
    .line 71
    iget-object v10, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    monitor-enter v10

    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .local v0, r:Lcom/android/email/Controller$Result;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    move-wide/from16 v7, p7

    .line 73
    invoke-virtual/range {v0 .. v8}, Lcom/android/email/Controller$Result;->serviceCheckMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJIJ)V

    goto :goto_0

    .line 75
    .end local v0           #r:Lcom/android/email/Controller$Result;
    .end local v9           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    return-void
.end method

.method public setupAccountCallback(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    .line 134
    iget-object v3, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    monitor-enter v3

    .line 135
    :try_start_0
    iget-object v2, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 136
    .local v1, r:Lcom/android/email/Controller$Result;
    invoke-virtual {v1, p1}, Lcom/android/email/Controller$Result;->setupAccountCallback(Landroid/os/Bundle;)V

    goto :goto_0

    .line 138
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #r:Lcom/android/email/Controller$Result;
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

    .line 139
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
    .line 44
    iget-object v9, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    monitor-enter v9

    .line 45
    :try_start_0
    iget-object v1, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .local v0, r:Lcom/android/email/Controller$Result;
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    .line 46
    invoke-virtual/range {v0 .. v7}, Lcom/android/email/Controller$Result;->updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V

    goto :goto_0

    .line 48
    .end local v0           #r:Lcom/android/email/Controller$Result;
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

    .line 49
    return-void
.end method

.method public updateMailboxListCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .locals 4
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"

    .prologue
    .line 35
    iget-object v3, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    monitor-enter v3

    .line 36
    :try_start_0
    iget-object v2, p0, Lcom/android/email/ControllerUtility$CallbackWrapper;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/Controller$Result;

    .line 37
    .local v1, r:Lcom/android/email/Controller$Result;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/email/Controller$Result;->updateMailboxListCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V

    goto :goto_0

    .line 39
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #r:Lcom/android/email/Controller$Result;
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

    .line 40
    return-void
.end method

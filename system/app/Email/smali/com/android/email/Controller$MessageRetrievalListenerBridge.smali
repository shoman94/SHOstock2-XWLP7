.class public Lcom/android/email/Controller$MessageRetrievalListenerBridge;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MessageRetrievalListenerBridge"
.end annotation


# instance fields
.field private final mAccountId:J

.field private final mAttachmentId:J

.field private final mMessageId:J

.field private mProgress:I

.field final synthetic this$0:Lcom/android/email/Controller;


# direct methods
.method public constructor <init>(Lcom/android/email/Controller;JJ)V
    .locals 3
    .parameter
    .parameter "messageId"
    .parameter "attachmentId"

    .prologue
    .line 4605
    iput-object p1, p0, Lcom/android/email/Controller$MessageRetrievalListenerBridge;->this$0:Lcom/android/email/Controller;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4606
    iput-wide p2, p0, Lcom/android/email/Controller$MessageRetrievalListenerBridge;->mMessageId:J

    .line 4607
    iput-wide p4, p0, Lcom/android/email/Controller$MessageRetrievalListenerBridge;->mAttachmentId:J

    .line 4608
    #getter for: Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/email/Controller;->access$000(Lcom/android/email/Controller;)Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/Controller$MessageRetrievalListenerBridge;->mMessageId:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getAccountIdForMessageId(Landroid/content/Context;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/Controller$MessageRetrievalListenerBridge;->mAccountId:J

    .line 4609
    return-void
.end method


# virtual methods
.method public loadAttachmentProgress(ILcom/android/emailcommon/mail/Folder$MessageRetrievalListener$DOWNLOAD_STATUS;)V
    .locals 13
    .parameter "progress"
    .parameter "status"

    .prologue
    .line 4613
    iget-object v1, p0, Lcom/android/email/Controller$MessageRetrievalListenerBridge;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v12

    monitor-enter v12

    .line 4614
    :try_start_0
    invoke-static {}, Lcom/android/email/util/EmailFeature;->GetDownloadPercent()I

    move-result v11

    .line 4615
    .local v11, nPercent:I
    const/16 v1, 0x64

    if-ge v11, v1, :cond_0

    .line 4616
    sget-object v1, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener$DOWNLOAD_STATUS;->DECODEBODY:Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener$DOWNLOAD_STATUS;

    if-ne p2, v1, :cond_1

    .line 4617
    rsub-int/lit8 v1, v11, 0x64

    mul-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x64

    add-int p1, v11, v1

    .line 4624
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/email/Controller$MessageRetrievalListenerBridge;->mProgress:I

    if-ne v1, p1, :cond_3

    .line 4625
    monitor-exit v12

    .line 4647
    :goto_1
    return-void

    .line 4618
    :cond_1
    sget-object v1, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener$DOWNLOAD_STATUS;->IMAPMEMORYLITERAL:Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener$DOWNLOAD_STATUS;

    if-eq p2, v1, :cond_2

    sget-object v1, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener$DOWNLOAD_STATUS;->IMAPMEMORYLITERAL:Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener$DOWNLOAD_STATUS;

    if-ne p2, v1, :cond_0

    .line 4620
    :cond_2
    mul-int v1, p1, v11

    div-int/lit8 p1, v1, 0x64

    goto :goto_0

    .line 4627
    :cond_3
    iput p1, p0, Lcom/android/email/Controller$MessageRetrievalListenerBridge;->mProgress:I

    .line 4629
    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 4630
    const-string v1, "Controller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Controller:loadAttachmentProgress : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/email/Controller$MessageRetrievalListenerBridge;->mMessageId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4634
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/android/email/Controller$MessageRetrievalListenerBridge;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mCallbackProxy:Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;
    invoke-static {v1}, Lcom/android/email/Controller;->access$900(Lcom/android/email/Controller;)Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/Controller$MessageRetrievalListenerBridge;->mMessageId:J

    iget-wide v3, p0, Lcom/android/email/Controller$MessageRetrievalListenerBridge;->mAttachmentId:J

    const/4 v5, 0x1

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->loadAttachmentStatus(JJII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4641
    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/android/email/Controller$MessageRetrievalListenerBridge;->this$0:Lcom/android/email/Controller;

    #getter for: Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/email/Controller;->access$800(Lcom/android/email/Controller;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .line 4643
    .local v0, listener:Lcom/android/email/Controller$Result;
    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/android/email/Controller$MessageRetrievalListenerBridge;->mAccountId:J

    iget-wide v4, p0, Lcom/android/email/Controller$MessageRetrievalListenerBridge;->mMessageId:J

    iget-wide v6, p0, Lcom/android/email/Controller$MessageRetrievalListenerBridge;->mAttachmentId:J

    move v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/Controller$Result;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    goto :goto_3

    .line 4646
    .end local v0           #listener:Lcom/android/email/Controller$Result;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #nPercent:I
    :catchall_0
    move-exception v1

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 4636
    .restart local v11       #nPercent:I
    :catch_0
    move-exception v9

    .line 4638
    .local v9, e:Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 4646
    .end local v9           #e:Landroid/os/RemoteException;
    .restart local v10       #i$:Ljava/util/Iterator;
    :cond_5
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public messageRetrieved(Lcom/android/emailcommon/mail/Message;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 4651
    return-void
.end method

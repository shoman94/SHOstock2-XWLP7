.class public Lcom/android/email/SMIMEHelperUtils;
.super Ljava/lang/Object;
.source "SMIMEHelperUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;,
        Lcom/android/email/SMIMEHelperUtils$FakeBodyPart;
    }
.end annotation


# static fields
.field private static mSmimeUtils:Lcom/android/email/SMIMEHelperUtils;


# instance fields
.field private className:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/email/Controller;

.field private mListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

.field public mSignedOnly:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/email/Controller;)V
    .locals 3
    .parameter "context"
    .parameter "message"
    .parameter "controller"

    .prologue
    .line 88
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 713
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/email/SMIMEHelperUtils;->mListeners:Ljava/util/HashSet;

    .line 89
    iput-object p1, p0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lcom/android/email/SMIMEHelperUtils;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 91
    iput-object p3, p0, Lcom/android/email/SMIMEHelperUtils;->mController:Lcom/android/email/Controller;

    .line 93
    iget-object v0, p0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/SMIMEHelperUtils;->className:Ljava/lang/String;

    .line 94
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "className ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/SMIMEHelperUtils;->className:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method private attachmentProgress(ZJI)V
    .locals 4
    .parameter "b"
    .parameter "attachmentId"
    .parameter "dialogType"

    .prologue
    .line 673
    iget-object v3, p0, Lcom/android/email/SMIMEHelperUtils;->mListeners:Ljava/util/HashSet;

    monitor-enter v3

    .line 674
    :try_start_0
    iget-object v2, p0, Lcom/android/email/SMIMEHelperUtils;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;

    .line 675
    .local v1, listener:Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;->attachmentProgress(ZJI)V

    goto :goto_0

    .line 677
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;
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

    .line 678
    return-void
.end method

.method private displayToast(I)V
    .locals 4
    .parameter "Id"

    .prologue
    .line 665
    iget-object v3, p0, Lcom/android/email/SMIMEHelperUtils;->mListeners:Ljava/util/HashSet;

    monitor-enter v3

    .line 666
    :try_start_0
    iget-object v2, p0, Lcom/android/email/SMIMEHelperUtils;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;

    .line 667
    .local v1, listener:Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;
    invoke-interface {v1, p1}, Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;->displayToast(I)V

    goto :goto_0

    .line 669
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;
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

    .line 670
    return-void
.end method

.method private finish()V
    .locals 4

    .prologue
    .line 681
    iget-object v3, p0, Lcom/android/email/SMIMEHelperUtils;->mListeners:Ljava/util/HashSet;

    monitor-enter v3

    .line 682
    :try_start_0
    iget-object v2, p0, Lcom/android/email/SMIMEHelperUtils;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;

    .line 683
    .local v1, listener:Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;
    invoke-interface {v1}, Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;->finish()V

    goto :goto_0

    .line 685
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;
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

    .line 686
    return-void
.end method

.method public static getMimeTypeFromFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "fileName"

    .prologue
    .line 451
    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 452
    .local v1, lastDot:I
    const/4 v0, 0x0

    .line 453
    .local v0, extension:Ljava/lang/String;
    if-lez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    .line 454
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 456
    :cond_0
    if-nez v0, :cond_2

    .line 458
    const-string v2, "application/octet-stream"

    .line 465
    .local v2, mimeType:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v2

    .line 460
    .end local v2           #mimeType:Ljava/lang/String;
    :cond_2
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 461
    .restart local v2       #mimeType:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 462
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "application/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static declared-synchronized getSMIMEUtils(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/email/Controller;)Lcom/android/email/SMIMEHelperUtils;
    .locals 2
    .parameter "context"
    .parameter "message"
    .parameter "controller"

    .prologue
    .line 99
    const-class v1, Lcom/android/email/SMIMEHelperUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/email/SMIMEHelperUtils;->mSmimeUtils:Lcom/android/email/SMIMEHelperUtils;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/android/email/SMIMEHelperUtils;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/email/SMIMEHelperUtils;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/email/Controller;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/email/SMIMEHelperUtils;->mSmimeUtils:Lcom/android/email/SMIMEHelperUtils;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getSmimeAttachmentInfo(J)Lcom/android/email/AttachmentInfo;
    .locals 4
    .parameter "messageId"

    .prologue
    const/4 v3, 0x0

    .line 540
    iget-object v2, p0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v1

    .line 543
    .local v1, attachments:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-eqz v1, :cond_0

    aget-object v2, v1, v3

    if-nez v2, :cond_1

    .line 544
    :cond_0
    const/4 v0, 0x0

    .line 549
    :goto_0
    return-object v0

    .line 547
    :cond_1
    new-instance v0, Lcom/android/email/AttachmentInfo;

    iget-object v2, p0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    aget-object v3, v1, v3

    invoke-direct {v0, v2, v3}, Lcom/android/email/AttachmentInfo;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    .line 549
    .local v0, aInfo:Lcom/android/email/AttachmentInfo;
    goto :goto_0
.end method

.method private markAsRead(Z)V
    .locals 4
    .parameter "b"

    .prologue
    .line 698
    iget-object v3, p0, Lcom/android/email/SMIMEHelperUtils;->mListeners:Ljava/util/HashSet;

    monitor-enter v3

    .line 699
    :try_start_0
    iget-object v2, p0, Lcom/android/email/SMIMEHelperUtils;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;

    .line 700
    .local v1, listener:Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;
    invoke-interface {v1, p1}, Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;->markAsRead(Z)V

    goto :goto_0

    .line 702
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;
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

    .line 703
    return-void
.end method

.method private messageChanged()V
    .locals 4

    .prologue
    .line 689
    iget-object v3, p0, Lcom/android/email/SMIMEHelperUtils;->mListeners:Ljava/util/HashSet;

    monitor-enter v3

    .line 690
    :try_start_0
    iget-object v2, p0, Lcom/android/email/SMIMEHelperUtils;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;

    .line 691
    .local v1, listener:Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;
    invoke-interface {v1}, Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;->messageChanged()V

    goto :goto_0

    .line 693
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;
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

    .line 695
    return-void
.end method

.method private setDownloadSmimeAttachment(Z)V
    .locals 4
    .parameter "b"

    .prologue
    .line 706
    iget-object v3, p0, Lcom/android/email/SMIMEHelperUtils;->mListeners:Ljava/util/HashSet;

    monitor-enter v3

    .line 707
    :try_start_0
    iget-object v2, p0, Lcom/android/email/SMIMEHelperUtils;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;

    .line 708
    .local v1, listener:Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;
    invoke-interface {v1, p1}, Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;->setDownloadSmimeAttachment(Z)V

    goto :goto_0

    .line 710
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;
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

    .line 711
    return-void
.end method

.method private updateAttachmentCallback(JZLjava/lang/String;)V
    .locals 4
    .parameter "attachmentId"
    .parameter "b"
    .parameter "attachmentName"

    .prologue
    .line 657
    iget-object v3, p0, Lcom/android/email/SMIMEHelperUtils;->mListeners:Ljava/util/HashSet;

    monitor-enter v3

    .line 658
    :try_start_0
    iget-object v2, p0, Lcom/android/email/SMIMEHelperUtils;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;

    .line 659
    .local v1, listener:Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;->updateAttachmentCallback(JZLjava/lang/String;)V

    goto :goto_0

    .line 661
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;
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

    .line 662
    return-void
.end method


# virtual methods
.method public addResultCallback(Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 738
    iget-object v1, p0, Lcom/android/email/SMIMEHelperUtils;->mListeners:Ljava/util/HashSet;

    monitor-enter v1

    .line 739
    :try_start_0
    iget-object v0, p0, Lcom/android/email/SMIMEHelperUtils;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 740
    monitor-exit v1

    .line 741
    return-void

    .line 740
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public continueHandlingSmimeMessage(JJZ)V
    .locals 52
    .parameter "attachmentId"
    .parameter "mLoadAttachmentId"
    .parameter "mDownloadSmimeAttachment"

    .prologue
    .line 140
    const/16 v43, 0x0

    .line 141
    .local v43, tempSmimeFile:Ljava/io/File;
    const/16 v27, 0x0

    .line 142
    .local v27, file:Ljava/io/File;
    const/16 v23, 0x0

    .line 143
    .local v23, contentUri:Landroid/net/Uri;
    const/4 v14, 0x0

    .line 144
    .local v14, attachmentUri:Landroid/net/Uri;
    :try_start_0
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/SMIMEHelperUtils;->mSignedOnly:Z

    .line 145
    if-eqz p5, :cond_3

    .line 147
    const/16 v46, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-direct {v0, v1}, Lcom/android/email/SMIMEHelperUtils;->setDownloadSmimeAttachment(Z)V

    .line 150
    cmp-long v46, p1, p3

    if-eqz v46, :cond_1

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-boolean v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    move/from16 v46, v0

    if-eqz v46, :cond_2

    .line 155
    const/16 v46, 0x1

    const/16 v47, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v46

    move-wide/from16 v2, p1

    move/from16 v4, v47

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/email/SMIMEHelperUtils;->attachmentProgress(ZJI)V

    .line 158
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v12

    .line 159
    .local v12, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-wide/from16 v46, v0

    iget-wide v0, v12, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v48, v0

    invoke-static/range {v46 .. v49}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentUri(JJ)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v14

    .line 163
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-static {v0, v14}, Lcom/android/emailcommon/utility/AttachmentUtilities;->resolveAttachmentIdToContentUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v23

    .line 170
    :try_start_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v46

    iget-object v0, v12, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-static/range {v46 .. v47}, Lcom/android/emailcommon/utility/Utility;->createUniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v27

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v31

    .line 173
    .local v31, in:Ljava/io/InputStream;
    new-instance v35, Ljava/io/FileOutputStream;

    move-object/from16 v0, v35

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 175
    .local v35, out:Ljava/io/OutputStream;
    :try_start_3
    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 179
    if-eqz v35, :cond_3

    .line 180
    :try_start_4
    invoke-virtual/range {v35 .. v35}, Ljava/io/FileOutputStream;->flush()V

    .line 181
    invoke-virtual/range {v35 .. v35}, Ljava/io/FileOutputStream;->close()V

    .line 182
    invoke-virtual/range {v31 .. v31}, Ljava/io/InputStream;->close()V

    .line 187
    .end local v12           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v31           #in:Ljava/io/InputStream;
    .end local v35           #out:Ljava/io/OutputStream;
    :cond_3
    :goto_1
    new-instance v29, Lcom/android/emailcommon/smime/SMIMEHelper;

    invoke-direct/range {v29 .. v29}, Lcom/android/emailcommon/smime/SMIMEHelper;-><init>()V

    .line 189
    .local v29, helper:Lcom/android/emailcommon/smime/SMIMEHelper;
    const/16 v32, 0x0

    .line 190
    .local v32, message:Lcom/android/emailcommon/smime/SMIMEHelper$Message;
    const/4 v6, 0x0

    .line 191
    .local v6, acc:Lcom/android/emailcommon/provider/EmailContent$Account;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-boolean v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    move/from16 v46, v0

    if-eqz v46, :cond_b

    .line 192
    new-instance v18, Lcom/android/emailcommon/smime/CertificateMgr;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/android/email/EmailUtility;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    move-object/from16 v47, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-direct {v0, v1, v2}, Lcom/android/emailcommon/smime/CertificateMgr;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 195
    .local v18, certMgr:Lcom/android/emailcommon/smime/CertificateMgr;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-wide/from16 v47, v0

    invoke-static/range {v46 .. v48}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v6

    .line 196
    iget-object v7, v6, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    .line 197
    .local v7, alias:Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/android/emailcommon/smime/CertificateMgr;->getPrivateKey(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v36

    check-cast v36, Ljava/security/PrivateKey;

    .line 198
    .local v36, privateKey:Ljava/security/PrivateKey;
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/android/emailcommon/smime/CertificateMgr;->getCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v19

    .line 200
    .local v19, certificate:Ljava/security/cert/X509Certificate;
    if-eqz v36, :cond_0

    if-eqz v27, :cond_0

    .line 203
    move-object/from16 v0, v29

    move-object/from16 v1, v27

    move-object/from16 v2, v36

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/emailcommon/smime/SMIMEHelper;->decryptMessage(Ljava/io/File;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;)Lcom/android/emailcommon/smime/SMIMEHelper$Message;

    move-result-object v32

    .line 204
    const-string v47, "SMIMEUtils"

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "Message "

    move-object/from16 v0, v46

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    if-eqz v46, :cond_a

    const-string v46, ""

    :goto_2
    move-object/from16 v0, v47

    move-object/from16 v1, v46

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    .end local v7           #alias:Ljava/lang/String;
    .end local v18           #certMgr:Lcom/android/emailcommon/smime/CertificateMgr;
    .end local v19           #certificate:Ljava/security/cert/X509Certificate;
    .end local v36           #privateKey:Ljava/security/PrivateKey;
    :cond_4
    :goto_3
    if-eqz v27, :cond_5

    .line 290
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->delete()Z

    .line 293
    :cond_5
    if-eqz v32, :cond_21

    .line 295
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mAttachments:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->size()I

    move-result v46

    if-lez v46, :cond_15

    const/16 v28, 0x1

    .line 297
    .local v28, hasAttachments:Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v47, v0

    invoke-static/range {v46 .. v48}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v44

    .line 299
    .local v44, tmpMsg:Lcom/android/emailcommon/provider/EmailContent$Message;
    const/16 v46, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v44

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    .line 300
    move/from16 v0, v28

    move-object/from16 v1, v44

    iput-boolean v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    .line 301
    move-object/from16 v0, v32

    iget-boolean v0, v0, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mSigned:Z

    move/from16 v46, v0

    move/from16 v0, v46

    move-object/from16 v1, v44

    iput-boolean v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    .line 302
    move-object/from16 v0, v32

    iget-boolean v0, v0, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mVerified:Z

    move/from16 v46, v0

    move/from16 v0, v46

    move-object/from16 v1, v44

    iput-boolean v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mVerified:Z

    .line 303
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "<BR><BR>...<BR><BR>"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    move-object/from16 v47, v0

    const v48, 0x7f080086

    invoke-virtual/range {v47 .. v48}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, "<BR>"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 306
    .local v22, clipMsg:Ljava/lang/String;
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mHtmlBodyText:Ljava/lang/String;

    move-object/from16 v46, v0

    if-eqz v46, :cond_6

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mHtmlBodyText:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Ljava/lang/String;->length()I

    move-result v46

    const/high16 v47, 0x10

    move/from16 v0, v46

    move/from16 v1, v47

    if-lt v0, v1, :cond_6

    .line 307
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mHtmlBodyText:Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    const/high16 v48, 0x10

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v49

    sub-int v48, v48, v49

    invoke-virtual/range {v46 .. v48}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mHtmlBodyText:Ljava/lang/String;

    .line 308
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mHtmlBodyText:Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mHtmlBodyText:Ljava/lang/String;

    .line 310
    :cond_6
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mHtmlBodyText:Ljava/lang/String;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v44

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    .line 312
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "\n\r\n\r...\n\r\n\r"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    move-object/from16 v47, v0

    const v48, 0x7f080086

    invoke-virtual/range {v47 .. v48}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string v47, "\n\r"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 316
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mBodyText:Ljava/lang/String;

    move-object/from16 v46, v0

    if-eqz v46, :cond_7

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mBodyText:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Ljava/lang/String;->length()I

    move-result v46

    const/high16 v47, 0x10

    move/from16 v0, v46

    move/from16 v1, v47

    if-lt v0, v1, :cond_7

    .line 317
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mBodyText:Ljava/lang/String;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    const/high16 v48, 0x10

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v49

    sub-int v48, v48, v49

    invoke-virtual/range {v46 .. v48}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mBodyText:Ljava/lang/String;

    .line 318
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mBodyText:Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mBodyText:Ljava/lang/String;

    .line 321
    :cond_7
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mBodyText:Ljava/lang/String;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v44

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    .line 322
    const/16 v46, 0x1

    move/from16 v0, v46

    move-object/from16 v1, v44

    iput-boolean v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mProcessed:Z

    .line 323
    const/16 v46, 0x0

    move/from16 v0, v46

    move-object/from16 v1, v44

    iput-boolean v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    .line 325
    if-eqz v28, :cond_18

    .line 326
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 327
    .local v16, atts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    const/16 v30, 0x0

    .local v30, i:I
    :goto_5
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mAttachments:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->size()I

    move-result v46

    move/from16 v0, v30

    move/from16 v1, v46

    if-ge v0, v1, :cond_17

    .line 328
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mAttachments:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;

    .line 329
    .local v9, att:Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;
    new-instance v13, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v13}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    .line 330
    .local v13, attachment1:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    iget-object v0, v9, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mEncoding:Ljava/lang/String;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iput-object v0, v13, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mEncoding:Ljava/lang/String;

    .line 331
    iget v0, v9, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mSize:I

    move/from16 v46, v0

    move/from16 v0, v46

    int-to-long v0, v0

    move-wide/from16 v46, v0

    move-wide/from16 v0, v46

    iput-wide v0, v13, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-boolean v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    move/from16 v46, v0

    if-nez v46, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-boolean v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    move/from16 v46, v0

    if-eqz v46, :cond_16

    :cond_8
    iget-object v0, v9, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mFileName:Ljava/lang/String;

    move-object/from16 v46, v0

    if-nez v46, :cond_16

    .line 335
    const-string v46, "__attachment_message_.eml"

    move-object/from16 v0, v46

    iput-object v0, v13, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 339
    :goto_6
    iget-object v0, v9, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mContentId:Ljava/lang/String;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iput-object v0, v13, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    .line 341
    iget v0, v9, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mIsInline:I

    move/from16 v46, v0

    move/from16 v0, v46

    iput v0, v13, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mIsInline:I

    .line 344
    iget-object v0, v13, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/android/email/SMIMEHelperUtils;->getMimeTypeFromFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v46

    iput-object v0, v13, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-wide/from16 v46, v0

    move-wide/from16 v0, v46

    iput-wide v0, v13, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    .line 349
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_5

    .line 165
    .end local v6           #acc:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v9           #att:Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;
    .end local v13           #attachment1:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v16           #atts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    .end local v22           #clipMsg:Ljava/lang/String;
    .end local v28           #hasAttachments:Z
    .end local v29           #helper:Lcom/android/emailcommon/smime/SMIMEHelper;
    .end local v30           #i:I
    .end local v32           #message:Lcom/android/emailcommon/smime/SMIMEHelper$Message;
    .end local v44           #tmpMsg:Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v12       #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :catch_0
    move-exception v33

    .line 166
    .local v33, npe:Ljava/lang/NullPointerException;
    const v46, 0x7f08026a

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-direct {v0, v1}, Lcom/android/email/SMIMEHelperUtils;->displayToast(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 433
    .end local v12           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v33           #npe:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v25

    .line 434
    .local v25, ex:Ljava/lang/Exception;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Exception;->printStackTrace()V

    .line 436
    move-object/from16 v0, v25

    instance-of v0, v0, Ljava/lang/IllegalArgumentException;

    move/from16 v46, v0

    if-eqz v46, :cond_0

    .line 437
    const/16 v46, 0x0

    const/16 v47, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v46

    move-wide/from16 v2, p1

    move/from16 v4, v47

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/email/SMIMEHelperUtils;->attachmentProgress(ZJI)V

    .line 439
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v46

    const-string v47, "MessagingException: type:7"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_0

    .line 442
    const v46, 0x7f080112

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-direct {v0, v1}, Lcom/android/email/SMIMEHelperUtils;->displayToast(I)V

    goto/16 :goto_0

    .line 176
    .end local v25           #ex:Ljava/lang/Exception;
    .restart local v12       #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .restart local v31       #in:Ljava/io/InputStream;
    .restart local v35       #out:Ljava/io/OutputStream;
    :catch_2
    move-exception v24

    .line 177
    .local v24, e:Ljava/lang/Exception;
    :try_start_5
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 179
    if-eqz v35, :cond_3

    .line 180
    :try_start_6
    invoke-virtual/range {v35 .. v35}, Ljava/io/FileOutputStream;->flush()V

    .line 181
    invoke-virtual/range {v35 .. v35}, Ljava/io/FileOutputStream;->close()V

    .line 182
    invoke-virtual/range {v31 .. v31}, Ljava/io/InputStream;->close()V

    goto/16 :goto_1

    .line 179
    .end local v24           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v46

    if-eqz v35, :cond_9

    .line 180
    invoke-virtual/range {v35 .. v35}, Ljava/io/FileOutputStream;->flush()V

    .line 181
    invoke-virtual/range {v35 .. v35}, Ljava/io/FileOutputStream;->close()V

    .line 182
    invoke-virtual/range {v31 .. v31}, Ljava/io/InputStream;->close()V

    :cond_9
    throw v46

    .line 204
    .end local v12           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v31           #in:Ljava/io/InputStream;
    .end local v35           #out:Ljava/io/OutputStream;
    .restart local v6       #acc:Lcom/android/emailcommon/provider/EmailContent$Account;
    .restart local v7       #alias:Ljava/lang/String;
    .restart local v18       #certMgr:Lcom/android/emailcommon/smime/CertificateMgr;
    .restart local v19       #certificate:Ljava/security/cert/X509Certificate;
    .restart local v29       #helper:Lcom/android/emailcommon/smime/SMIMEHelper;
    .restart local v32       #message:Lcom/android/emailcommon/smime/SMIMEHelper$Message;
    .restart local v36       #privateKey:Ljava/security/PrivateKey;
    :cond_a
    const-string v46, "NOT decrypted"

    goto/16 :goto_2

    .line 205
    .end local v7           #alias:Ljava/lang/String;
    .end local v18           #certMgr:Lcom/android/emailcommon/smime/CertificateMgr;
    .end local v19           #certificate:Ljava/security/cert/X509Certificate;
    .end local v36           #privateKey:Ljava/security/PrivateKey;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-boolean v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    move/from16 v46, v0

    if-eqz v46, :cond_4

    .line 206
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/SMIMEHelperUtils;->mSignedOnly:Z

    move/from16 v46, v0

    if-nez v46, :cond_c

    .line 207
    const/16 v46, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-direct {v0, v1}, Lcom/android/email/SMIMEHelperUtils;->setDownloadSmimeAttachment(Z)V

    .line 208
    const/16 v46, 0x1

    const/16 v47, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v46

    move-wide/from16 v2, p1

    move/from16 v4, v47

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/email/SMIMEHelperUtils;->attachmentProgress(ZJI)V

    .line 210
    :cond_c
    const/4 v12, 0x0

    .line 212
    .local v12, attachment:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v46, v0

    const-string v47, "__attachment_message_"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v46

    if-eqz v46, :cond_f

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mThreadName:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v14

    .line 224
    :goto_7
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-static {v0, v14}, Lcom/android/emailcommon/utility/AttachmentUtilities;->resolveAttachmentIdToContentUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    move-result-object v23

    .line 248
    if-eqz v27, :cond_11

    .line 249
    :try_start_8
    new-instance v46, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;

    move-object/from16 v0, v46

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/smime/SMIMEHelper;->parseSignedMessage(Ljava/io/InputStream;)Lcom/android/emailcommon/smime/SMIMEHelper$Message;

    move-result-object v32

    .line 265
    :goto_8
    if-eqz v32, :cond_d

    move-object/from16 v0, v32

    iget-boolean v0, v0, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mVerified:Z

    move/from16 v46, v0

    if-nez v46, :cond_d

    .line 266
    const v46, 0x7f0804e1

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-direct {v0, v1}, Lcom/android/email/SMIMEHelperUtils;->displayToast(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 273
    :cond_d
    const/16 v41, 0x0

    .line 274
    .local v41, saveAs:Ljava/io/File;
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v46, v0

    const-string v47, "__attachment_message_"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v46

    if-nez v46, :cond_e

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-wide/from16 v47, v0

    const/16 v49, 0x0

    aget-object v49, v12, v49

    move-object/from16 v0, v49

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v49, v0

    invoke-static/range {v46 .. v50}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentFilename(Landroid/content/Context;JJ)Ljava/io/File;

    move-result-object v41

    .line 278
    sget-object v46, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    const/16 v47, 0x0

    aget-object v47, v12, v47

    move-object/from16 v0, v47

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v47, v0

    invoke-static/range {v46 .. v48}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v45

    .line 279
    .local v45, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v46

    const/16 v47, 0x0

    const/16 v48, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v45

    move-object/from16 v2, v47

    move-object/from16 v3, v48

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 281
    .end local v45           #uri:Landroid/net/Uri;
    :cond_e
    move-object/from16 v43, v41

    .line 286
    goto/16 :goto_3

    .line 217
    .end local v41           #saveAs:Ljava/io/File;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v47, v0

    invoke-static/range {v46 .. v48}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v12

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-wide/from16 v46, v0

    const/16 v48, 0x0

    aget-object v48, v12, v48

    move-object/from16 v0, v48

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v48, v0

    invoke-static/range {v46 .. v49}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object v14

    goto/16 :goto_7

    .line 226
    :catch_3
    move-exception v5

    .line 227
    .local v5, E:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 228
    const v46, 0x7f0804e6

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-direct {v0, v1}, Lcom/android/email/SMIMEHelperUtils;->displayToast(I)V

    .line 229
    sget-object v48, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    if-eqz v12, :cond_10

    array-length v0, v12

    move/from16 v46, v0

    if-lez v46, :cond_10

    const/16 v46, 0x0

    aget-object v46, v12, v46

    move-object/from16 v0, v46

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v46, v0

    :goto_9
    move-object/from16 v0, v48

    move-wide/from16 v1, v46

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v45

    .line 232
    .restart local v45       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v46

    const/16 v47, 0x0

    const/16 v48, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v45

    move-object/from16 v2, v47

    move-object/from16 v3, v48

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_0

    .line 229
    .end local v45           #uri:Landroid/net/Uri;
    :cond_10
    const-wide/16 v46, 0x0

    goto :goto_9

    .line 255
    .end local v5           #E:Ljava/lang/Exception;
    :cond_11
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v46, v0

    const-string v47, "__attachment_message_"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v46

    if-eqz v46, :cond_12

    .line 256
    new-instance v18, Lcom/android/emailcommon/smime/CertificateMgr;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/android/email/EmailUtility;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    move-object/from16 v47, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-direct {v0, v1, v2}, Lcom/android/emailcommon/smime/CertificateMgr;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 257
    .restart local v18       #certMgr:Lcom/android/emailcommon/smime/CertificateMgr;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-wide/from16 v47, v0

    invoke-static/range {v46 .. v48}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v6

    .line 258
    iget-object v7, v6, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    .line 259
    .restart local v7       #alias:Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/android/emailcommon/smime/CertificateMgr;->getPrivateKey(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v36

    check-cast v36, Ljava/security/PrivateKey;

    .line 260
    .restart local v36       #privateKey:Ljava/security/PrivateKey;
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/android/emailcommon/smime/CertificateMgr;->getCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v19

    .line 261
    .restart local v19       #certificate:Ljava/security/cert/X509Certificate;
    new-instance v46, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/email/SMIMEHelperUtils;->getAttachmentFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v47

    invoke-direct/range {v46 .. v47}, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v46

    move-object/from16 v2, v36

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/emailcommon/smime/SMIMEHelper;->parseSignedMessage(Ljava/io/InputStream;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;)Lcom/android/emailcommon/smime/SMIMEHelper$Message;

    move-result-object v32

    .line 262
    goto/16 :goto_8

    .line 263
    .end local v7           #alias:Ljava/lang/String;
    .end local v18           #certMgr:Lcom/android/emailcommon/smime/CertificateMgr;
    .end local v19           #certificate:Ljava/security/cert/X509Certificate;
    .end local v36           #privateKey:Ljava/security/PrivateKey;
    :cond_12
    new-instance v46, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/email/SMIMEHelperUtils;->getAttachmentFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v47

    invoke-direct/range {v46 .. v47}, Lmyorg/bouncycastle/mail/smime/util/SharedFileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/smime/SMIMEHelper;->parseSignedMessage(Ljava/io/InputStream;)Lcom/android/emailcommon/smime/SMIMEHelper$Message;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    move-result-object v32

    goto/16 :goto_8

    .line 268
    :catch_4
    move-exception v25

    .line 269
    .restart local v25       #ex:Ljava/lang/Exception;
    const v46, 0x7f0804e6

    :try_start_b
    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-direct {v0, v1}, Lcom/android/email/SMIMEHelperUtils;->displayToast(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 273
    const/16 v41, 0x0

    .line 274
    .restart local v41       #saveAs:Ljava/io/File;
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v46, v0

    const-string v47, "__attachment_message_"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v46

    if-nez v46, :cond_13

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-wide/from16 v47, v0

    const/16 v49, 0x0

    aget-object v49, v12, v49

    move-object/from16 v0, v49

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v49, v0

    invoke-static/range {v46 .. v50}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentFilename(Landroid/content/Context;JJ)Ljava/io/File;

    move-result-object v41

    .line 278
    sget-object v46, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    const/16 v47, 0x0

    aget-object v47, v12, v47

    move-object/from16 v0, v47

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v47, v0

    invoke-static/range {v46 .. v48}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v45

    .line 279
    .restart local v45       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v46

    const/16 v47, 0x0

    const/16 v48, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v45

    move-object/from16 v2, v47

    move-object/from16 v3, v48

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 281
    .end local v45           #uri:Landroid/net/Uri;
    :cond_13
    move-object/from16 v43, v41

    goto/16 :goto_0

    .line 273
    .end local v25           #ex:Ljava/lang/Exception;
    .end local v41           #saveAs:Ljava/io/File;
    :catchall_1
    move-exception v46

    const/16 v41, 0x0

    .line 274
    .restart local v41       #saveAs:Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v47, v0

    const-string v48, "__attachment_message_"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v47

    if-nez v47, :cond_14

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-wide/from16 v48, v0

    const/16 v50, 0x0

    aget-object v50, v12, v50

    move-object/from16 v0, v50

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v50, v0

    invoke-static/range {v47 .. v51}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentFilename(Landroid/content/Context;JJ)Ljava/io/File;

    move-result-object v41

    .line 278
    sget-object v47, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    const/16 v48, 0x0

    aget-object v48, v12, v48

    move-object/from16 v0, v48

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v48, v0

    invoke-static/range {v47 .. v49}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v45

    .line 279
    .restart local v45       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v47

    const/16 v48, 0x0

    const/16 v49, 0x0

    move-object/from16 v0, v47

    move-object/from16 v1, v45

    move-object/from16 v2, v48

    move-object/from16 v3, v49

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 281
    .end local v45           #uri:Landroid/net/Uri;
    :cond_14
    move-object/from16 v43, v41

    .line 286
    throw v46

    .line 295
    .end local v12           #attachment:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v41           #saveAs:Ljava/io/File;
    :cond_15
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 337
    .restart local v9       #att:Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;
    .restart local v13       #attachment1:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .restart local v16       #atts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    .restart local v22       #clipMsg:Ljava/lang/String;
    .restart local v28       #hasAttachments:Z
    .restart local v30       #i:I
    .restart local v44       #tmpMsg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_16
    iget-object v0, v9, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mFileName:Ljava/lang/String;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iput-object v0, v13, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    goto/16 :goto_6

    .line 351
    .end local v9           #att:Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;
    .end local v13           #attachment1:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_17
    move-object/from16 v0, v16

    move-object/from16 v1, v44

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    .line 354
    .end local v16           #atts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    .end local v30           #i:I
    :cond_18
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mSigners:[Lmyorg/bouncycastle/cms/SignerInformation;

    move-object/from16 v46, v0

    if-eqz v46, :cond_1e

    .line 355
    if-nez v6, :cond_19

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-wide/from16 v47, v0

    invoke-static/range {v46 .. v48}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v6

    .line 359
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-wide/from16 v47, v0

    invoke-static/range {v47 .. v48}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Lcom/android/email/SecurityPolicy;->getAccountPolicy(Ljava/lang/Long;)Lcom/android/emailcommon/service/PolicySet;

    move-result-object v37

    .line 362
    .local v37, ps:Lcom/android/emailcommon/service/PolicySet;
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mSigners:[Lmyorg/bouncycastle/cms/SignerInformation;

    move-object/from16 v46, v0

    const/16 v47, 0x0

    aget-object v42, v46, v47

    .line 363
    .local v42, si:Lmyorg/bouncycastle/cms/SignerInformation;
    move-object/from16 v0, v37

    iget v0, v0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptionSMIMEAlgorithm:I

    move/from16 v46, v0

    const/16 v47, -0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-le v0, v1, :cond_1b

    move-object/from16 v0, v37

    iget v0, v0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptionSMIMEAlgorithm:I

    move/from16 v38, v0

    .line 365
    .local v38, requiredAlgorithm:I
    :goto_a
    move-object/from16 v0, v37

    iget v0, v0, Lcom/android/emailcommon/service/PolicySet;->mAllowSMIMEEncryptionAlgorithmNegotiation:I

    move/from16 v46, v0

    const/16 v47, -0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-le v0, v1, :cond_1c

    move-object/from16 v0, v37

    iget v8, v0, Lcom/android/emailcommon/service/PolicySet;->mAllowSMIMEEncryptionAlgorithmNegotiation:I

    .line 368
    .local v8, allowNegotiations:I
    :goto_b
    invoke-static/range {v42 .. v42}, Lcom/android/emailcommon/smime/CertificateUtil;->getSignerCapabilities(Lmyorg/bouncycastle/cms/SignerInformation;)Lmyorg/bouncycastle/asn1/ASN1Set;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v38

    invoke-static {v0, v1, v8}, Lcom/android/emailcommon/smime/CertificateUtil;->evaluateBestAlghorithm(Lmyorg/bouncycastle/asn1/ASN1Set;II)Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;

    move-result-object v17

    .line 371
    .local v17, bestAlgorithm:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;
    const-string v46, "SMIMEUtils"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "Encryption algorithm chosen: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    if-eqz v17, :cond_1a

    .line 373
    invoke-virtual/range {v17 .. v17}, Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;->ordinal()I

    move-result v46

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v44

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncryptionAlgorithm:Ljava/lang/Integer;

    .line 376
    :cond_1a
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mSigners:[Lmyorg/bouncycastle/cms/SignerInformation;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    array-length v0, v0

    move/from16 v46, v0

    move/from16 v0, v46

    new-array v0, v0, [Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;

    move-object/from16 v20, v0

    .line 377
    .local v20, certificates:[Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;
    const/16 v30, 0x0

    .restart local v30       #i:I
    :goto_c
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v46, v0

    move/from16 v0, v30

    move/from16 v1, v46

    if-ge v0, v1, :cond_1d

    .line 378
    new-instance v46, Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;

    const/16 v47, 0x0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mSignatures:[Ljava/security/cert/X509Certificate;

    move-object/from16 v48, v0

    aget-object v48, v48, v30

    invoke-direct/range {v46 .. v48}, Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;-><init>(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V

    aput-object v46, v20, v30

    .line 377
    add-int/lit8 v30, v30, 0x1

    goto :goto_c

    .line 363
    .end local v8           #allowNegotiations:I
    .end local v17           #bestAlgorithm:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;
    .end local v20           #certificates:[Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;
    .end local v30           #i:I
    .end local v38           #requiredAlgorithm:I
    :cond_1b
    iget v0, v6, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeEncryptionAlgorithm:I

    move/from16 v38, v0

    goto :goto_a

    .line 365
    .restart local v38       #requiredAlgorithm:I
    :cond_1c
    sget-object v46, Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;->NEGOTIATE_STRONG:Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;

    invoke-virtual/range {v46 .. v46}, Lcom/android/emailcommon/smime/CertificateUtil$AllowSMIMEEncryptionAlgorithmNegotiation;->ordinal()I

    move-result v8

    goto :goto_b

    .line 382
    .restart local v8       #allowNegotiations:I
    .restart local v17       #bestAlgorithm:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;
    .restart local v20       #certificates:[Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;
    .restart local v30       #i:I
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-wide/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    move-object/from16 v48, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v46

    move-object/from16 v3, v48

    invoke-static {v0, v1, v2, v3}, Lcom/android/emailcommon/smime/CertificateUtil;->validateCertificates([Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;JLandroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v21

    .line 384
    .local v21, certsStatuses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    if-eqz v21, :cond_0

    .line 386
    const/16 v30, 0x0

    :goto_d
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v46

    move/from16 v0, v30

    move/from16 v1, v46

    if-ge v0, v1, :cond_1e

    .line 387
    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/lang/Boolean;

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v46

    if-nez v46, :cond_1f

    .line 388
    const/16 v46, 0x0

    move/from16 v0, v46

    move-object/from16 v1, v44

    iput-boolean v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mVerified:Z

    .line 394
    .end local v8           #allowNegotiations:I
    .end local v17           #bestAlgorithm:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;
    .end local v20           #certificates:[Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;
    .end local v21           #certsStatuses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .end local v30           #i:I
    .end local v37           #ps:Lcom/android/emailcommon/service/PolicySet;
    .end local v38           #requiredAlgorithm:I
    .end local v42           #si:Lmyorg/bouncycastle/cms/SignerInformation;
    :cond_1e
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 395
    .local v34, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v34

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v14, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->addUpdateAndDeleteOps(Ljava/util/ArrayList;Landroid/net/Uri;Landroid/content/Context;)V

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v46

    const-string v47, "com.android.email.provider"

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v40

    .line 398
    .local v40, results:[Landroid/content/ContentProviderResult;
    if-eqz v40, :cond_20

    move-object/from16 v0, v40

    array-length v0, v0

    move/from16 v46, v0

    if-lez v46, :cond_20

    .line 399
    const/4 v10, 0x0

    .line 400
    .local v10, attIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v47, v0

    invoke-static/range {v46 .. v48}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v15

    .line 403
    .local v15, atts:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    const/16 v30, 0x0

    .restart local v30       #i:I
    move v11, v10

    .end local v10           #attIndex:I
    .local v11, attIndex:I
    :goto_e
    move-object/from16 v0, v40

    array-length v0, v0

    move/from16 v46, v0

    move/from16 v0, v30

    move/from16 v1, v46

    if-ge v0, v1, :cond_20

    .line 404
    aget-object v39, v40, v30

    .line 405
    .local v39, result:Landroid/content/ContentProviderResult;
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    move-object/from16 v45, v0

    .line 406
    .restart local v45       #uri:Landroid/net/Uri;
    if-eqz v45, :cond_22

    invoke-virtual/range {v45 .. v45}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v46

    const-string v47, "attachment"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v46

    if-eqz v46, :cond_22

    .line 408
    new-instance v26, Lcom/android/email/SMIMEHelperUtils$FakeBodyPart;

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/emailcommon/smime/SMIMEHelper$Message;->mAttachments:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/emailcommon/smime/SMIMEHelper$Attachment;->mAttachmentBody:Ljavax/mail/BodyPart;

    move-object/from16 v46, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v46

    invoke-direct {v0, v1, v2}, Lcom/android/email/SMIMEHelperUtils$FakeBodyPart;-><init>(Lcom/android/email/SMIMEHelperUtils;Ljavax/mail/BodyPart;)V

    .line 411
    .local v26, fbPart:Lcom/android/email/SMIMEHelperUtils$FakeBodyPart;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    move-object/from16 v46, v0

    add-int/lit8 v10, v11, 0x1

    .end local v11           #attIndex:I
    .restart local v10       #attIndex:I
    aget-object v47, v15, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-wide/from16 v48, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v26

    move-object/from16 v2, v47

    move-wide/from16 v3, v48

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/email/LegacyConversions;->saveAttachmentBody(Landroid/content/Context;Lcom/android/emailcommon/mail/Part;Lcom/android/emailcommon/provider/EmailContent$Attachment;J)V

    .line 403
    .end local v26           #fbPart:Lcom/android/email/SMIMEHelperUtils$FakeBodyPart;
    :goto_f
    add-int/lit8 v30, v30, 0x1

    move v11, v10

    .end local v10           #attIndex:I
    .restart local v11       #attIndex:I
    goto :goto_e

    .line 386
    .end local v11           #attIndex:I
    .end local v15           #atts:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v34           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v39           #result:Landroid/content/ContentProviderResult;
    .end local v40           #results:[Landroid/content/ContentProviderResult;
    .end local v45           #uri:Landroid/net/Uri;
    .restart local v8       #allowNegotiations:I
    .restart local v17       #bestAlgorithm:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;
    .restart local v20       #certificates:[Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;
    .restart local v21       #certsStatuses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .restart local v37       #ps:Lcom/android/emailcommon/service/PolicySet;
    .restart local v38       #requiredAlgorithm:I
    .restart local v42       #si:Lmyorg/bouncycastle/cms/SignerInformation;
    :cond_1f
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_d

    .line 416
    .end local v8           #allowNegotiations:I
    .end local v17           #bestAlgorithm:Lcom/android/emailcommon/smime/CertificateUtil$EncryptionAlgorithm;
    .end local v20           #certificates:[Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;
    .end local v21           #certsStatuses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .end local v30           #i:I
    .end local v37           #ps:Lcom/android/emailcommon/service/PolicySet;
    .end local v38           #requiredAlgorithm:I
    .end local v42           #si:Lmyorg/bouncycastle/cms/SignerInformation;
    .restart local v34       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v40       #results:[Landroid/content/ContentProviderResult;
    :cond_20
    const/16 v46, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-direct {v0, v1}, Lcom/android/email/SMIMEHelperUtils;->setDownloadSmimeAttachment(Z)V

    .line 417
    const/16 v46, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-direct {v0, v1}, Lcom/android/email/SMIMEHelperUtils;->markAsRead(Z)V

    .line 419
    const/16 v46, 0x0

    const/16 v47, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v46

    move-wide/from16 v2, p1

    move/from16 v4, v47

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/email/SMIMEHelperUtils;->attachmentProgress(ZJI)V

    .line 421
    invoke-direct/range {p0 .. p0}, Lcom/android/email/SMIMEHelperUtils;->messageChanged()V

    .line 426
    .end local v22           #clipMsg:Ljava/lang/String;
    .end local v28           #hasAttachments:Z
    .end local v34           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v40           #results:[Landroid/content/ContentProviderResult;
    .end local v44           #tmpMsg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SMIMEHelperUtils;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-boolean v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    move/from16 v46, v0

    if-eqz v46, :cond_0

    .line 428
    if-eqz v43, :cond_0

    invoke-virtual/range {v43 .. v43}, Ljava/io/File;->exists()Z

    move-result v46

    if-eqz v46, :cond_0

    .line 429
    invoke-virtual/range {v43 .. v43}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    .line 423
    :cond_21
    const/16 v46, 0x0

    const/16 v47, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v46

    move-wide/from16 v2, p1

    move/from16 v4, v47

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/email/SMIMEHelperUtils;->attachmentProgress(ZJI)V

    .line 424
    const v46, 0x7f0804e2

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-direct {v0, v1}, Lcom/android/email/SMIMEHelperUtils;->displayToast(I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    goto :goto_10

    .restart local v11       #attIndex:I
    .restart local v15       #atts:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .restart local v22       #clipMsg:Ljava/lang/String;
    .restart local v28       #hasAttachments:Z
    .restart local v30       #i:I
    .restart local v34       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v39       #result:Landroid/content/ContentProviderResult;
    .restart local v40       #results:[Landroid/content/ContentProviderResult;
    .restart local v44       #tmpMsg:Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v45       #uri:Landroid/net/Uri;
    :cond_22
    move v10, v11

    .end local v11           #attIndex:I
    .restart local v10       #attIndex:I
    goto :goto_f
.end method

.method public getAttachmentFile(Landroid/net/Uri;)Ljava/io/File;
    .locals 14
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v10

    .line 109
    .local v10, segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 110
    .local v0, accountId:Ljava/lang/String;
    const/4 v11, 0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 111
    .local v7, id:Ljava/lang/String;
    const/4 v11, 0x2

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 116
    .local v5, format:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".db_att"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 118
    .local v9, removeDir:Ljava/io/File;
    :try_start_0
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 120
    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 121
    .local v3, attachments:[Ljava/io/File;
    move-object v1, v3

    .local v1, arr$:[Ljava/io/File;
    array-length v8, v1

    .local v8, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v8, :cond_1

    aget-object v2, v1, v6

    .line 122
    .local v2, attachment:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 123
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 121
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 126
    .end local v2           #attachment:Ljava/io/File;
    :cond_1
    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v1           #arr$:[Ljava/io/File;
    .end local v3           #attachments:[Ljava/io/File;
    .end local v6           #i$:I
    .end local v8           #len$:I
    :cond_2
    :goto_1
    new-instance v4, Ljava/io/File;

    iget-object v11, p0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".db_att"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v4, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 132
    .local v4, directory:Ljava/io/File;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v11

    .line 128
    .end local v4           #directory:Ljava/io/File;
    :catch_0
    move-exception v11

    goto :goto_1
.end method

.method public handleSmimeMessage(Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 21
    .parameter "message"

    .prologue
    .line 470
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/SMIMEHelperUtils;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 471
    move-object/from16 v0, p1

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 473
    .local v7, mAccountId:J
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mEncrypted:Z

    if-eqz v2, :cond_4

    .line 476
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v2

    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/email/SecurityPolicy;->getAccountPolicy(Ljava/lang/Long;)Lcom/android/emailcommon/service/PolicySet;

    move-result-object v20

    .line 478
    .local v20, ps:Lcom/android/emailcommon/service/PolicySet;
    if-eqz v20, :cond_0

    .line 479
    move-object/from16 v0, v20

    iget-boolean v2, v0, Lcom/android/emailcommon/service/PolicySet;->mAllowSMIMESoftCerts:Z

    if-nez v2, :cond_0

    .line 480
    const v2, 0x7f0804e5

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/email/SMIMEHelperUtils;->displayToast(I)V

    .line 481
    invoke-direct/range {p0 .. p0}, Lcom/android/email/SMIMEHelperUtils;->finish()V

    .line 534
    .end local v20           #ps:Lcom/android/emailcommon/service/PolicySet;
    :goto_0
    return-void

    .line 488
    .restart local v20       #ps:Lcom/android/emailcommon/service/PolicySet;
    :cond_0
    const/16 v19, 0x0

    .line 490
    .local v19, pKey:Ljava/security/PrivateKey;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    invoke-static {v2, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v15

    .line 491
    .local v15, acc:Lcom/android/emailcommon/provider/EmailContent$Account;
    new-instance v18, Lcom/android/emailcommon/smime/CertificateMgr;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/email/EmailUtility;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/SMIMEHelperUtils;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-direct {v0, v2, v3}, Lcom/android/emailcommon/smime/CertificateMgr;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 493
    .local v18, mgr:Lcom/android/emailcommon/smime/CertificateMgr;
    iget-object v2, v15, Lcom/android/emailcommon/provider/EmailContent$Account;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/smime/CertificateMgr;->getPrivateKey(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/security/PrivateKey;

    move-object/from16 v19, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    .end local v15           #acc:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v18           #mgr:Lcom/android/emailcommon/smime/CertificateMgr;
    :goto_1
    if-nez v19, :cond_1

    .line 498
    const v2, 0x7f0804e4

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/email/SMIMEHelperUtils;->displayToast(I)V

    .line 499
    invoke-direct/range {p0 .. p0}, Lcom/android/email/SMIMEHelperUtils;->finish()V

    goto :goto_0

    .line 494
    :catch_0
    move-exception v17

    .line 495
    .local v17, ex:Ljava/lang/Exception;
    const-string v2, "SMIMEUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception caught: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 503
    .end local v17           #ex:Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/email/SMIMEHelperUtils;->setDownloadSmimeAttachment(Z)V

    .line 505
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 510
    const v2, 0x7f08008d

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/email/SMIMEHelperUtils;->displayToast(I)V

    goto :goto_0

    .line 514
    :cond_2
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/email/SMIMEHelperUtils;->getSmimeAttachmentInfo(J)Lcom/android/email/AttachmentInfo;

    move-result-object v16

    .line 516
    .local v16, attachment:Lcom/android/email/AttachmentInfo;
    if-nez v16, :cond_3

    .line 517
    const v2, 0x7f0804e3

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/email/SMIMEHelperUtils;->displayToast(I)V

    goto/16 :goto_0

    .line 521
    :cond_3
    move-object/from16 v0, v16

    iget-wide v2, v0, Lcom/android/email/AttachmentInfo;->mId:J

    const/4 v4, 0x1

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/email/SMIMEHelperUtils;->updateAttachmentCallback(JZLjava/lang/String;)V

    .line 528
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/SMIMEHelperUtils;->mController:Lcom/android/email/Controller;

    move-object/from16 v0, v16

    iget-wide v3, v0, Lcom/android/email/AttachmentInfo;->mId:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/SMIMEHelperUtils;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v5, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/android/email/Controller;->loadAttachment(JJJI)V

    goto/16 :goto_0

    .line 531
    .end local v16           #attachment:Lcom/android/email/AttachmentInfo;
    .end local v19           #pKey:Ljava/security/PrivateKey;
    .end local v20           #ps:Lcom/android/emailcommon/service/PolicySet;
    :cond_4
    const-wide/16 v10, -0x1

    const-wide/16 v12, -0x1

    const/4 v14, 0x0

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v14}, Lcom/android/email/SMIMEHelperUtils;->continueHandlingSmimeMessage(JJZ)V

    goto/16 :goto_0
.end method

.method public isActiveResultCallback(Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;)Z
    .locals 2
    .parameter "listener"

    .prologue
    .line 732
    iget-object v1, p0, Lcom/android/email/SMIMEHelperUtils;->mListeners:Ljava/util/HashSet;

    monitor-enter v1

    .line 733
    :try_start_0
    iget-object v0, p0, Lcom/android/email/SMIMEHelperUtils;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 734
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeResultCallback(Lcom/android/email/SMIMEHelperUtils$SMIMEUtilsCallback;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 744
    iget-object v1, p0, Lcom/android/email/SMIMEHelperUtils;->mListeners:Ljava/util/HashSet;

    monitor-enter v1

    .line 745
    :try_start_0
    iget-object v0, p0, Lcom/android/email/SMIMEHelperUtils;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 746
    monitor-exit v1

    .line 747
    return-void

    .line 746
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

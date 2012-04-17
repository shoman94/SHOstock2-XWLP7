.class Lcom/android/email/service/AttachmentDownloadService$ServiceCallback;
.super Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;
.source "AttachmentDownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/service/AttachmentDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/service/AttachmentDownloadService;


# direct methods
.method private constructor <init>(Lcom/android/email/service/AttachmentDownloadService;)V
    .locals 0
    .parameter

    .prologue
    .line 708
    iput-object p1, p0, Lcom/android/email/service/AttachmentDownloadService$ServiceCallback;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    invoke-direct {p0}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/service/AttachmentDownloadService;Lcom/android/email/service/AttachmentDownloadService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 708
    invoke-direct {p0, p1}, Lcom/android/email/service/AttachmentDownloadService$ServiceCallback;-><init>(Lcom/android/email/service/AttachmentDownloadService;)V

    return-void
.end method


# virtual methods
.method public deviceInfoStatus(I)V
    .locals 0
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 807
    return-void
.end method

.method public emptyTrashStatus(JII)V
    .locals 0
    .parameter "accountId"
    .parameter "statusCode"
    .parameter "progress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 784
    return-void
.end method

.method public folderCommandStatus(IJI)V
    .locals 0
    .parameter "command"
    .parameter "mailboxId"
    .parameter "statusCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 778
    return-void
.end method

.method public loadAttachmentStatus(JJII)V
    .locals 6
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "statusCode"
    .parameter "progress"

    .prologue
    .line 712
    iget-object v2, p0, Lcom/android/email/service/AttachmentDownloadService$ServiceCallback;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    iget-object v3, v2, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    monitor-enter v3

    .line 713
    :try_start_0
    iget-object v2, p0, Lcom/android/email/service/AttachmentDownloadService$ServiceCallback;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    iget-object v2, v2, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    #calls: Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->getDownloadInProgress(J)Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    invoke-static {v2, p3, p4}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->access$600(Lcom/android/email/service/AttachmentDownloadService$DownloadSet;J)Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;

    move-result-object v1

    .line 714
    .local v1, req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    if-eqz v1, :cond_1

    .line 715
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 717
    packed-switch p5, :pswitch_data_0

    .line 725
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 728
    .local v0, code:Ljava/lang/String;
    :goto_0
    const/4 v2, 0x1

    if-eq p5, v2, :cond_2

    .line 729
    const-string v2, "AttachmentService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">> Attachment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    .end local v0           #code:Ljava/lang/String;
    :cond_0
    :goto_1
    iput p5, v1, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->lastStatusCode:I

    .line 735
    iput p6, v1, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->lastProgress:I

    .line 736
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->lastCallbackTime:J

    .line 738
    :cond_1
    packed-switch p5, :pswitch_data_1

    .line 742
    iget-object v2, p0, Lcom/android/email/service/AttachmentDownloadService$ServiceCallback;->this$0:Lcom/android/email/service/AttachmentDownloadService;

    iget-object v2, v2, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    invoke-virtual {v2, p3, p4, p5}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->endDownload(JI)V

    .line 745
    :pswitch_0
    monitor-exit v3

    .line 746
    return-void

    .line 719
    :pswitch_1
    const-string v0, "Success"

    .line 720
    .restart local v0       #code:Ljava/lang/String;
    goto :goto_0

    .line 722
    .end local v0           #code:Ljava/lang/String;
    :pswitch_2
    const-string v0, "In progress"

    .line 723
    .restart local v0       #code:Ljava/lang/String;
    goto :goto_0

    .line 730
    :cond_2
    iget v2, v1, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->lastProgress:I

    add-int/lit8 v2, v2, 0xf

    if-lt p6, v2, :cond_0

    .line 731
    const-string v2, "AttachmentService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">> Attachment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 745
    .end local v0           #code:Ljava/lang/String;
    .end local v1           #req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 717
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 738
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public loadMoreStatus(JII)V
    .locals 0
    .parameter "messageId"
    .parameter "statusCode"
    .parameter "progress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 790
    return-void
.end method

.method public moveConvAlwaysStatus([BIII)V
    .locals 0
    .parameter "convId"
    .parameter "statusCode"
    .parameter "progress"
    .parameter "ignore"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 796
    return-void
.end method

.method public moveItemStatus(JI)V
    .locals 0
    .parameter "mailboxId"
    .parameter "statusCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 766
    return-void
.end method

.method public oOOfStatus(JIILandroid/os/Bundle;)V
    .locals 0
    .parameter "accountId"
    .parameter "statusCode"
    .parameter "progress"
    .parameter "oooResults"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 772
    return-void
.end method

.method public refreshIRMTemplatesStatus(JII)V
    .locals 0
    .parameter "accountId"
    .parameter "Status"
    .parameter "Progress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 816
    return-void
.end method

.method public sendMeetingEditedResponseCallback(ZJJ)V
    .locals 0
    .parameter "success"
    .parameter "messageId"
    .parameter "draftId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 824
    return-void
.end method

.method public sendMessageStatus(JLjava/lang/String;II)V
    .locals 0
    .parameter "messageId"
    .parameter "subject"
    .parameter "statusCode"
    .parameter "progress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 751
    return-void
.end method

.method public setDeviceInfoStatus(JII)V
    .locals 0
    .parameter "accountId"
    .parameter "statusCode"
    .parameter "progress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 802
    return-void
.end method

.method public syncMailboxListStatus(JII)V
    .locals 0
    .parameter "accountId"
    .parameter "statusCode"
    .parameter "progress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 756
    return-void
.end method

.method public syncMailboxStatus(JII)V
    .locals 0
    .parameter "mailboxId"
    .parameter "statusCode"
    .parameter "progress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 761
    return-void
.end method

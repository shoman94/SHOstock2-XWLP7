.class Lcom/android/email/Controller$17;
.super Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;


# direct methods
.method constructor <init>(Lcom/android/email/Controller;)V
    .locals 0
    .parameter

    .prologue
    .line 5931
    iput-object p1, p0, Lcom/android/email/Controller$17;->this$0:Lcom/android/email/Controller;

    invoke-direct {p0}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;-><init>()V

    return-void
.end method

.method private declared-synchronized broadcastCallback(Lcom/android/email/Controller$ServiceCallbackWrapper;)V
    .locals 3
    .parameter "wrapper"

    .prologue
    .line 5939
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/email/Controller;->access$1100()Landroid/os/RemoteCallbackList;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5942
    invoke-static {}, Lcom/android/email/Controller;->access$1100()Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 5943
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 5945
    :try_start_1
    invoke-static {}, Lcom/android/email/Controller;->access$1100()Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/service/IEmailServiceCallback;

    invoke-interface {p1, v2}, Lcom/android/email/Controller$ServiceCallbackWrapper;->call(Lcom/android/emailcommon/service/IEmailServiceCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5943
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5949
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/android/email/Controller;->access$1100()Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5951
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_1
    monitor-exit p0

    return-void

    .line 5939
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 5946
    .restart local v0       #count:I
    .restart local v1       #i:I
    :catch_0
    move-exception v2

    goto :goto_1
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
    .line 6020
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
    .line 5995
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
    .line 5990
    return-void
.end method

.method public loadAttachmentStatus(JJII)V
    .locals 8
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "status"
    .parameter "progress"

    .prologue
    .line 5955
    new-instance v0, Lcom/android/email/Controller$17$1;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/email/Controller$17$1;-><init>(Lcom/android/email/Controller$17;JJII)V

    invoke-direct {p0, v0}, Lcom/android/email/Controller$17;->broadcastCallback(Lcom/android/email/Controller$ServiceCallbackWrapper;)V

    .line 5961
    return-void
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
    .line 6000
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
    .line 6005
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
    .line 5980
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
    .line 5985
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
    .line 6027
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
    .line 6037
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
    .line 5966
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
    .line 6010
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
    .line 5971
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
    .line 5976
    return-void
.end method

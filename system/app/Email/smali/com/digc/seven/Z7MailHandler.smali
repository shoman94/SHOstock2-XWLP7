.class public Lcom/digc/seven/Z7MailHandler;
.super Ljava/lang/Object;
.source "Z7MailHandler.java"


# static fields
.field private static ca:Lcom/android/email/Email;

.field private static z7Handler:Lcom/digc/seven/Z7MailHandler;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "Z7MailHandler"

    iput-object v0, p0, Lcom/digc/seven/Z7MailHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lcom/android/email/Email;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    return-object v0
.end method

.method public static getAccountBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .parameter "id"
    .parameter "pw"
    .parameter "provider"
    .parameter "ispType"
    .parameter "url"

    .prologue
    .line 643
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 644
    .local v0, params:Landroid/os/Bundle;
    const-string v1, "username"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    const-string v1, "password"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    const-string v1, "_connector"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    const-string v1, "isp_type"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 649
    const/4 v1, 0x6

    if-ne p3, v1, :cond_0

    .line 650
    const-string v1, "email"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    :cond_0
    if-eqz p4, :cond_1

    .line 652
    const-string v1, "url"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    const-string v1, "ignore_cert"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 657
    :goto_0
    return-object v0

    .line 655
    :cond_1
    const-string v1, "ignore_cert"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/digc/seven/Z7MailHandler;
    .locals 1
    .parameter "ctx"

    .prologue
    .line 54
    sget-object v0, Lcom/digc/seven/Z7MailHandler;->z7Handler:Lcom/digc/seven/Z7MailHandler;

    if-nez v0, :cond_0

    .line 55
    invoke-static {p0}, Lcom/android/email/Email;->getApplication(Landroid/content/Context;)Lcom/android/email/Email;

    move-result-object v0

    sput-object v0, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    .line 56
    new-instance v0, Lcom/digc/seven/Z7MailHandler;

    invoke-direct {v0}, Lcom/digc/seven/Z7MailHandler;-><init>()V

    sput-object v0, Lcom/digc/seven/Z7MailHandler;->z7Handler:Lcom/digc/seven/Z7MailHandler;

    .line 58
    :cond_0
    sget-object v0, Lcom/digc/seven/Z7MailHandler;->z7Handler:Lcom/digc/seven/Z7MailHandler;

    return-object v0
.end method


# virtual methods
.method public addAccount(Landroid/os/Bundle;)I
    .locals 5
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 270
    const/4 v1, 0x0

    .line 271
    .local v1, rValue:I
    sget-object v2, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v2}, Lcom/android/email/Email;->isServiceConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 273
    :try_start_0
    sget-object v2, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v2}, Lcom/android/email/Email;->getIService()Lcom/seven/Z7/common/IZ7Service;

    move-result-object v2

    invoke-interface {v2}, Lcom/seven/Z7/common/IZ7Service;->isNetworkAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 274
    sget-object v2, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v2}, Lcom/android/email/Email;->getIService()Lcom/seven/Z7/common/IZ7Service;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/seven/Z7/common/IZ7Service;->addAccount(Landroid/os/Bundle;)I

    move-result v1

    .line 275
    const-string v2, "Z7MailHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add count result :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :cond_0
    return v1

    .line 277
    :catch_0
    move-exception v0

    .line 279
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 280
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2

    .line 283
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const-string v2, "Z7MailHandler"

    const-string v3, "Not connected to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2
.end method

.method public cancelDownloadMailAttachment(III)V
    .locals 3
    .parameter "accountId"
    .parameter "messageId"
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 576
    :try_start_0
    sget-object v1, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v1}, Lcom/android/email/Email;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 577
    sget-object v1, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v1}, Lcom/android/email/Email;->getIService()Lcom/seven/Z7/common/IZ7Service;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/seven/Z7/common/IZ7Service;->cancelDownloadMailAttachment(III)V

    .line 587
    return-void

    .line 579
    :cond_0
    const-string v1, "Z7MailHandler"

    const-string v2, "Not connected to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    :catch_0
    move-exception v0

    .line 583
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Z7MailHandler"

    const-string v2, "Cancel failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 584
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1
.end method

.method public cancelDownloadMailBody(IJI)V
    .locals 3
    .parameter "accountId"
    .parameter "messageId"
    .parameter "taskId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 525
    :try_start_0
    sget-object v1, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v1}, Lcom/android/email/Email;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 526
    sget-object v1, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v1}, Lcom/android/email/Email;->getIService()Lcom/seven/Z7/common/IZ7Service;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/seven/Z7/common/IZ7Service;->cancelDownloadMailBody(IJI)V

    .line 537
    return-void

    .line 530
    :cond_0
    const-string v1, "Z7MailHandler"

    const-string v2, "Not connected to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Z7MailHandler"

    const-string v2, "cancelDownloadMailBody()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 535
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1
.end method

.method public cancelTask(I)V
    .locals 3
    .parameter "taskId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 113
    sget-object v1, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v1}, Lcom/android/email/Email;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    :try_start_0
    sget-object v1, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v1}, Lcom/android/email/Email;->getIService()Lcom/seven/Z7/common/IZ7Service;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/seven/Z7/common/IZ7Service;->cancelTask(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 118
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1

    .line 121
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const-string v1, "Z7MailHandler"

    const-string v2, "Not connected to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1
.end method

.method public checkContentUpdates(I)I
    .locals 3
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 157
    sget-object v1, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v1}, Lcom/android/email/Email;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    :try_start_0
    sget-object v1, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v1}, Lcom/android/email/Email;->getIService()Lcom/seven/Z7/common/IZ7Service;

    move-result-object v1

    const/16 v2, 0x100

    invoke-interface {v1, p1, v2}, Lcom/seven/Z7/common/IZ7Service;->checkContentUpdates(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    const/4 v1, 0x0

    return v1

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Z7MailHandler"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1

    .line 165
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const-string v1, "Z7MailHandler"

    const-string v2, "Not connected to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1
.end method

.method public clearDownloadNotification(II)V
    .locals 3
    .parameter "messageId"
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 690
    sget-object v1, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v1}, Lcom/android/email/Email;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 692
    :try_start_0
    sget-object v1, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v1}, Lcom/android/email/Email;->getIService()Lcom/seven/Z7/common/IZ7Service;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/seven/Z7/common/IZ7Service;->clearDownloadNotification(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 703
    return-void

    .line 693
    :catch_0
    move-exception v0

    .line 695
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 696
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1

    .line 699
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const-string v1, "Z7MailHandler"

    const-string v2, "Not connected to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1
.end method

.method public delete(IIIJ)V
    .locals 7
    .parameter "accountId"
    .parameter "contentId"
    .parameter "folderId"
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 352
    const-string v0, "Z7MailHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete mail :256:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :try_start_0
    sget-object v0, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v0}, Lcom/android/email/Email;->isServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    sget-object v0, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v0}, Lcom/android/email/Email;->getIService()Lcom/seven/Z7/common/IZ7Service;

    move-result-object v0

    const/16 v2, 0x100

    move v1, p1

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/seven/Z7/common/IZ7Service;->delete(IIIJ)V

    .line 369
    return-void

    .line 360
    :cond_0
    const-string v0, "Z7MailHandler"

    const-string v1, "Not connected to service"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :catch_0
    move-exception v6

    .line 365
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 366
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public downloadMailAttachment(IIILjava/lang/String;)V
    .locals 3
    .parameter "accountId"
    .parameter "messageId"
    .parameter "position"
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 550
    sget-object v1, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v1}, Lcom/android/email/Email;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 552
    :try_start_0
    sget-object v1, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v1}, Lcom/android/email/Email;->getIService()Lcom/seven/Z7/common/IZ7Service;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/seven/Z7/common/IZ7Service;->downloadMailAttachment(IIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 563
    return-void

    .line 553
    :catch_0
    move-exception v0

    .line 555
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 556
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1

    .line 559
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const-string v1, "Z7MailHandler"

    const-string v2, "Not connected to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1
.end method

.method public downloadMailBody(IJIZLjava/lang/String;)I
    .locals 9
    .parameter "accountId"
    .parameter "messageId"
    .parameter "chunkSize"
    .parameter "downloadFully"
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 495
    const/4 v8, 0x0

    .line 496
    .local v8, rValue:I
    sget-object v0, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v0}, Lcom/android/email/Email;->isServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    :try_start_0
    sget-object v0, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v0}, Lcom/android/email/Email;->getIService()Lcom/seven/Z7/common/IZ7Service;

    move-result-object v0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/seven/Z7/common/IZ7Service;->downloadMailBody(IJIZLjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 511
    return v8

    .line 501
    :catch_0
    move-exception v7

    .line 503
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 504
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 508
    .end local v7           #e:Ljava/lang/Exception;
    :cond_0
    const-string v0, "Z7MailHandler"

    const-string v1, "Not connected to service"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public downloadMailContentAttachments(II)V
    .locals 3
    .parameter "accountId"
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 598
    :try_start_0
    sget-object v1, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v1}, Lcom/android/email/Email;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 600
    sget-object v1, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v1}, Lcom/android/email/Email;->getIService()Lcom/seven/Z7/common/IZ7Service;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/seven/Z7/common/IZ7Service;->downloadMailContentAttachments(II)V

    .line 609
    return-void

    .line 602
    :cond_0
    const-string v1, "Z7MailHandler"

    const-string v2, "Not connected to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 605
    :catch_0
    move-exception v0

    .line 606
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Z7MailHandler"

    const-string v2, "downloadMailContentAttachments"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 607
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1
.end method

.method public getAvailableConnectors(Landroid/os/Handler;Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnKeyListener;Ljava/lang/Runnable;)V
    .locals 8
    .parameter "mHandler"
    .parameter "act"
    .parameter "listener"
    .parameter "keyListener"
    .parameter "runnable"

    .prologue
    .line 225
    sget-object v7, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    new-instance v0, Lcom/digc/seven/Z7MailHandler$2;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/digc/seven/Z7MailHandler$2;-><init>(Lcom/digc/seven/Z7MailHandler;Ljava/lang/Runnable;Landroid/os/Handler;Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnKeyListener;)V

    invoke-virtual {v7, p1, v0}, Lcom/android/email/Email;->callWhenServiceConnected(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 258
    return-void
.end method

.method public isNetworkAvailable()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 133
    const/4 v1, 0x0

    .line 134
    .local v1, rValue:Z
    sget-object v2, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v2}, Lcom/android/email/Email;->isServiceConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    :try_start_0
    sget-object v2, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v2}, Lcom/android/email/Email;->getIService()Lcom/seven/Z7/common/IZ7Service;

    move-result-object v2

    invoke-interface {v2}, Lcom/seven/Z7/common/IZ7Service;->isNetworkAvailable()Z

    move-result v1

    .line 137
    const-string v2, "Z7MailHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNetworkStatus :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    return v1

    .line 138
    :catch_0
    move-exception v0

    .line 140
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 141
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2

    .line 144
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const-string v2, "Z7MailHandler"

    const-string v3, "Not connected to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2
.end method

.method public markFavorite([Lcom/seven/Z7/common/Z7EmailId;Z)V
    .locals 3
    .parameter "emails"
    .parameter "isFavorite"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 382
    :try_start_0
    sget-object v1, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v1}, Lcom/android/email/Email;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 383
    sget-object v1, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v1}, Lcom/android/email/Email;->getIService()Lcom/seven/Z7/common/IZ7Service;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/seven/Z7/common/IZ7Service;->markFavorite([Lcom/seven/Z7/common/Z7EmailId;Z)V

    .line 394
    return-void

    .line 385
    :cond_0
    const-string v1, "Z7MailHandler"

    const-string v2, "Not connected to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :catch_0
    move-exception v0

    .line 390
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 391
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1
.end method

.method public markRead(IIJZ)V
    .locals 7
    .parameter "accountId"
    .parameter "folderId"
    .parameter "msgId"
    .parameter "isRead"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 409
    :try_start_0
    sget-object v0, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v0}, Lcom/android/email/Email;->isServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    const-string v0, "Z7MailHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "markRead :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    sget-object v0, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v0}, Lcom/android/email/Email;->getIService()Lcom/seven/Z7/common/IZ7Service;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/seven/Z7/common/IZ7Service;->markRead(IIJZ)V

    .line 422
    return-void

    .line 413
    :cond_0
    const-string v0, "Z7MailHandler"

    const-string v1, "Not connected to service"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :catch_0
    move-exception v6

    .line 418
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 419
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public moveMail(IIJI)V
    .locals 7
    .parameter "accountId"
    .parameter "sourceFolder"
    .parameter "messageId"
    .parameter "destinationFolder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 436
    :try_start_0
    sget-object v0, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v0}, Lcom/android/email/Email;->isServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    sget-object v0, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v0}, Lcom/android/email/Email;->getIService()Lcom/seven/Z7/common/IZ7Service;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/seven/Z7/common/IZ7Service;->moveMail(IIJI)V

    .line 448
    return-void

    .line 439
    :cond_0
    const-string v0, "Z7MailHandler"

    const-string v1, "Not connected to service"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    :catch_0
    move-exception v6

    .line 444
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 445
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public registerListener(Lcom/android/email/Email$Z7ConnectionListener;)V
    .locals 1
    .parameter "mListener"

    .prologue
    .line 94
    sget-object v0, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v0, p1}, Lcom/android/email/Email;->registerListener(Lcom/android/email/Email$Z7ConnectionListener;)V

    .line 95
    return-void
.end method

.method public relogin(ILjava/lang/String;)I
    .locals 4
    .parameter "accountId"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 298
    const/4 v1, -0x1

    .line 299
    .local v1, rValue:I
    sget-object v2, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v2}, Lcom/android/email/Email;->isServiceConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 301
    :try_start_0
    sget-object v2, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v2}, Lcom/android/email/Email;->getIService()Lcom/seven/Z7/common/IZ7Service;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/seven/Z7/common/IZ7Service;->relogin(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 310
    return v1

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 304
    throw v0

    .line 307
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v2, "Z7MailHandler"

    const-string v3, "Not connected to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2
.end method

.method public removeAccount(Landroid/os/Handler;ILandroid/app/Activity;)V
    .locals 2
    .parameter "handler"
    .parameter "accountId"
    .parameter "act"

    .prologue
    .line 69
    const-string v0, "Z7MailHandler"

    const-string v1, "begin removeAccount"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    sget-object v0, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    new-instance v1, Lcom/digc/seven/Z7MailHandler$1;

    invoke-direct {v1, p0, p2, p3}, Lcom/digc/seven/Z7MailHandler$1;-><init>(Lcom/digc/seven/Z7MailHandler;ILandroid/app/Activity;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/email/Email;->callWhenServiceConnected(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 86
    return-void
.end method

.method public sendMessage(Lcom/android/emailcommon/provider/EmailContent$Message;[Lcom/android/emailcommon/provider/EmailContent$Attachment;I)I
    .locals 7
    .parameter "basicMessageDraft"
    .parameter "attachments"
    .parameter "originalAction"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 461
    const/4 v2, 0x0

    .line 462
    .local v2, ret:I
    sget-object v3, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v3}, Lcom/android/email/Email;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1, p2, p3}, Lcom/digc/seven/SevenMessageManager;->saveforSeven(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;[Lcom/android/emailcommon/provider/EmailContent$Attachment;I)I

    move-result v1

    .line 465
    .local v1, mailId:I
    :try_start_0
    sget-object v3, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v3}, Lcom/android/email/Email;->isServiceConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 466
    sget-object v3, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v3}, Lcom/android/email/Email;->getIService()Lcom/seven/Z7/common/IZ7Service;

    move-result-object v3

    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSevenAccountKey:J

    long-to-int v4, v4

    const/16 v5, 0x100

    const/4 v6, 0x2

    invoke-interface {v3, v4, v5, v6, v1}, Lcom/seven/Z7/common/IZ7Service;->sendMessage(IIII)I

    move-result v2

    .line 469
    const-string v3, "soundchan"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Z7MailHandler: z7service sendMessage result= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    return v2

    .line 471
    :cond_0
    const-string v3, "Z7MailHandler"

    const-string v4, "Not connected to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    new-instance v3, Landroid/os/RemoteException;

    invoke-direct {v3}, Landroid/os/RemoteException;-><init>()V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    :catch_0
    move-exception v0

    .line 476
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 477
    new-instance v3, Landroid/os/RemoteException;

    invoke-direct {v3}, Landroid/os/RemoteException;-><init>()V

    throw v3
.end method

.method public setMookSevenNoti()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 664
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 666
    .local v0, changedSettings:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "checkbox_beep"

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, v4}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    const-string v2, "checkbox_visual"

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, v4}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    const-string v2, "checkbox_vibrate"

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, v4}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v2, v0}, Lcom/digc/seven/Z7MailHandler;->updateSettings(ILjava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    :goto_0
    return-void

    .line 674
    :catch_0
    move-exception v1

    .line 676
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "###"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setServiceState(III)I
    .locals 3
    .parameter "accountId"
    .parameter "contentId"
    .parameter "toState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 181
    sget-object v1, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v1}, Lcom/android/email/Email;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    :try_start_0
    sget-object v1, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v1}, Lcom/android/email/Email;->getIService()Lcom/seven/Z7/common/IZ7Service;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/seven/Z7/common/IZ7Service;->setServiceState(III)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Z7MailHandler"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1

    .line 189
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const-string v1, "Z7MailHandler"

    const-string v2, "Not connected to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1
.end method

.method public unRegisterListener(Lcom/android/email/Email$Z7ConnectionListener;)V
    .locals 1
    .parameter "mListener"

    .prologue
    .line 103
    sget-object v0, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v0, p1}, Lcom/android/email/Email;->unregisterListener(Lcom/android/email/Email$Z7ConnectionListener;)V

    .line 104
    return-void
.end method

.method public updateFolderSyncModes(ILjava/util/Map;)V
    .locals 3
    .parameter "accountId"
    .parameter "newFolderSyncModes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 619
    :try_start_0
    sget-object v1, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v1}, Lcom/android/email/Email;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 620
    sget-object v1, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v1}, Lcom/android/email/Email;->getIService()Lcom/seven/Z7/common/IZ7Service;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/seven/Z7/common/IZ7Service;->updateFolderSyncModes(ILjava/util/Map;)V

    .line 629
    return-void

    .line 622
    :cond_0
    const-string v1, "Z7MailHandler"

    const-string v2, "Not connected to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 625
    :catch_0
    move-exception v0

    .line 626
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Z7MailHandler"

    const-string v2, "Failed to update folder sync modes"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 627
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1
.end method

.method public updateSettings(ILjava/util/Map;)V
    .locals 3
    .parameter "accountId"
    .parameter "changedSettings"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 203
    sget-object v1, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v1}, Lcom/android/email/Email;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    :try_start_0
    sget-object v1, Lcom/digc/seven/Z7MailHandler;->ca:Lcom/android/email/Email;

    invoke-virtual {v1}, Lcom/android/email/Email;->getIService()Lcom/seven/Z7/common/IZ7Service;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/seven/Z7/common/IZ7Service;->updateSettings(ILjava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 208
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 209
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1

    .line 212
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const-string v1, "Z7MailHandler"

    const-string v2, "Not connected to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1
.end method

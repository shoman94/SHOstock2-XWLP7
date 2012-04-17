.class public Lcom/android/email/NotificationController;
.super Lcom/android/email/variant/NotificationController;
.source "NotificationController.java"


# static fields
.field protected static sInstance:Lcom/android/email/NotificationController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/email/Clock;)V
    .locals 0
    .parameter "context"
    .parameter "clock"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/email/variant/NotificationController;-><init>(Landroid/content/Context;Lcom/android/email/Clock;)V

    .line 34
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;
    .locals 3
    .parameter "context"

    .prologue
    .line 38
    const-class v1, Lcom/android/email/NotificationController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/email/NotificationController;->sInstance:Lcom/android/email/NotificationController;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/android/email/NotificationController;

    sget-object v2, Lcom/android/email/Clock;->INSTANCE:Lcom/android/email/Clock;

    invoke-direct {v0, p0, v2}, Lcom/android/email/NotificationController;-><init>(Landroid/content/Context;Lcom/android/email/Clock;)V

    sput-object v0, Lcom/android/email/NotificationController;->sInstance:Lcom/android/email/NotificationController;

    .line 41
    :cond_0
    sget-object v0, Lcom/android/email/NotificationController;->sInstance:Lcom/android/email/NotificationController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public cancelLoginFailedNotification(J)V
    .locals 0
    .parameter "accountId"

    .prologue
    .line 45
    invoke-super {p0, p1, p2}, Lcom/android/email/variant/NotificationController;->cancelLoginFailedNotification(J)V

    .line 46
    return-void
.end method

.method public cancelNewMessageNotification(J)V
    .locals 0
    .parameter "accountId"

    .prologue
    .line 53
    invoke-super {p0, p1, p2}, Lcom/android/email/variant/NotificationController;->cancelNewMessageNotification(J)V

    .line 54
    return-void
.end method

.method public cancelNotification(I)V
    .locals 0
    .parameter "notificationId"

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/android/email/variant/NotificationController;->cancelNotification(I)V

    .line 74
    return-void
.end method

.method public postAccountNotification(Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V
    .locals 0
    .parameter "account"
    .parameter "ticker"
    .parameter "contentTitle"
    .parameter "contentText"
    .parameter "intent"
    .parameter "notificationId"

    .prologue
    .line 68
    invoke-super/range {p0 .. p6}, Lcom/android/email/variant/NotificationController;->postAccountNotification(Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    .line 70
    return-void
.end method

.method public showDownloadForwardFailedNotification(Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 0
    .parameter "attachment"

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/android/email/variant/NotificationController;->showDownloadForwardFailedNotification(Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    .line 50
    return-void
.end method

.method public showLoginFailedNotification(J)V
    .locals 0
    .parameter "accountId"

    .prologue
    .line 77
    invoke-super {p0, p1, p2}, Lcom/android/email/variant/NotificationController;->showLoginFailedNotification(J)V

    .line 78
    return-void
.end method

.method public showNewMessageNotification(JII)V
    .locals 0
    .parameter "accountId"
    .parameter "unseenMessageCount"
    .parameter "justFetchedCount"

    .prologue
    .line 58
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/email/variant/NotificationController;->showNewMessageNotification(JII)V

    .line 59
    return-void
.end method

.method public showSendFailedNotification(JJI)V
    .locals 0
    .parameter "accountId"
    .parameter "messageId"
    .parameter "FailType"

    .prologue
    .line 63
    invoke-super/range {p0 .. p5}, Lcom/android/email/variant/NotificationController;->showSendFailedNotification(JJI)V

    .line 64
    return-void
.end method

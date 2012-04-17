.class Lcom/android/email/service/AccountService$1;
.super Lcom/android/emailcommon/service/IAccountService$Stub;
.source "AccountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/service/AccountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/service/AccountService;


# direct methods
.method constructor <init>(Lcom/android/email/service/AccountService;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/email/service/AccountService$1;->this$0:Lcom/android/email/service/AccountService;

    invoke-direct {p0}, Lcom/android/emailcommon/service/IAccountService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public accountDeleted()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/email/service/AccountService$1;->this$0:Lcom/android/email/service/AccountService;

    #getter for: Lcom/android/email/service/AccountService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/service/AccountService;->access$000(Lcom/android/email/service/AccountService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/service/MailService;->accountDeleted(Landroid/content/Context;)V

    .line 79
    return-void
.end method

.method public getAccountColor(J)I
    .locals 1
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/email/service/AccountService$1;->this$0:Lcom/android/email/service/AccountService;

    #getter for: Lcom/android/email/service/AccountService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/service/AccountService;->access$000(Lcom/android/email/service/AccountService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/ResourceHelper;->getInstance(Landroid/content/Context;)Lcom/android/email/ResourceHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/ResourceHelper;->getAccountColor(J)I

    move-result v0

    return v0
.end method

.method public getConfigurationData(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .parameter "accountType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 89
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "com.android.email.EXCHANGE_CONFIGURATION_USE_ALTERNATE_STRINGS"

    iget-object v2, p0, Lcom/android/email/service/AccountService$1;->this$0:Lcom/android/email/service/AccountService;

    #getter for: Lcom/android/email/service/AccountService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/service/AccountService;->access$000(Lcom/android/email/service/AccountService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/email/VendorPolicyLoader;->getInstance(Landroid/content/Context;)Lcom/android/email/VendorPolicyLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/VendorPolicyLoader;->useAlternateExchangeStrings()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 91
    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 97
    :try_start_0
    new-instance v1, Lcom/android/email/service/AccountService$1$1;

    invoke-direct {v1, p0}, Lcom/android/email/service/AccountService$1$1;-><init>(Lcom/android/email/service/AccountService$1;)V

    invoke-static {v1}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 107
    iget-object v1, p0, Lcom/android/email/service/AccountService$1;->this$0:Lcom/android/email/service/AccountService;

    #getter for: Lcom/android/email/service/AccountService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/email/service/AccountService;->access$000(Lcom/android/email/service/AccountService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/Device;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 109
    :goto_0
    return-object v1

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDeviceIdForWifi(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "hardwareId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 118
    :try_start_0
    new-instance v1, Lcom/android/email/service/AccountService$1$2;

    invoke-direct {v1, p0}, Lcom/android/email/service/AccountService$1$2;-><init>(Lcom/android/email/service/AccountService$1;)V

    invoke-static {v1}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 128
    iget-object v1, p0, Lcom/android/email/service/AccountService$1;->this$0:Lcom/android/email/service/AccountService;

    #getter for: Lcom/android/email/service/AccountService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/email/service/AccountService;->access$000(Lcom/android/email/service/AccountService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/emailcommon/Device;->getDeviceId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 130
    :goto_0
    return-object v1

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public notifyLoginFailed(J)V
    .locals 1
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/email/service/AccountService$1;->this$0:Lcom/android/email/service/AccountService;

    #getter for: Lcom/android/email/service/AccountService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/service/AccountService;->access$000(Lcom/android/email/service/AccountService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/NotificationController;->showLoginFailedNotification(J)V

    .line 48
    return-void
.end method

.method public notifyLoginSucceeded(J)V
    .locals 1
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/email/service/AccountService$1;->this$0:Lcom/android/email/service/AccountService;

    #getter for: Lcom/android/email/service/AccountService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/service/AccountService;->access$000(Lcom/android/email/service/AccountService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/email/NotificationController;->cancelLoginFailedNotification(J)V

    .line 53
    return-void
.end method

.method public notifyNewMessages(J)V
    .locals 1
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/email/service/AccountService$1;->this$0:Lcom/android/email/service/AccountService;

    #getter for: Lcom/android/email/service/AccountService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/service/AccountService;->access$000(Lcom/android/email/service/AccountService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/email/service/MailService;->actionNotifyNewMessages(Landroid/content/Context;J)V

    .line 58
    return-void
.end method

.method public notifySendFailedOutOfMemoryError(JJ)V
    .locals 1
    .parameter "accountId"
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/email/service/AccountService$1;->this$0:Lcom/android/email/service/AccountService;

    #getter for: Lcom/android/email/service/AccountService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/service/AccountService;->access$000(Lcom/android/email/service/AccountService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/email/service/MailService;->actionNotifySendFailedOutOfMemoryError(Landroid/content/Context;JJ)V

    .line 69
    return-void
.end method

.method public resetNewMessageCount(J)V
    .locals 1
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/email/service/AccountService$1;->this$0:Lcom/android/email/service/AccountService;

    #getter for: Lcom/android/email/service/AccountService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/service/AccountService;->access$000(Lcom/android/email/service/AccountService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/email/service/MailService;->resetNewMessageCount(Landroid/content/Context;J)V

    .line 63
    return-void
.end method

.method public restoreAccountsIfNeeded()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/email/service/AccountService$1;->this$0:Lcom/android/email/service/AccountService;

    #getter for: Lcom/android/email/service/AccountService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/service/AccountService;->access$000(Lcom/android/email/service/AccountService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/AccountBackupRestore;->restoreAccountsIfNeeded(Landroid/content/Context;)V

    .line 74
    return-void
.end method

.class Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$ControllerResults;
.super Lcom/android/email/Controller$Result;
.source "AccountSetupSncRestoreAccountsLogin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerResults"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)V
    .locals 0
    .parameter

    .prologue
    .line 385
    iput-object p1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$ControllerResults;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    invoke-direct {p0}, Lcom/android/email/Controller$Result;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 385
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$ControllerResults;-><init>(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)V

    return-void
.end method


# virtual methods
.method public addUserAccountCallback(Landroid/os/Bundle;J)V
    .locals 2
    .parameter "status"
    .parameter "accountId"

    .prologue
    .line 388
    const-string v0, "AccountSetupSncRestoreAccounts"

    const-string v1, "addUserAccountCallback"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$ControllerResults;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    new-instance v1, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$ControllerResults$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$ControllerResults$1;-><init>(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$ControllerResults;Landroid/os/Bundle;J)V

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 394
    return-void
.end method

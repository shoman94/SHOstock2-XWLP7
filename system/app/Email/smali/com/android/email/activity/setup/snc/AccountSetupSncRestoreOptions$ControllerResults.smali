.class Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ControllerResults;
.super Lcom/android/email/Controller$Result;
.source "AccountSetupSncRestoreOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerResults"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;)V
    .locals 0
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ControllerResults;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;

    invoke-direct {p0}, Lcom/android/email/Controller$Result;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 367
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ControllerResults;-><init>(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;)V

    return-void
.end method


# virtual methods
.method public getUserProfileCallback(Landroid/os/Bundle;Lcom/android/email/syncnconnect/utils/SncProfile;)V
    .locals 2
    .parameter "status"
    .parameter "sncProfile"

    .prologue
    .line 370
    const-string v0, "AccountSetupSncRestoreOptions"

    const-string v1, "getUserProfileCallback"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ControllerResults;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;

    new-instance v1, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ControllerResults$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ControllerResults$1;-><init>(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions$ControllerResults;Landroid/os/Bundle;Lcom/android/email/syncnconnect/utils/SncProfile;)V

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 376
    return-void
.end method

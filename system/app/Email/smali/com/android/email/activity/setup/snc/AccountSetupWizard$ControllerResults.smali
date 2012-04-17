.class Lcom/android/email/activity/setup/snc/AccountSetupWizard$ControllerResults;
.super Lcom/android/email/Controller$Result;
.source "AccountSetupWizard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/snc/AccountSetupWizard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerResults"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/snc/AccountSetupWizard;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/setup/snc/AccountSetupWizard;)V
    .locals 0
    .parameter

    .prologue
    .line 892
    iput-object p1, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ControllerResults;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupWizard;

    invoke-direct {p0}, Lcom/android/email/Controller$Result;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/setup/snc/AccountSetupWizard;Lcom/android/email/activity/setup/snc/AccountSetupWizard$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 892
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ControllerResults;-><init>(Lcom/android/email/activity/setup/snc/AccountSetupWizard;)V

    return-void
.end method


# virtual methods
.method public getAvailableAccountCallback(Landroid/os/Bundle;Ljava/util/List;)V
    .locals 2
    .parameter "status"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncEndpoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 896
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncEndpoint;>;"
    const-string v0, "AccountSetupWizard"

    const-string v1, "getAvailableAccountCallback"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ControllerResults;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupWizard;

    new-instance v1, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ControllerResults$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ControllerResults$1;-><init>(Lcom/android/email/activity/setup/snc/AccountSetupWizard$ControllerResults;Landroid/os/Bundle;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 902
    return-void
.end method

.method public getUserConfiguredAccountCallback(Landroid/os/Bundle;Ljava/util/List;)V
    .locals 2
    .parameter "status"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncUserEndpoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 907
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/syncnconnect/utils/SncUserEndpoint;>;"
    const-string v0, "AccountSetupWizard"

    const-string v1, "getUserConfiguredAccountCallback"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ControllerResults;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupWizard;

    new-instance v1, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ControllerResults$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/email/activity/setup/snc/AccountSetupWizard$ControllerResults$2;-><init>(Lcom/android/email/activity/setup/snc/AccountSetupWizard$ControllerResults;Landroid/os/Bundle;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/snc/AccountSetupWizard;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 913
    return-void
.end method

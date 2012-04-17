.class Lcom/android/email/activity/setup/AccountSetupBasics$ControllerResults;
.super Lcom/android/email/Controller$Result;
.source "AccountSetupBasics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSetupBasics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerResults"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupBasics;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/setup/AccountSetupBasics;)V
    .locals 0
    .parameter

    .prologue
    .line 2359
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupBasics$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {p0}, Lcom/android/email/Controller$Result;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/setup/AccountSetupBasics;Lcom/android/email/activity/setup/AccountSetupBasics$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2359
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSetupBasics$ControllerResults;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics;)V

    return-void
.end method


# virtual methods
.method public addUserAccountCallback(Landroid/os/Bundle;J)V
    .locals 3
    .parameter "status"
    .parameter "accountId"

    .prologue
    .line 2363
    const-string v0, "AccountSetupBasics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addUserAccountCallback - Bundle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " accountId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2364
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    new-instance v1, Lcom/android/email/activity/setup/AccountSetupBasics$ControllerResults$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/email/activity/setup/AccountSetupBasics$ControllerResults$1;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics$ControllerResults;Landroid/os/Bundle;J)V

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2369
    return-void
.end method

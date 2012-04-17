.class Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$5;
.super Ljava/lang/Object;
.source "AccountSetupOptionsForSeven.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;)V
    .locals 0
    .parameter

    .prologue
    .line 506
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$5;->this$0:Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 509
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 510
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 511
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$5;->this$0:Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;

    new-instance v3, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$5$1;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$5$1;-><init>(Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$5;)V

    invoke-virtual {v2, v3}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2

    .line 526
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 517
    :catch_0
    move-exception v1

    .line 518
    .local v1, e:Landroid/accounts/OperationCanceledException;
    const-string v2, "Email"

    const-string v3, "addAccount was canceled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    .end local v1           #e:Landroid/accounts/OperationCanceledException;
    :goto_1
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$5;->this$0:Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;

    const v3, 0x7f080109

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const v6, 0x7f0803a5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    #calls: Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->showErrorDialog(I[Ljava/lang/Object;)V
    invoke-static {v2, v3, v4}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->access$300(Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 519
    :catch_1
    move-exception v1

    .line 520
    .local v1, e:Ljava/io/IOException;
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAccount failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 521
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 522
    .local v1, e:Landroid/accounts/AuthenticatorException;
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAccount failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

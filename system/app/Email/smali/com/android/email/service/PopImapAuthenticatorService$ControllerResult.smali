.class Lcom/android/email/service/PopImapAuthenticatorService$ControllerResult;
.super Lcom/android/email/Controller$Result;
.source "PopImapAuthenticatorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/service/PopImapAuthenticatorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerResult"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/service/PopImapAuthenticatorService;


# direct methods
.method private constructor <init>(Lcom/android/email/service/PopImapAuthenticatorService;)V
    .locals 0
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/email/service/PopImapAuthenticatorService$ControllerResult;->this$0:Lcom/android/email/service/PopImapAuthenticatorService;

    invoke-direct {p0}, Lcom/android/email/Controller$Result;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/service/PopImapAuthenticatorService;Lcom/android/email/service/PopImapAuthenticatorService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/android/email/service/PopImapAuthenticatorService$ControllerResult;-><init>(Lcom/android/email/service/PopImapAuthenticatorService;)V

    return-void
.end method


# virtual methods
.method public deleteAccountCallback(Landroid/os/Bundle;J)V
    .locals 4
    .parameter "status"
    .parameter "accountId"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/email/service/PopImapAuthenticatorService$ControllerResult;->this$0:Lcom/android/email/service/PopImapAuthenticatorService;

    #getter for: Lcom/android/email/service/PopImapAuthenticatorService;->mController:Lcom/android/email/Controller;
    invoke-static {v0}, Lcom/android/email/service/PopImapAuthenticatorService;->access$200(Lcom/android/email/service/PopImapAuthenticatorService;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/service/PopImapAuthenticatorService$ControllerResult;->this$0:Lcom/android/email/service/PopImapAuthenticatorService;

    #getter for: Lcom/android/email/service/PopImapAuthenticatorService;->mControllerResult:Lcom/android/email/Controller$Result;
    invoke-static {v1}, Lcom/android/email/service/PopImapAuthenticatorService;->access$100(Lcom/android/email/service/PopImapAuthenticatorService;)Lcom/android/email/Controller$Result;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 234
    invoke-static {}, Lcom/android/email/service/PopImapAuthenticatorService;->access$500()Ljava/lang/Thread;

    move-result-object v1

    monitor-enter v1

    .line 235
    :try_start_0
    const-string v0, "PopImapAuthenticatorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "account delete staus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " account id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v0, "status_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/email/service/PopImapAuthenticatorService$ControllerResult;->this$0:Lcom/android/email/service/PopImapAuthenticatorService;

    const/4 v2, 0x1

    #setter for: Lcom/android/email/service/PopImapAuthenticatorService;->isMailDeletedFromProvider:Z
    invoke-static {v0, v2}, Lcom/android/email/service/PopImapAuthenticatorService;->access$402(Lcom/android/email/service/PopImapAuthenticatorService;Z)Z

    .line 242
    :goto_0
    invoke-static {}, Lcom/android/email/service/PopImapAuthenticatorService;->access$500()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 243
    monitor-exit v1

    .line 244
    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/android/email/service/PopImapAuthenticatorService$ControllerResult;->this$0:Lcom/android/email/service/PopImapAuthenticatorService;

    const/4 v2, 0x0

    #setter for: Lcom/android/email/service/PopImapAuthenticatorService;->isMailDeletedFromProvider:Z
    invoke-static {v0, v2}, Lcom/android/email/service/PopImapAuthenticatorService;->access$402(Lcom/android/email/service/PopImapAuthenticatorService;Z)Z

    goto :goto_0

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

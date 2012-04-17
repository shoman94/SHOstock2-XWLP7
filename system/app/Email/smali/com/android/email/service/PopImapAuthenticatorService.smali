.class public Lcom/android/email/service/PopImapAuthenticatorService;
.super Landroid/app/Service;
.source "PopImapAuthenticatorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/service/PopImapAuthenticatorService$1;,
        Lcom/android/email/service/PopImapAuthenticatorService$ControllerResult;,
        Lcom/android/email/service/PopImapAuthenticatorService$PopImapAuthenticator;
    }
.end annotation


# static fields
.field private static mUiThead:Ljava/lang/Thread;


# instance fields
.field private isMailDeletedFromProvider:Z

.field private mController:Lcom/android/email/Controller;

.field private mControllerResult:Lcom/android/email/Controller$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Lcom/android/email/service/PopImapAuthenticatorService;->mUiThead:Ljava/lang/Thread;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 68
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/service/PopImapAuthenticatorService;->mController:Lcom/android/email/Controller;

    .line 71
    new-instance v0, Lcom/android/email/ControllerResultUiThreadWrapper;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/email/service/PopImapAuthenticatorService$ControllerResult;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/email/service/PopImapAuthenticatorService$ControllerResult;-><init>(Lcom/android/email/service/PopImapAuthenticatorService;Lcom/android/email/service/PopImapAuthenticatorService$1;)V

    invoke-direct {v0, v1, v2}, Lcom/android/email/ControllerResultUiThreadWrapper;-><init>(Landroid/os/Handler;Lcom/android/email/Controller$Result;)V

    iput-object v0, p0, Lcom/android/email/service/PopImapAuthenticatorService;->mControllerResult:Lcom/android/email/Controller$Result;

    .line 229
    return-void
.end method

.method static synthetic access$100(Lcom/android/email/service/PopImapAuthenticatorService;)Lcom/android/email/Controller$Result;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/email/service/PopImapAuthenticatorService;->mControllerResult:Lcom/android/email/Controller$Result;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/service/PopImapAuthenticatorService;)Lcom/android/email/Controller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/email/service/PopImapAuthenticatorService;->mController:Lcom/android/email/Controller;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/service/PopImapAuthenticatorService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/email/service/PopImapAuthenticatorService;->waitForAccountDeletion()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/email/service/PopImapAuthenticatorService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/email/service/PopImapAuthenticatorService;->isMailDeletedFromProvider:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/email/service/PopImapAuthenticatorService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/email/service/PopImapAuthenticatorService;->isMailDeletedFromProvider:Z

    return p1
.end method

.method static synthetic access$500()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/email/service/PopImapAuthenticatorService;->mUiThead:Ljava/lang/Thread;

    return-object v0
.end method

.method private waitForAccountDeletion()V
    .locals 4

    .prologue
    .line 211
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    sput-object v1, Lcom/android/email/service/PopImapAuthenticatorService;->mUiThead:Ljava/lang/Thread;

    .line 212
    sget-object v2, Lcom/android/email/service/PopImapAuthenticatorService;->mUiThead:Ljava/lang/Thread;

    monitor-enter v2

    .line 214
    :try_start_0
    const-string v1, "PopImapAuthenticatorService"

    const-string v3, "Waiting for account delete from Email Provider ..."

    invoke-static {v1, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    sget-object v1, Lcom/android/email/service/PopImapAuthenticatorService;->mUiThead:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_0
    :try_start_1
    const-string v1, "PopImapAuthenticatorService"

    const-string v3, "Wait finished"

    invoke-static {v1, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    monitor-exit v2

    .line 222
    return-void

    .line 216
    :catch_0
    move-exception v0

    .line 218
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 221
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 251
    const-string v0, "android.accounts.AccountAuthenticator"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    new-instance v0, Lcom/android/email/service/PopImapAuthenticatorService$PopImapAuthenticator;

    invoke-direct {v0, p0, p0}, Lcom/android/email/service/PopImapAuthenticatorService$PopImapAuthenticator;-><init>(Lcom/android/email/service/PopImapAuthenticatorService;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/email/service/PopImapAuthenticatorService$PopImapAuthenticator;->getIBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 254
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

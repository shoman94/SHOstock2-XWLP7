.class public Lcom/seven/Z7/app/Z7AppBaseActivity;
.super Landroid/app/Activity;
.source "Z7AppBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/seven/Z7/app/Z7AppBaseActivity$NoOpListener;
    }
.end annotation


# static fields
.field private static ht:Landroid/os/HandlerThread;

.field private static mNoOpListener:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/seven/Z7/app/Z7AppBaseActivity$NoOpListener;",
            ">;"
        }
    .end annotation
.end field

.field protected static uiActionHandler:Landroid/os/Handler;


# instance fields
.field protected activeToken:I

.field private cancelListenerForDialog:Landroid/content/DialogInterface$OnCancelListener;

.field private connectionTimeOut:Ljava/lang/Runnable;

.field private dismissListenerForDialog:Landroid/content/DialogInterface$OnDismissListener;

.field protected handler:Landroid/os/Handler;

.field private listenerForpHandler:Lcom/android/email/Email$Z7ConnectionListener;

.field protected mApp:Lcom/android/email/Email;

.field protected mClient:Lcom/seven/Z7/app/Z7ServiceClient;

.field protected mDialog:Landroid/app/AlertDialog;

.field protected mDisableErrors:Z

.field public mHandler:Landroid/os/Handler;

.field private final mIsPauseable:Z

.field private mPopupReport:Landroid/app/AlertDialog;

.field private mPopupReportBuilder:Landroid/app/AlertDialog$Builder;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mWaitForEngineRetryTimes:I

.field private pHandler:Landroid/os/Handler;

.field private showingPopupDialog:Z

.field protected zHandler:Lcom/digc/seven/Z7MailHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 664
    sput-object v2, Lcom/seven/Z7/app/Z7AppBaseActivity;->mNoOpListener:Ljava/lang/ref/SoftReference;

    .line 690
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Z7.uiAction"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/seven/Z7/app/Z7AppBaseActivity;->ht:Landroid/os/HandlerThread;

    .line 692
    sput-object v2, Lcom/seven/Z7/app/Z7AppBaseActivity;->uiActionHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/seven/Z7/app/Z7AppBaseActivity;-><init>(Z)V

    .line 170
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter "isPauseable"

    .prologue
    .line 172
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->mDisableErrors:Z

    .line 100
    const/4 v0, -0x1

    iput v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->activeToken:I

    .line 102
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->handler:Landroid/os/Handler;

    .line 106
    new-instance v0, Lcom/seven/Z7/app/Z7AppBaseActivity$1;

    invoke-direct {v0, p0}, Lcom/seven/Z7/app/Z7AppBaseActivity$1;-><init>(Lcom/seven/Z7/app/Z7AppBaseActivity;)V

    iput-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->cancelListenerForDialog:Landroid/content/DialogInterface$OnCancelListener;

    .line 114
    new-instance v0, Lcom/seven/Z7/app/Z7AppBaseActivity$2;

    invoke-direct {v0, p0}, Lcom/seven/Z7/app/Z7AppBaseActivity$2;-><init>(Lcom/seven/Z7/app/Z7AppBaseActivity;)V

    iput-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->dismissListenerForDialog:Landroid/content/DialogInterface$OnDismissListener;

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->mWaitForEngineRetryTimes:I

    .line 141
    new-instance v0, Lcom/seven/Z7/app/Z7AppBaseActivity$3;

    invoke-direct {v0, p0}, Lcom/seven/Z7/app/Z7AppBaseActivity$3;-><init>(Lcom/seven/Z7/app/Z7AppBaseActivity;)V

    iput-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->connectionTimeOut:Ljava/lang/Runnable;

    .line 148
    new-instance v0, Lcom/seven/Z7/app/Z7AppBaseActivity$4;

    invoke-direct {v0, p0}, Lcom/seven/Z7/app/Z7AppBaseActivity$4;-><init>(Lcom/seven/Z7/app/Z7AppBaseActivity;)V

    iput-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->pHandler:Landroid/os/Handler;

    .line 219
    new-instance v0, Lcom/seven/Z7/app/Z7AppBaseActivity$5;

    invoke-direct {v0, p0}, Lcom/seven/Z7/app/Z7AppBaseActivity$5;-><init>(Lcom/seven/Z7/app/Z7AppBaseActivity;)V

    iput-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->mHandler:Landroid/os/Handler;

    .line 173
    iput-boolean p1, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->mIsPauseable:Z

    .line 174
    return-void
.end method

.method static synthetic access$002(Lcom/seven/Z7/app/Z7AppBaseActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->showingPopupDialog:Z

    return p1
.end method

.method static synthetic access$100(Lcom/seven/Z7/app/Z7AppBaseActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/seven/Z7/app/Z7AppBaseActivity;->showPopUpForConnectionFail()V

    return-void
.end method

.method static synthetic access$200(Lcom/seven/Z7/app/Z7AppBaseActivity;)Lcom/android/email/Email$Z7ConnectionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->listenerForpHandler:Lcom/android/email/Email$Z7ConnectionListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/seven/Z7/app/Z7AppBaseActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/seven/Z7/app/Z7AppBaseActivity;->changePrefToBasicConnector()V

    return-void
.end method

.method static synthetic access$500(Lcom/seven/Z7/app/Z7AppBaseActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->pHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/seven/Z7/app/Z7AppBaseActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->mWaitForEngineRetryTimes:I

    return v0
.end method

.method static synthetic access$602(Lcom/seven/Z7/app/Z7AppBaseActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->mWaitForEngineRetryTimes:I

    return p1
.end method

.method static synthetic access$608(Lcom/seven/Z7/app/Z7AppBaseActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->mWaitForEngineRetryTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->mWaitForEngineRetryTimes:I

    return v0
.end method

.method private changePrefToBasicConnector()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 440
    const-string v2, "sharedPreferenceCB"

    invoke-virtual {p0, v2, v3}, Lcom/seven/Z7/app/Z7AppBaseActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 442
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 443
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    const-string v2, "is_premium_connector"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 444
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 447
    return-void
.end method

.method private createProgressDialog(Ljava/lang/String;)Landroid/app/Dialog;
    .locals 2
    .parameter "message"

    .prologue
    .line 555
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 556
    .local v0, progressDialog:Landroid/app/ProgressDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 557
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 558
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 559
    return-object v0
.end method

.method protected static getUIActionHandler()Landroid/os/Handler;
    .locals 3

    .prologue
    .line 699
    sget-object v1, Lcom/seven/Z7/app/Z7AppBaseActivity;->ht:Landroid/os/HandlerThread;

    monitor-enter v1

    .line 700
    :try_start_0
    sget-object v0, Lcom/seven/Z7/app/Z7AppBaseActivity;->uiActionHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 701
    sget-object v0, Lcom/seven/Z7/app/Z7AppBaseActivity;->ht:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 702
    new-instance v0, Landroid/os/Handler;

    sget-object v2, Lcom/seven/Z7/app/Z7AppBaseActivity;->ht:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/seven/Z7/app/Z7AppBaseActivity;->uiActionHandler:Landroid/os/Handler;

    .line 704
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 705
    sget-object v0, Lcom/seven/Z7/app/Z7AppBaseActivity;->uiActionHandler:Landroid/os/Handler;

    return-object v0

    .line 704
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final showPopUpForConnectionFail()V
    .locals 2

    .prologue
    .line 813
    invoke-virtual {p0}, Lcom/seven/Z7/app/Z7AppBaseActivity;->dismissProgressDialog()V

    .line 817
    invoke-virtual {p0}, Lcom/seven/Z7/app/Z7AppBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080438

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 819
    invoke-virtual {p0}, Lcom/seven/Z7/app/Z7AppBaseActivity;->finish()V

    .line 831
    return-void
.end method


# virtual methods
.method protected cancelTask()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 712
    iget v1, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->activeToken:I

    if-eq v1, v3, :cond_0

    .line 715
    :try_start_0
    iget-object v1, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->zHandler:Lcom/digc/seven/Z7MailHandler;

    iget v2, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->activeToken:I

    invoke-virtual {v1, v2}, Lcom/digc/seven/Z7MailHandler;->cancelTask(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 720
    :goto_0
    iput v3, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->activeToken:I

    .line 722
    :cond_0
    return-void

    .line 716
    :catch_0
    move-exception v0

    .line 717
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {p0, v0}, Lcom/android/email/combined/common/ExceptionUtil;->showDialogException(Landroid/app/Activity;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected final changePrefToPremiumConnector()V
    .locals 4

    .prologue
    .line 454
    const-string v2, "sharedPreferenceCB"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/seven/Z7/app/Z7AppBaseActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 456
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 457
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    const-string v2, "is_premium_connector"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 458
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 459
    return-void
.end method

.method protected final dismissProgressDialog()V
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 430
    :cond_0
    return-void
.end method

.method protected doAfterPremiumAdded()V
    .locals 0

    .prologue
    .line 402
    return-void
.end method

.method protected handleSubscriptionErrors(Landroid/os/Message;)Z
    .locals 5
    .parameter "msg"

    .prologue
    .line 240
    const/4 v1, 0x0

    .line 241
    .local v1, isErrorHandled:Z
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "action"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 242
    .local v0, errorCode:I
    sget-object v2, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->Z7_ERR_SUBSCRIPTION_EXPIRED:Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;

    invoke-virtual {v2}, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->getValue()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 243
    const-string v2, "Z7AppBaseActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Subscription expired. Local="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/seven/Z7/app/SubscriptionStatus;->isLocalSubscriptionRenewalAvailable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const/4 v1, 0x1

    .line 253
    invoke-static {}, Lcom/seven/Z7/app/SubscriptionStatus;->hasPendingSubscriptionRenewalReminder()Z

    move-result v2

    if-nez v2, :cond_0

    .line 254
    sget-boolean v2, Lcom/seven/Z7/app/SubscriptionStatus;->isLocalSubscriptionRenewalAvailable:Z

    if-eqz v2, :cond_1

    .line 255
    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lcom/seven/Z7/app/Z7AppBaseActivity;->showDialog(I)V

    .line 261
    :cond_0
    :goto_0
    return v1

    .line 257
    :cond_1
    const/4 v2, 0x0

    invoke-static {v0, p0, v2}, Lcom/seven/Z7/app/SubscriptionStatus;->showConsultYourCarrierDialog(ILandroid/app/Activity;Z)Z

    goto :goto_0
.end method

.method protected final initializeSevenEngineAndCallGAC(Lcom/android/email/Email$Z7ConnectionListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 752
    iput-object p1, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->listenerForpHandler:Lcom/android/email/Email$Z7ConnectionListener;

    .line 753
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/seven/Z7/app/Z7AppBaseActivity$17;

    invoke-direct {v1, p0, p1}, Lcom/seven/Z7/app/Z7AppBaseActivity$17;-><init>(Lcom/seven/Z7/app/Z7AppBaseActivity;Lcom/android/email/Email$Z7ConnectionListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 810
    return-void
.end method

.method protected negativeActionForDialog(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 468
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 875
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 876
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 203
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 204
    invoke-virtual {p0}, Lcom/seven/Z7/app/Z7AppBaseActivity;->z7initInstance()V

    .line 205
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    const v4, 0x7f08045b

    const v3, 0x7f0801cb

    .line 265
    sparse-switch p1, :sswitch_data_0

    .line 397
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 267
    :sswitch_0
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/seven/Z7/app/SubscriptionStatus;->getSubscriptionExpiredDialog(Landroid/app/Activity;Z)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0

    .line 269
    :sswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080435

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/seven/Z7/app/Z7AppBaseActivity$7;

    invoke-direct {v2, p0}, Lcom/seven/Z7/app/Z7AppBaseActivity$7;-><init>(Lcom/seven/Z7/app/Z7AppBaseActivity;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/seven/Z7/app/Z7AppBaseActivity$6;

    invoke-direct {v2, p0, p1}, Lcom/seven/Z7/app/Z7AppBaseActivity$6;-><init>(Lcom/seven/Z7/app/Z7AppBaseActivity;I)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 330
    :sswitch_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08049d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08049e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/seven/Z7/app/Z7AppBaseActivity$9;

    invoke-direct {v2, p0}, Lcom/seven/Z7/app/Z7AppBaseActivity$9;-><init>(Lcom/seven/Z7/app/Z7AppBaseActivity;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/seven/Z7/app/Z7AppBaseActivity$8;

    invoke-direct {v2, p0}, Lcom/seven/Z7/app/Z7AppBaseActivity$8;-><init>(Lcom/seven/Z7/app/Z7AppBaseActivity;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 346
    :sswitch_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08049f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0804a0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/seven/Z7/app/Z7AppBaseActivity$11;

    invoke-direct {v2, p0}, Lcom/seven/Z7/app/Z7AppBaseActivity$11;-><init>(Lcom/seven/Z7/app/Z7AppBaseActivity;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/seven/Z7/app/Z7AppBaseActivity$10;

    invoke-direct {v2, p0}, Lcom/seven/Z7/app/Z7AppBaseActivity$10;-><init>(Lcom/seven/Z7/app/Z7AppBaseActivity;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 362
    :sswitch_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 364
    .local v0, registerPrimium:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f080437

    invoke-virtual {p0, v1}, Lcom/seven/Z7/app/Z7AppBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 365
    const v1, 0x7f080042

    invoke-virtual {p0, v1}, Lcom/seven/Z7/app/Z7AppBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/seven/Z7/app/Z7AppBaseActivity$12;

    invoke-direct {v2, p0}, Lcom/seven/Z7/app/Z7AppBaseActivity$12;-><init>(Lcom/seven/Z7/app/Z7AppBaseActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 380
    const v1, 0x7f080043

    invoke-virtual {p0, v1}, Lcom/seven/Z7/app/Z7AppBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/seven/Z7/app/Z7AppBaseActivity$13;

    invoke-direct {v2, p0}, Lcom/seven/Z7/app/Z7AppBaseActivity$13;-><init>(Lcom/seven/Z7/app/Z7AppBaseActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 395
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0

    .line 265
    nop

    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_0
        0x2712 -> :sswitch_1
        0x2713 -> :sswitch_4
        0x2714 -> :sswitch_2
        0x2715 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 653
    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->listenerForpHandler:Lcom/android/email/Email$Z7ConnectionListener;

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->zHandler:Lcom/digc/seven/Z7MailHandler;

    iget-object v1, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->listenerForpHandler:Lcom/android/email/Email$Z7ConnectionListener;

    invoke-virtual {v0, v1}, Lcom/digc/seven/Z7MailHandler;->unRegisterListener(Lcom/android/email/Email$Z7ConnectionListener;)V

    .line 655
    :cond_0
    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 656
    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 658
    :cond_1
    invoke-virtual {p0}, Lcom/seven/Z7/app/Z7AppBaseActivity;->dismissProgressDialog()V

    .line 660
    invoke-virtual {p0}, Lcom/seven/Z7/app/Z7AppBaseActivity;->z7unregisterCallback()V

    .line 661
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 662
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/seven/Z7/app/Z7AppBaseActivity;->z7unregisterCallback()V

    .line 210
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 211
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"
    .parameter "args"

    .prologue
    .line 406
    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->cancelListenerForDialog:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 407
    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->dismissListenerForDialog:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 408
    new-instance v0, Lcom/seven/Z7/app/Z7AppBaseActivity$14;

    invoke-direct {v0, p0}, Lcom/seven/Z7/app/Z7AppBaseActivity$14;-><init>(Lcom/seven/Z7/app/Z7AppBaseActivity;)V

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 419
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 420
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->showingPopupDialog:Z

    .line 421
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 857
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 862
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapterDirect(I)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/adapter/ProtocolAdapter;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 863
    invoke-static {p0}, Lcom/digc/seven/SevenSyncProvider;->checkSevenApkVer(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 867
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 215
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 216
    invoke-virtual {p0}, Lcom/seven/Z7/app/Z7AppBaseActivity;->z7registerCallback()V

    .line 217
    return-void
.end method

.method protected final setEmailAndPwToPref(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "emailAddress"
    .parameter "password"

    .prologue
    .line 732
    const-string v2, "sharedPreferenceCB"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/seven/Z7/app/Z7AppBaseActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 734
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 737
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    const-string v2, "email_and_pw"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "||"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/seven/util/SamsungUrlEncryptionUtils;->base64Encode([B)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 741
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 742
    return-void
.end method

.method protected final showPopupReport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "subject"
    .parameter "message"

    .prologue
    .line 521
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/seven/Z7/app/Z7AppBaseActivity;->showPopupReport(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 522
    return-void
.end method

.method protected final showPopupReport(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .parameter "subject"
    .parameter "message"
    .parameter "listener"

    .prologue
    .line 534
    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->mPopupReportBuilder:Landroid/app/AlertDialog$Builder;

    if-nez v0, :cond_0

    .line 535
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->mPopupReportBuilder:Landroid/app/AlertDialog$Builder;

    .line 536
    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->mPopupReportBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 537
    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->mPopupReportBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f080042

    invoke-virtual {v0, v1, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->mPopupReportBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 540
    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->mPopupReportBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 541
    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->mPopupReportBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->mPopupReport:Landroid/app/AlertDialog;

    .line 542
    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->mPopupReport:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->cancelListenerForDialog:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 543
    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->mPopupReport:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->dismissListenerForDialog:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 544
    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->mPopupReport:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 545
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->showingPopupDialog:Z

    .line 546
    return-void
.end method

.method protected final showProgressDialog()V
    .locals 2

    .prologue
    .line 474
    const/4 v0, 0x0

    const v1, 0x7f080429

    invoke-virtual {p0, v1}, Lcom/seven/Z7/app/Z7AppBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/seven/Z7/app/Z7AppBaseActivity;->showProgressDialog(Landroid/content/DialogInterface$OnKeyListener;Ljava/lang/String;)V

    .line 475
    return-void
.end method

.method protected final showProgressDialog(Landroid/content/DialogInterface$OnKeyListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 484
    const v0, 0x7f080429

    invoke-virtual {p0, v0}, Lcom/seven/Z7/app/Z7AppBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/seven/Z7/app/Z7AppBaseActivity;->showProgressDialog(Landroid/content/DialogInterface$OnKeyListener;Ljava/lang/String;)V

    .line 485
    return-void
.end method

.method protected final showProgressDialog(Landroid/content/DialogInterface$OnKeyListener;Ljava/lang/String;)V
    .locals 1
    .parameter "listener"
    .parameter "message"

    .prologue
    .line 495
    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 496
    invoke-direct {p0, p2}, Lcom/seven/Z7/app/Z7AppBaseActivity;->createProgressDialog(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    iput-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 499
    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 500
    return-void
.end method

.method protected final showingPopupDialog()Z
    .locals 1

    .prologue
    .line 745
    iget-boolean v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->showingPopupDialog:Z

    return v0
.end method

.method protected final startConnectionTimeOut()V
    .locals 4

    .prologue
    .line 834
    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->connectionTimeOut:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 835
    return-void
.end method

.method protected startErrorActivity(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 231
    invoke-virtual {p0, p1}, Lcom/seven/Z7/app/Z7AppBaseActivity;->handleSubscriptionErrors(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/seven/Z7/app/ErrorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 233
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 234
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 235
    invoke-virtual {p0, v0}, Lcom/seven/Z7/app/Z7AppBaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 237
    :cond_0
    return-void
.end method

.method protected final stopConnectionTimeOut()V
    .locals 2

    .prologue
    .line 838
    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->connectionTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 839
    return-void
.end method

.method public z7initInstance()V
    .locals 1

    .prologue
    .line 180
    invoke-static {p0}, Lcom/android/email/Email;->getApplication(Landroid/content/Context;)Lcom/android/email/Email;

    move-result-object v0

    iput-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->mApp:Lcom/android/email/Email;

    .line 181
    invoke-static {p0}, Lcom/seven/Z7/app/Z7ServiceClient;->getInstance(Landroid/app/Activity;)Lcom/seven/Z7/app/Z7ServiceClient;

    move-result-object v0

    iput-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->mClient:Lcom/seven/Z7/app/Z7ServiceClient;

    .line 182
    invoke-static {p0}, Lcom/digc/seven/Z7MailHandler;->getInstance(Landroid/content/Context;)Lcom/digc/seven/Z7MailHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->zHandler:Lcom/digc/seven/Z7MailHandler;

    .line 183
    return-void
.end method

.method public z7registerCallback()V
    .locals 3

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->mDisableErrors:Z

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->mClient:Lcom/seven/Z7/app/Z7ServiceClient;

    const/16 v1, 0x5d

    iget-object v2, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/seven/Z7/app/Z7ServiceClient;->registerCallback(ILandroid/os/Handler;)V

    .line 192
    :cond_0
    return-void
.end method

.method public z7unregisterCallback()V
    .locals 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->mClient:Lcom/seven/Z7/app/Z7ServiceClient;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->mClient:Lcom/seven/Z7/app/Z7ServiceClient;

    const/16 v1, 0x5d

    iget-object v2, p0, Lcom/seven/Z7/app/Z7AppBaseActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/seven/Z7/app/Z7ServiceClient;->unRegisterCallback(ILandroid/os/Handler;)V

    .line 197
    :cond_0
    return-void
.end method

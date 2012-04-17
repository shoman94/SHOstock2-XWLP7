.class public Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
.super Landroid/app/Fragment;
.source "AccountCheckSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog;,
        Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;,
        Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;,
        Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;,
        Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;,
        Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;
    }
.end annotation


# instance fields
.field mAccountCheckTask:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;

.field private mAttached:Z

.field private mAutoDiscoverResult:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

.field private mCheckingDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

.field private mErrorMessage:Ljava/lang/String;

.field private mErrorStringId:I

.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mState:I

    .line 1063
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->checkITPolicy(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->onCheckingDialogCancel()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;)Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getCallbackTarget()Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->onErrorDialogEditButton()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->onSecurityRequiredDialogResultOk(Z)V

    return-void
.end method

.method private checkITPolicy(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 3
    .parameter "context"
    .parameter "acc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 974
    invoke-virtual {p2, p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 975
    .local v0, uriStr:Ljava/lang/String;
    const-string v1, "eas"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    .line 991
    :cond_0
    return-void

    .line 978
    :cond_1
    invoke-static {p1}, Lcom/android/emailcommon/variant/DPMWraper;->getInstance(Landroid/content/Context;)Lcom/android/emailcommon/variant/DPMWraper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/variant/DPMWraper;->getAllowPOPIMAPEmail(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 979
    const-string v1, "AccountSetupCheckSettings"

    const-string v2, "Exchange IT Policy has disabled POP/IMAP Email"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    new-instance v1, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v1
.end method

.method private getCallbackTarget()Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;
    .locals 3

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    .line 361
    .local v1, target:Landroid/app/Fragment;
    instance-of v2, v1, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

    if-eqz v2, :cond_0

    .line 362
    check-cast v1, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

    .line 366
    .end local v1           #target:Landroid/app/Fragment;
    :goto_0
    return-object v1

    .line 364
    .restart local v1       #target:Landroid/app/Fragment;
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 365
    .local v0, activity:Landroid/app/Activity;
    instance-of v2, v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

    if-eqz v2, :cond_1

    .line 366
    check-cast v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

    .end local v0           #activity:Landroid/app/Activity;
    move-object v1, v0

    goto :goto_0

    .line 368
    .restart local v0       #activity:Landroid/app/Activity;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2
.end method

.method public static newInstance(ILandroid/app/Fragment;)Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
    .locals 1
    .parameter "mode"
    .parameter "parentFragment"

    .prologue
    .line 172
    new-instance v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    invoke-direct {v0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;-><init>()V

    .line 173
    .local v0, f:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
    invoke-virtual {v0, p1, p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 174
    return-object v0
.end method

.method private onCheckingDialogCancel()V
    .locals 2

    .prologue
    .line 395
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mAccountCheckTask:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;

    invoke-static {v1}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 396
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mAccountCheckTask:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;

    .line 398
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 399
    .local v0, fm:Landroid/app/FragmentManager;
    if-eqz v0, :cond_0

    .line 400
    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 402
    :cond_0
    return-void
.end method

.method private onErrorDialogEditButton()V
    .locals 5

    .prologue
    .line 411
    const/4 v0, 0x0

    .line 413
    .local v0, callbackTarget:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;
    :try_start_0
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getCallbackTarget()Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 417
    :goto_0
    if-eqz v0, :cond_0

    .line 418
    iget v3, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mState:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_2

    .line 420
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;->onAutoDiscoverComplete(ILcom/android/emailcommon/provider/EmailContent$HostAuth;)V

    .line 426
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 427
    .local v2, fm:Landroid/app/FragmentManager;
    if-eqz v2, :cond_1

    .line 428
    invoke-virtual {v2}, Landroid/app/FragmentManager;->popBackStack()V

    .line 430
    :cond_1
    return-void

    .line 414
    .end local v2           #fm:Landroid/app/FragmentManager;
    :catch_0
    move-exception v1

    .line 415
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "AccountCheckSettingsFragment"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 423
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;->onCheckSettingsComplete(I)V

    goto :goto_1
.end method

.method private onSecurityRequiredDialogResultOk(Z)V
    .locals 3
    .parameter "okPressed"

    .prologue
    .line 439
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getCallbackTarget()Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

    move-result-object v0

    .line 440
    .local v0, callbackTarget:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;
    if-eqz p1, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0, v2}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;->onCheckSettingsComplete(I)V

    .line 444
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 445
    .local v1, fm:Landroid/app/FragmentManager;
    if-eqz v1, :cond_0

    .line 446
    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    .line 448
    :cond_0
    return-void

    .line 440
    .end local v1           #fm:Landroid/app/FragmentManager;
    :cond_1
    const/4 v2, 0x2

    goto :goto_0
.end method

.method private recoverAndDismissCheckingDialog()V
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mCheckingDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    if-nez v0, :cond_0

    .line 376
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "CheckProgressDialog"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mCheckingDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    .line 380
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mCheckingDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    if-eqz v0, :cond_1

    .line 381
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mCheckingDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->dismiss()V

    .line 382
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mCheckingDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    :cond_1
    :goto_0
    return-void

    .line 384
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 196
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 197
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mAttached:Z

    .line 199
    const-string v2, "Email"

    const-string v3, "AccountCheckSettingsFragment onActivityCreated"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mAccountCheckTask:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;

    if-nez v2, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getTargetRequestCode()I

    move-result v1

    .line 204
    .local v1, checkMode:I
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 206
    .local v0, checkAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v0, :cond_1

    .line 207
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButtonInhibit:Z

    .line 208
    const-string v2, "Email"

    const-string v3, "AccountCheckTask checkAccount is null "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    .end local v0           #checkAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v1           #checkMode:I
    :cond_0
    :goto_0
    return-void

    .line 212
    .restart local v0       #checkAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    .restart local v1       #checkMode:I
    :cond_1
    new-instance v2, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;-><init>(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;ILcom/android/emailcommon/provider/EmailContent$Account;)V

    iput-object v2, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mAccountCheckTask:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;

    .line 213
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mAccountCheckTask:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 184
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 185
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->setRetainInstance(Z)V

    .line 186
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 242
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 243
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mAccountCheckTask:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 244
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mAccountCheckTask:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AccountCheckTask;

    .line 245
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 254
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mAttached:Z

    .line 256
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 232
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 233
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->recoverAndDismissCheckingDialog()V

    .line 234
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 223
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 225
    iget v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mState:I

    if-eqz v0, :cond_0

    .line 226
    iget v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mState:I

    iget v1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mErrorStringId:I

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mErrorMessage:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mAutoDiscoverResult:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->reportProgress(IILjava/lang/String;Lcom/android/emailcommon/provider/EmailContent$HostAuth;)V

    .line 228
    :cond_0
    return-void
.end method

.method public reportProgress(IILjava/lang/String;Lcom/android/emailcommon/provider/EmailContent$HostAuth;)V
    .locals 7
    .parameter "newState"
    .parameter "errorStringId"
    .parameter "errorMessage"
    .parameter "autoDiscoverResult"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 272
    iput p1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mState:I

    .line 273
    iput p2, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mErrorStringId:I

    .line 274
    iput-object p3, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mErrorMessage:Ljava/lang/String;

    .line 275
    iput-object p4, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mAutoDiscoverResult:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 278
    iget-boolean v5, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mAttached:Z

    if-eqz v5, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 281
    .local v1, fm:Landroid/app/FragmentManager;
    packed-switch p1, :pswitch_data_0

    .line 340
    const-string v3, "CheckProgressDialog"

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mCheckingDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    .line 342
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mCheckingDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    if-nez v3, :cond_2

    .line 343
    iget v3, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mState:I

    invoke-static {p0, v3}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->newInstance(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;I)Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mCheckingDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    .line 345
    :try_start_0
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mCheckingDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    const-string v5, "CheckProgressDialog"

    invoke-virtual {v3, v4, v5}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_4

    .line 354
    .end local v1           #fm:Landroid/app/FragmentManager;
    :cond_0
    :goto_0
    return-void

    .line 285
    .restart local v1       #fm:Landroid/app/FragmentManager;
    :pswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->recoverAndDismissCheckingDialog()V

    .line 288
    :try_start_1
    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 292
    :goto_1
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getCallbackTarget()Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;->onCheckSettingsComplete(I)V

    .line 294
    iput v3, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mState:I

    goto :goto_0

    .line 298
    :pswitch_1
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->recoverAndDismissCheckingDialog()V

    .line 300
    const-string v3, "SecurityRequiredDialog"

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_0

    .line 302
    :try_start_2
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mErrorMessage:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog;->newInstance(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;Ljava/lang/String;)Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog;

    move-result-object v2

    .line 304
    .local v2, securityRequiredDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    const-string v4, "SecurityRequiredDialog"

    invoke-virtual {v3, v2, v4}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 307
    .end local v2           #securityRequiredDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$SecurityRequiredDialog;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 314
    :pswitch_2
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->recoverAndDismissCheckingDialog()V

    .line 316
    const-string v3, "ErrorDialog"

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_0

    .line 318
    :try_start_3
    iget v3, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mErrorStringId:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mErrorMessage:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {p0, v3, v4}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;->newInstance(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;I[Ljava/lang/String;)Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;

    move-result-object v0

    .line 320
    .local v0, errorDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    const-string v4, "ErrorDialog"

    invoke-virtual {v3, v0, v4}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 321
    .end local v0           #errorDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;
    :catch_1
    move-exception v3

    goto :goto_0

    .line 327
    :pswitch_3
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->recoverAndDismissCheckingDialog()V

    .line 330
    :try_start_4
    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_3

    .line 334
    :goto_2
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getCallbackTarget()Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mAutoDiscoverResult:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-eqz v6, :cond_1

    :goto_3
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mAutoDiscoverResult:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-interface {v5, v3, v4}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;->onAutoDiscoverComplete(ILcom/android/emailcommon/provider/EmailContent$HostAuth;)V

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_3

    .line 349
    :cond_2
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mCheckingDialog:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    iget v4, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->mState:I

    invoke-virtual {v3, v4}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->updateProgress(I)V

    goto :goto_0

    .line 289
    :catch_2
    move-exception v4

    goto :goto_1

    .line 331
    :catch_3
    move-exception v5

    goto :goto_2

    .line 346
    :catch_4
    move-exception v3

    goto :goto_0

    .line 281
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

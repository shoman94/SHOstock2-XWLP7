.class public Lcom/android/email/activity/setup/snc/AccountSetupSncNames;
.super Lcom/android/email/activity/setup/AccountSetupActivity;
.source "AccountSetupSncNames.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/snc/AccountSetupSncNames$FinalSetupTask;
    }
.end annotation


# static fields
.field public static forceSync:Z

.field private static mInstance:Landroid/app/Activity;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mDescription:Landroid/widget/EditText;

.field private mEasAccount:Z

.field mHelpDialog:Landroid/app/AlertDialog$Builder;

.field private mName:Landroid/widget/EditText;

.field private mNextButton:Landroid/view/MenuItem;

.field private mNextPressed:Z

.field private mSevenAccount:Z

.field private mSyncContacts:Landroid/widget/CheckBox;

.field private mSyncEmail:Landroid/widget/CheckBox;

.field private mWebInstructions:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->forceSync:Z

    .line 102
    new-instance v0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;

    invoke-direct {v0}, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;-><init>()V

    sput-object v0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->mInstance:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;-><init>()V

    .line 88
    const-string v0, "AccountSetupSncNames"

    iput-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->TAG:Ljava/lang/String;

    .line 95
    iput-boolean v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->mNextPressed:Z

    .line 96
    iput-boolean v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->mEasAccount:Z

    .line 97
    iput-boolean v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->mSevenAccount:Z

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->mHelpDialog:Landroid/app/AlertDialog$Builder;

    .line 105
    sput-object p0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->mInstance:Landroid/app/Activity;

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/snc/AccountSetupSncNames;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->validateFields()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/snc/AccountSetupSncNames;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->finishActivity()V

    return-void
.end method

.method private accountAdditionComplete()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 144
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccountAuthenticatorResponse()Landroid/accounts/AccountAuthenticatorResponse;

    move-result-object v0

    .line 146
    .local v0, authenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;
    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0, v1}, Landroid/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    .line 148
    invoke-static {v1}, Lcom/android/email/activity/setup/SetupData;->setAccountAuthenticatorResponse(Landroid/accounts/AccountAuthenticatorResponse;)V

    .line 150
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->setResult(I)V

    .line 151
    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->finish()V

    .line 152
    return-void
.end method

.method public static actionAddAccountCompleteFromAccountManager(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 125
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    const-string v1, "add.account.compelete.extra.account_manager"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 127
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 128
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 129
    return-void
.end method

.method public static actionAddAccountFailedFromAccountManager(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 132
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    const-string v1, "add.account.failed.extra.account_manager"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 134
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 135
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 136
    return-void
.end method

.method public static actionSetNames(Landroid/app/Activity;)V
    .locals 1
    .parameter "fromActivity"

    .prologue
    const/4 v0, 0x0

    .line 115
    invoke-static {p0, v0, v0, v0}, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->actionSetNames(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public static actionSetNames(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 122
    return-void
.end method

.method private finishActivity()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 486
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v7

    .line 487
    .local v7, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-wide v0, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->setAccountId(J)V

    .line 488
    if-eqz v7, :cond_1

    .line 489
    iget-wide v0, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/setup/snc/AccountSetupSncAccounts;->actionShowAccount(Landroid/app/Activity;J)V

    .line 500
    :goto_0
    if-eqz v7, :cond_0

    .line 501
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    iget-wide v0, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    .line 504
    .local v3, ids:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v2, 0x190

    const/4 v4, 0x5

    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IIZ)V

    .line 508
    .end local v3           #ids:[Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->finish()V

    .line 509
    return-void

    .line 497
    :cond_1
    invoke-static {p0}, Lcom/android/email/activity/Welcome;->actionStart(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public static getInstance()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->mInstance:Landroid/app/Activity;

    return-object v0
.end method

.method private onNext()V
    .locals 1

    .prologue
    .line 517
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 518
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-direct {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->updateAccountInfo()V

    .line 519
    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->onModifyUserAccount()V

    .line 521
    invoke-static {p0, v0}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->addAccountToAccountManager(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 523
    return-void
.end method

.method private varargs showErrorDialog(I[Ljava/lang/Object;)V
    .locals 1
    .parameter "msgResId"
    .parameter "args"

    .prologue
    .line 161
    new-instance v0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/email/activity/setup/snc/AccountSetupSncNames$1;-><init>(Lcom/android/email/activity/setup/snc/AccountSetupSncNames;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 181
    return-void
.end method

.method private showHelpDialog()V
    .locals 4

    .prologue
    .line 228
    const-string v1, "AccountSetupSncNames"

    const-string v2, "showHelpDialog"

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->mHelpDialog:Landroid/app/AlertDialog$Builder;

    .line 231
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040023

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 233
    .local v0, dialogView:Landroid/view/View;
    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->mHelpDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 234
    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->mHelpDialog:Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 235
    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->mHelpDialog:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f080564

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 236
    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->mHelpDialog:Landroid/app/AlertDialog$Builder;

    const v2, 0x7f080045

    new-instance v3, Lcom/android/email/activity/setup/snc/AccountSetupSncNames$2;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncNames$2;-><init>(Lcom/android/email/activity/setup/snc/AccountSetupSncNames;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 242
    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->mHelpDialog:Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/android/email/activity/setup/snc/AccountSetupSncNames$3;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncNames$3;-><init>(Lcom/android/email/activity/setup/snc/AccountSetupSncNames;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 253
    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->mHelpDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 254
    return-void
.end method

.method private updateAccountInfo()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 526
    const-string v0, "AccountSetupSncNames"

    const-string v1, "updateAccountInfo"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v7

    .line 528
    .local v7, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->mDescription:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 529
    .local v8, description:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 530
    invoke-virtual {v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDisplayName(Ljava/lang/String;)V

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->mName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSenderName(Ljava/lang/String;)V

    .line 534
    const/4 v0, 0x6

    invoke-virtual {v7, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncLookback(I)V

    .line 535
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setEmailSize(B)V

    .line 536
    new-instance v0, Lcom/android/emailcommon/utility/SyncScheduleData;

    const/16 v1, 0x12c

    const/16 v2, 0x4ec

    const/16 v3, 0x7f

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/emailcommon/utility/SyncScheduleData;-><init>(IIIIII)V

    invoke-virtual {v7, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncScheduleData(Lcom/android/emailcommon/utility/SyncScheduleData;)V

    .line 542
    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDeletePolicy(I)V

    .line 545
    new-instance v0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames$FinalSetupTask;

    invoke-direct {v0, p0, v7}, Lcom/android/email/activity/setup/snc/AccountSetupSncNames$FinalSetupTask;-><init>(Lcom/android/email/activity/setup/snc/AccountSetupSncNames;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/snc/AccountSetupSncNames$FinalSetupTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 546
    return-void
.end method

.method private validateFields()V
    .locals 4

    .prologue
    .line 461
    const/4 v0, 0x1

    .line 464
    .local v0, newEnabled:Z
    iget-boolean v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->mEasAccount:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->mSevenAccount:Z

    if-nez v2, :cond_0

    .line 465
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->mName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 466
    .local v1, userName:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x1

    .line 467
    :goto_0
    if-nez v0, :cond_0

    .line 468
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->mName:Landroid/widget/EditText;

    const v3, 0x7f0800d8

    invoke-virtual {p0, v3}, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 471
    .end local v1           #userName:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->mNextButton:Landroid/view/MenuItem;

    if-eqz v2, :cond_1

    .line 472
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->mNextButton:Landroid/view/MenuItem;

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 473
    :cond_1
    return-void

    .line 466
    .restart local v1       #userName:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    .line 555
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccountAuthenticatorResponse()Landroid/accounts/AccountAuthenticatorResponse;

    move-result-object v0

    .line 557
    .local v0, authenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;
    if-eqz v0, :cond_0

    .line 558
    const/4 v1, 0x4

    const-string v2, "canceled"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    .line 559
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/email/activity/setup/SetupData;->setAccountAuthenticatorResponse(Landroid/accounts/AccountAuthenticatorResponse;)V

    .line 561
    :cond_0
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;->finish()V

    .line 562
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 633
    packed-switch p1, :pswitch_data_0

    .line 638
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/email/activity/setup/AccountSetupActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 639
    return-void

    .line 635
    :pswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->finishActivity()V

    goto :goto_0

    .line 633
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 480
    iget-boolean v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->mNextPressed:Z

    if-nez v0, :cond_0

    .line 481
    invoke-direct {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->updateAccountInfo()V

    .line 483
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 442
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 455
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 23
    .parameter "savedInstanceState"

    .prologue
    .line 258
    invoke-super/range {p0 .. p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 259
    invoke-static/range {p0 .. p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->getIntent()Landroid/content/Intent;

    move-result-object v19

    const-string v20, "add.account.compelete.extra.account_manager"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    .line 263
    .local v11, isAddAccountComplete:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->getIntent()Landroid/content/Intent;

    move-result-object v19

    const-string v20, "add.account.failed.extra.account_manager"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    .line 266
    .local v12, isAddAccountFailed:Z
    if-eqz v11, :cond_1

    .line 267
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->accountAdditionComplete()V

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    if-eqz v12, :cond_2

    .line 272
    const v19, 0x7f080109

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const v22, 0x7f0803a5

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->showErrorDialog(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 276
    :cond_2
    const v19, 0x7f040024

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->setContentView(I)V

    .line 278
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    .line 282
    .local v4, actionBar:Landroid/app/ActionBar;
    const v19, 0x7f10006a

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/EditText;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->mDescription:Landroid/widget/EditText;

    .line 283
    const v19, 0x7f100003

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/EditText;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->mName:Landroid/widget/EditText;

    .line 284
    const v19, 0x7f1000ae

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/CheckBox;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->mSyncEmail:Landroid/widget/CheckBox;

    .line 285
    const v19, 0x7f10008d

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/CheckBox;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->mSyncContacts:Landroid/widget/CheckBox;

    .line 286
    const v19, 0x7f080590

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 287
    .local v17, webHelp:Ljava/lang/String;
    const v19, 0x7f10002c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->mWebInstructions:Landroid/widget/TextView;

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->mWebInstructions:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->mWebInstructions:Landroid/widget/TextView;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " - "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "<a href=\"http://www.vzw.com/sync\">www.vzw.com/sync</a>"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 293
    .local v9, i:Landroid/content/Intent;
    new-instance v16, Lcom/android/email/activity/setup/snc/AccountSetupSncNames$4;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/setup/snc/AccountSetupSncNames$4;-><init>(Lcom/android/email/activity/setup/snc/AccountSetupSncNames;)V

    .line 304
    .local v16, validationTextWatcher:Landroid/text/TextWatcher;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->mName:Landroid/widget/EditText;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->mName:Landroid/widget/EditText;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    sget-object v21, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-static/range {v20 .. v21}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 307
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v3

    .line 308
    .local v3, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v3, :cond_3

    .line 309
    new-instance v19, Ljava/lang/IllegalStateException;

    const-string v20, "unexpected null account"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 311
    :cond_3
    iget-object v0, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-object/from16 v19, v0

    if-nez v19, :cond_4

    .line 312
    new-instance v19, Ljava/lang/IllegalStateException;

    const-string v20, "unexpected null hostauth"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 315
    :cond_4
    iget-wide v0, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-static {v0, v1, v2}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getSncEndpoint(Landroid/content/Context;J)Lcom/android/email/syncnconnect/utils/SncEndpoint;

    move-result-object v13

    .line 316
    .local v13, sncEndPoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    iget-wide v0, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-static {v0, v1, v2}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getSncUserEndpoint(Landroid/content/Context;J)Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    move-result-object v14

    .line 319
    .local v14, sncUserEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;
    if-eqz v13, :cond_5

    invoke-virtual {v13}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->getSncServiceList()Ljava/util/List;

    move-result-object v19

    const-string v20, "Mail"

    invoke-static/range {v19 .. v20}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->isSncServicePresent(Ljava/util/List;Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_5

    .line 322
    const-string v19, "AccountSetupSncNames"

    const-string v20, "EmailService is not supported for this Endpoint"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->mSyncEmail:Landroid/widget/CheckBox;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 325
    :cond_5
    if-eqz v14, :cond_a

    invoke-virtual {v14}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getSncServiceList()Ljava/util/List;

    move-result-object v19

    const-string v20, "Mail"

    invoke-static/range {v19 .. v20}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->isSncServicePresent(Ljava/util/List;Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->mSyncEmail:Landroid/widget/CheckBox;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->mSyncEmail:Landroid/widget/CheckBox;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 335
    :goto_1
    if-eqz v13, :cond_6

    invoke-virtual {v13}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->getSncServiceList()Ljava/util/List;

    move-result-object v19

    const-string v20, "Contacts"

    invoke-static/range {v19 .. v20}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->isSncServicePresent(Ljava/util/List;Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 338
    const-string v19, "AccountSetupSncNames"

    const-string v20, "ContactService is not supported for this Endpoint"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->mSyncContacts:Landroid/widget/CheckBox;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 341
    :cond_6
    if-eqz v14, :cond_b

    invoke-virtual {v14}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getSncServiceList()Ljava/util/List;

    move-result-object v19

    const-string v20, "Contacts"

    invoke-static/range {v19 .. v20}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->isSncServicePresent(Ljava/util/List;Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->mSyncContacts:Landroid/widget/CheckBox;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 349
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->mSyncContacts:Landroid/widget/CheckBox;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->mSyncContacts:Landroid/widget/CheckBox;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/email/activity/setup/snc/AccountSetupSncNames$5;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/setup/snc/AccountSetupSncNames$5;-><init>(Lcom/android/email/activity/setup/snc/AccountSetupSncNames;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 368
    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 370
    .local v7, email:Ljava/lang/String;
    const-string v19, "@"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 371
    .local v8, emailParts:[Ljava/lang/String;
    const/16 v19, 0x0

    aget-object v19, v8, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 372
    .local v15, username:Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    .line 375
    .local v10, imsi:[C
    new-instance v15, Ljava/lang/String;

    .end local v15           #username:Ljava/lang/String;
    invoke-direct {v15, v10}, Ljava/lang/String;-><init>([C)V

    .line 376
    .restart local v15       #username:Ljava/lang/String;
    if-eqz v14, :cond_c

    invoke-virtual {v14}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getDisplayName()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_c

    invoke-virtual {v14}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getDisplayName()Ljava/lang/String;

    move-result-object v19

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_c

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->mName:Landroid/widget/EditText;

    move-object/from16 v19, v0

    invoke-virtual {v14}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getDisplayName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 382
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->mName:Landroid/widget/EditText;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->selectAll()V

    .line 384
    const/16 v19, 0x1

    aget-object v19, v8, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 385
    .local v5, domain:Ljava/lang/String;
    const-string v19, "[.]"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 387
    .local v6, domainWithoutDot:[Ljava/lang/String;
    const/16 v19, 0x0

    aget-object v19, v6, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    .line 388
    .local v18, withOutDotDomain:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    .line 389
    const/16 v19, 0x0

    aget-char v19, v10, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 390
    const/16 v19, 0x0

    const/16 v20, 0x0

    aget-char v20, v10, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v20

    aput-char v20, v10, v19

    .line 391
    :cond_7
    new-instance v18, Ljava/lang/String;

    .end local v18           #withOutDotDomain:Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-direct {v0, v10}, Ljava/lang/String;-><init>([C)V

    .line 392
    .restart local v18       #withOutDotDomain:Ljava/lang/String;
    if-eqz v14, :cond_d

    invoke-virtual {v14}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getAccountName()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_d

    invoke-virtual {v14}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getAccountName()Ljava/lang/String;

    move-result-object v19

    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_d

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->mDescription:Landroid/widget/EditText;

    move-object/from16 v19, v0

    invoke-virtual {v14}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getAccountName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 398
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->mDescription:Landroid/widget/EditText;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->selectAll()V

    .line 403
    const-string v19, "eas"

    iget-object v0, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->mEasAccount:Z

    .line 404
    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSevenAccountKey()J

    move-result-wide v19

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-lez v19, :cond_e

    const/16 v19, 0x1

    :goto_5
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->mSevenAccount:Z

    .line 405
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->mEasAccount:Z

    move/from16 v19, v0

    if-nez v19, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->mSevenAccount:Z

    move/from16 v19, v0

    if-eqz v19, :cond_9

    .line 406
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->mName:Landroid/widget/EditText;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setVisibility(I)V

    .line 407
    const v19, 0x7f10006b

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 408
    const v19, 0x7f10006c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setVisibility(I)V

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->mDescription:Landroid/widget/EditText;

    move-object/from16 v19, v0

    const v20, 0x2000006

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 424
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->validateFields()V

    .line 427
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v19

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 428
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->onNext()V

    goto/16 :goto_0

    .line 331
    .end local v5           #domain:Ljava/lang/String;
    .end local v6           #domainWithoutDot:[Ljava/lang/String;
    .end local v7           #email:Ljava/lang/String;
    .end local v8           #emailParts:[Ljava/lang/String;
    .end local v10           #imsi:[C
    .end local v15           #username:Ljava/lang/String;
    .end local v18           #withOutDotDomain:Ljava/lang/String;
    :cond_a
    const-string v19, "AccountSetupSncNames"

    const-string v20, "EmailService is not subscribed for this Endpoint"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->mSyncEmail:Landroid/widget/CheckBox;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_1

    .line 346
    :cond_b
    const-string v19, "AccountSetupSncNames"

    const-string v20, "ConatctService is not subscribed for this Endpoint"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->mSyncContacts:Landroid/widget/CheckBox;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_2

    .line 380
    .restart local v7       #email:Ljava/lang/String;
    .restart local v8       #emailParts:[Ljava/lang/String;
    .restart local v10       #imsi:[C
    .restart local v15       #username:Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->mName:Landroid/widget/EditText;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 396
    .restart local v5       #domain:Ljava/lang/String;
    .restart local v6       #domainWithoutDot:[Ljava/lang/String;
    .restart local v18       #withOutDotDomain:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->mDescription:Landroid/widget/EditText;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 404
    :cond_e
    const/16 v19, 0x0

    goto/16 :goto_5
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 186
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 187
    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0011

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 188
    const/4 v0, 0x1

    return v0
.end method

.method public onModifyUserAccount()V
    .locals 9

    .prologue
    .line 642
    const-string v0, "AccountSetupSncNames"

    const-string v1, "onModifyUserAccount"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    const/4 v3, 0x0

    .line 644
    .local v3, password:Ljava/lang/String;
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v7

    .line 645
    .local v7, mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-virtual {v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSenderName()Ljava/lang/String;

    move-result-object v4

    .line 646
    .local v4, accountName:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    .line 647
    .local v5, displayName:Ljava/lang/String;
    iget-wide v0, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/syncnconnect/utils/DatabaseUtils;->getSncEndpoint(Landroid/content/Context;J)Lcom/android/email/syncnconnect/utils/SncEndpoint;

    move-result-object v8

    .line 648
    .local v8, mSncEndPoint:Lcom/android/email/syncnconnect/utils/SncEndpoint;
    if-nez v8, :cond_0

    .line 649
    const-string v0, "AccountSetupSncNames"

    const-string v1, "FATAL - mSncEndPoint is null from Snc Module"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :goto_0
    return-void

    .line 652
    :cond_0
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getPassword()Ljava/lang/String;

    move-result-object v3

    .line 653
    invoke-virtual {v8}, Lcom/android/email/syncnconnect/utils/SncEndpoint;->getSncServiceList()Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 654
    .local v6, srcList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/syncnconnect/utils/SncService;>;"
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iget-wide v1, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/Controller;->modifyUserAccount(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 201
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 219
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 222
    :cond_0
    :goto_0
    return v0

    .line 208
    :sswitch_0
    iget-boolean v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->mNextPressed:Z

    if-nez v1, :cond_1

    .line 209
    invoke-direct {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->onNext()V

    .line 211
    :cond_1
    iput-boolean v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->mNextPressed:Z

    goto :goto_0

    .line 215
    :sswitch_1
    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->mHelpDialog:Landroid/app/AlertDialog$Builder;

    if-nez v1, :cond_0

    .line 216
    invoke-direct {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->showHelpDialog()V

    goto :goto_0

    .line 201
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100039 -> :sswitch_0
        0x7f1002bd -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 193
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 194
    const v0, 0x7f100039

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->mNextButton:Landroid/view/MenuItem;

    .line 195
    invoke-direct {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->validateFields()V

    .line 196
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 434
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;->onResume()V

    .line 435
    return-void
.end method

.class public Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;
.super Lcom/android/email/activity/setup/AccountSetupActivity;
.source "AccountSetupSncRestoreAccountsLogin.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$ControllerResults;,
        Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;
    }
.end annotation


# instance fields
.field TouchListener:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;

.field private mControllerCallback:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$ControllerResults;

.field private mDefaultView:Landroid/widget/CheckBox;

.field private mEmailValidator:Lcom/android/email/EmailAddressValidator;

.field private mEmailView:Landroid/widget/EditText;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncUserEndpoint;",
            ">;"
        }
    .end annotation
.end field

.field private mPasswordView:Landroid/widget/EditText;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field mRestoreItem:Landroid/view/MenuItem;

.field private mShowPassword:Landroid/widget/CheckBox;

.field private mSncList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncUserEndpoint;",
            ">;"
        }
    .end annotation
.end field

.field position:I

.field userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;-><init>()V

    .line 85
    new-instance v0, Lcom/android/email/EmailAddressValidator;

    invoke-direct {v0}, Lcom/android/email/EmailAddressValidator;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mEmailValidator:Lcom/android/email/EmailAddressValidator;

    .line 228
    new-instance v0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;-><init>(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->TouchListener:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;

    .line 385
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->validateFields()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mShowPassword:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->showHidePassword(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mDefaultView:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;Landroid/os/Bundle;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->addUserAccountResponse(Landroid/os/Bundle;J)V

    return-void
.end method

.method public static actionaddaccount(Landroid/app/Activity;ILjava/util/List;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/syncnconnect/utils/SncUserEndpoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    const-string v1, "ConfiguredAccounts"

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 96
    const-string v1, "position"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 97
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 98
    return-void
.end method

.method private addUserAccountResponse(Landroid/os/Bundle;J)V
    .locals 6
    .parameter "bundle"
    .parameter "accountId"

    .prologue
    .line 398
    const-string v3, "AccountSetupSncRestoreAccounts"

    const-string v4, "addUserAccountResponse"

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v3, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_0

    .line 400
    iget-object v3, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 401
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 403
    :cond_0
    if-eqz p1, :cond_1

    .line 404
    const-string v3, "status_code"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 405
    .local v2, resultCode:I
    const-string v3, "status_text"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 406
    .local v1, errorMessage:Ljava/lang/String;
    const-string v3, "AccountSetupSncRestoreAccounts"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addUserAccountCallback - resultCode :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " errorMessage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    if-nez v2, :cond_2

    .line 409
    iget-object v3, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mList:Ljava/util/List;

    invoke-static {p0, v3}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreOptions;->actionDisplayAccounts(Landroid/app/Activity;Ljava/util/List;)V

    .line 411
    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->finish()V

    .line 428
    .end local v1           #errorMessage:Ljava/lang/String;
    .end local v2           #resultCode:I
    :cond_1
    :goto_0
    return-void

    .line 413
    .restart local v1       #errorMessage:Ljava/lang/String;
    .restart local v2       #resultCode:I
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 415
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x1080027

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 416
    const v3, 0x7f080574

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 417
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 418
    const-string v3, "Ok"

    new-instance v4, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$7;

    invoke-direct {v4, p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$7;-><init>(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 424
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 425
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private createProgressDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 277
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 278
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f080576

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 280
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 281
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 282
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$6;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$6;-><init>(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 291
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 292
    const-string v0, "AccountSetupSncRestoreAccounts"

    const-string v1, "Created Progress dialog"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method private onEnableProceedButtons(Z)V
    .locals 1
    .parameter "restoreValid"

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mRestoreItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mRestoreItem:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 333
    :cond_0
    return-void
.end method

.method private showHidePassword(Z)V
    .locals 3
    .parameter "show"

    .prologue
    .line 306
    if-eqz p1, :cond_0

    .line 307
    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mPasswordView:Landroid/widget/EditText;

    const/16 v2, 0x91

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 314
    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, password:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 316
    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->invalidate()V

    .line 317
    return-void

    .line 311
    .end local v0           #password:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mPasswordView:Landroid/widget/EditText;

    const/16 v2, 0x81

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0
.end method

.method private validateFields()V
    .locals 4

    .prologue
    .line 320
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mEmailView:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mPasswordView:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mEmailValidator:Lcom/android/email/EmailAddressValidator;

    iget-object v3, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mEmailView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/email/EmailAddressValidator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 323
    .local v0, nextValid:Z
    :goto_0
    move v1, v0

    .line 324
    .local v1, restoreValid:Z
    invoke-direct {p0, v1}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->onEnableProceedButtons(Z)V

    .line 327
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mPasswordView:Landroid/widget/EditText;

    invoke-static {p0, v2}, Lcom/android/email/activity/setup/AccountSettingsUtils;->checkPasswordSpaces(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 328
    return-void

    .line 320
    .end local v0           #nextValid:Z
    .end local v1           #restoreValid:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 437
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;->onBackPressed()V

    .line 438
    const-string v0, "AccountSetupSncRestoreAccounts"

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 433
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 297
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 303
    :goto_0
    return-void

    .line 299
    :pswitch_0
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mShowPassword:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->showHidePassword(Z)V

    .line 300
    invoke-direct {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->validateFields()V

    goto :goto_0

    .line 297
    nop

    :pswitch_data_0
    .packed-switch 0x7f100048
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 102
    const-string v2, "AccountSetupSncRestoreAccounts"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    const v2, 0x7f040027

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->setContentView(I)V

    .line 105
    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 107
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "ConfiguredAccounts"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mSncList:Ljava/util/List;

    .line 110
    const-string v2, "position"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->position:I

    .line 112
    const v2, 0x7f10003d

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mEmailView:Landroid/widget/EditText;

    .line 113
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mEmailView:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 114
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mSncList:Ljava/util/List;

    iget v3, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->position:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    iput-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    .line 115
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mEmailView:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    invoke-virtual {v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 117
    const v2, 0x7f10001c

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mPasswordView:Landroid/widget/EditText;

    .line 119
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 120
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mPasswordView:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 122
    new-instance v1, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$1;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$1;-><init>(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)V

    .line 133
    .local v1, validationTextWatcher:Landroid/text/TextWatcher;
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 134
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    const v2, 0x7f100048

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mShowPassword:Landroid/widget/CheckBox;

    .line 137
    const v2, 0x7f100045

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mDefaultView:Landroid/widget/CheckBox;

    .line 139
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mShowPassword:Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mDefaultView:Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    invoke-direct {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->validateFields()V

    .line 142
    const-string v2, "ConfiguredAccounts"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mList:Ljava/util/List;

    .line 144
    new-instance v2, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$ControllerResults;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$ControllerResults;-><init>(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$1;)V

    iput-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mControllerCallback:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$ControllerResults;

    .line 145
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mControllerCallback:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$ControllerResults;

    invoke-virtual {v2, v3}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    .line 147
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 337
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 338
    invoke-virtual {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0012

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 339
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 163
    const-string v0, "AccountSetupSncRestoreAccounts"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;->onDestroy()V

    .line 165
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mControllerCallback:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$ControllerResults;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 166
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    .line 352
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 374
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 377
    :goto_0
    return v0

    .line 354
    :pswitch_0
    const-string v0, "AccountSetupSncRestoreAccounts"

    const-string v2, "User pressed restore"

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-direct {p0}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->createProgressDialog()V

    .line 357
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 358
    .local v4, pass:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    if-nez v0, :cond_0

    .line 359
    const-string v0, "AccountSetupSncRestoreAccounts"

    const-string v2, "UserEndpoint is NULL"

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 362
    :cond_0
    const-string v0, "AccountSetupSncRestoreAccounts"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EndpointName - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    invoke-virtual {v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getProvider()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " userName- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    invoke-virtual {v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " serviceList- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    invoke-virtual {v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getSncServiceList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const/4 v0, 0x5

    const/16 v2, 0x9

    invoke-static {v0, v2}, Lcom/android/email/esp/ServiceProvider;->makeType(II)I

    move-result v1

    .line 369
    .local v1, mType:I
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    invoke-virtual {v2}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getProvider()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    invoke-virtual {v3}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getUserName()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->userEndpoint:Lcom/android/email/syncnconnect/utils/SncUserEndpoint;

    invoke-virtual {v5}, Lcom/android/email/syncnconnect/utils/SncUserEndpoint;->getSncServiceList()Ljava/util/List;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/Controller;->addUserAccount(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 352
    :pswitch_data_0
    .packed-switch 0x7f1002be
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 151
    const-string v0, "AccountSetupSncRestoreAccounts"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;->onPause()V

    .line 153
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 344
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 345
    const v0, 0x7f1002be

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mRestoreItem:Landroid/view/MenuItem;

    .line 346
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mRestoreItem:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 347
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 157
    const-string v0, "AccountSetupSncRestoreAccounts"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;->onResume()V

    .line 159
    return-void
.end method

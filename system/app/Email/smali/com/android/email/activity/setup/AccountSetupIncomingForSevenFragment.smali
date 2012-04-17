.class public Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;
.super Landroid/app/Fragment;
.source "AccountSetupIncomingForSevenFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$4;,
        Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;
    }
.end annotation


# instance fields
.field private bFirstSelected:Z

.field private connectionTimeOut:Ljava/lang/Runnable;

.field protected handler:Landroid/os/Handler;

.field protected mContext:Landroid/content/Context;

.field private mListener:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;

.field private mLoaded:Z

.field private mPasswordView:Landroid/widget/EditText;

.field private mPopupReport:Landroid/app/AlertDialog;

.field private mPopupReportBuilder:Landroid/app/AlertDialog$Builder;

.field public mProceedButton:Landroid/widget/Button;

.field public mProceedButtonPressed:Z

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSevenAccountKey:I

.field private mShowingPopupDialog:Z

.field private mStarted:Z

.field private mUsernameView:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->bFirstSelected:Z

    .line 343
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->handler:Landroid/os/Handler;

    .line 347
    new-instance v0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$2;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$2;-><init>(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->connectionTimeOut:Ljava/lang/Runnable;

    .line 414
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->validateFields()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->showPopUpForConnectionFail()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mSevenAccountKey:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mShowingPopupDialog:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mShowingPopupDialog:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mPopupReportBuilder:Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mPopupReportBuilder:Landroid/app/AlertDialog$Builder;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mPopupReport:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mPopupReport:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private final showPopUpForConnectionFail()V
    .locals 3

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->dismissProgressDialog()V

    .line 359
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080438

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 361
    return-void
.end method

.method private validateFields()V
    .locals 3

    .prologue
    .line 305
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v0

    .line 307
    .local v0, enabled:Z
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mProceedButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 308
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mProceedButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 312
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-static {v1, v2}, Lcom/android/email/activity/setup/AccountSettingsUtils;->checkPasswordSpaces(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 313
    return-void
.end method


# virtual methods
.method protected final dismissProgressDialog()V
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 378
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 223
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 224
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 130
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mContext:Landroid/content/Context;

    .line 133
    instance-of v0, p1, Lcom/android/email/activity/setup/AccountSettingsXL;

    if-eqz v0, :cond_0

    .line 134
    check-cast p1, Lcom/android/email/activity/setup/AccountSettingsXL;

    .end local p1
    invoke-virtual {p1, p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->onAttach(Landroid/app/Fragment;)V

    .line 136
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 321
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 323
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 325
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 326
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 327
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 330
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 332
    .restart local v0       #imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 333
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 334
    :cond_2
    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mProceedButtonPressed:Z

    if-nez v1, :cond_0

    .line 337
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mProceedButtonPressed:Z

    .line 338
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->onNext()V

    goto :goto_0

    .line 321
    :pswitch_data_0
    .packed-switch 0x7f100029
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 148
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 150
    if-eqz p1, :cond_0

    .line 151
    const-string v0, "AccountSetupIncomingForSevenFragment.loaded"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mLoaded:Z

    .line 153
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    .line 160
    const v1, 0x7f040009

    .line 162
    .local v1, layoutId:I
    invoke-virtual {p1, v1, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 164
    .local v5, view:Landroid/view/View;
    const v6, 0x7f10001b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mUsernameView:Landroid/widget/EditText;

    .line 165
    const v6, 0x7f10001c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mPasswordView:Landroid/widget/EditText;

    .line 169
    new-instance v4, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$1;

    invoke-direct {v4, p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$1;-><init>(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;)V

    .line 181
    .local v4, validationTextWatcher:Landroid/text/TextWatcher;
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 182
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 185
    const v6, 0x7f100029

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    const v6, 0x7f10002a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mProceedButton:Landroid/widget/Button;

    .line 188
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mProceedButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mProceedButton:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 193
    :try_start_0
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 194
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mUsernameView:Landroid/widget/EditText;

    iget-object v7, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mUsernameView:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSelection(I)V

    .line 197
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mContext:Landroid/content/Context;

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {v6, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v6

    iput-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 199
    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v2, v6, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    .line 200
    .local v2, password:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v6, ""

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 201
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v6, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSelection(I)V

    .line 205
    :cond_0
    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSevenAccountKey:J

    long-to-int v6, v6

    iput v6, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mSevenAccountKey:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->validateFields()V

    .line 215
    return-object v5

    .line 206
    .end local v0           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v2           #password:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 210
    .local v3, use:Ljava/lang/Exception;
    new-instance v6, Ljava/lang/Error;

    invoke-direct {v6, v3}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mPopupReport:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mPopupReport:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 285
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->dismissProgressDialog()V

    .line 286
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->stopConnectionTimeOut()V

    .line 287
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 288
    return-void
.end method

.method public onNext()V
    .locals 5

    .prologue
    .line 394
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    .line 396
    .local v1, setupAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/digc/seven/Z7MailHandler;->getInstance(Landroid/content/Context;)Lcom/digc/seven/Z7MailHandler;

    move-result-object v2

    .line 398
    .local v2, zHandler:Lcom/digc/seven/Z7MailHandler;
    new-instance v3, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->handler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;-><init>(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mListener:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;

    .line 401
    :try_start_0
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mListener:Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$MyListener;

    invoke-virtual {v2, v3}, Lcom/digc/seven/Z7MailHandler;->registerListener(Lcom/android/email/Email$Z7ConnectionListener;)V

    .line 402
    iget v3, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mSevenAccountKey:I

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/digc/seven/Z7MailHandler;->relogin(ILjava/lang/String;)I

    .line 403
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->showProgressDialog()V

    .line 404
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->startConnectionTimeOut()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    :goto_0
    return-void

    .line 405
    :catch_0
    move-exception v0

    .line 406
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$3;

    invoke-direct {v4, p0, v0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment$3;-><init>(Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;Landroid/os/RemoteException;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 255
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 256
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 246
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 247
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->validateFields()V

    .line 248
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 295
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 297
    const-string v0, "AccountSetupIncomingForSevenFragment.loaded"

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mLoaded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 298
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 234
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mStarted:Z

    .line 236
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->dismissProgressDialog()V

    .line 267
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->stopConnectionTimeOut()V

    .line 268
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mStarted:Z

    .line 270
    return-void
.end method

.method protected final showProgressDialog()V
    .locals 3

    .prologue
    .line 364
    const v1, 0x7f0800d1

    invoke-virtual {p0, v1}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, message:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_0

    .line 366
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 367
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 368
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 369
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 371
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 372
    return-void
.end method

.method protected final startConnectionTimeOut()V
    .locals 4

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->connectionTimeOut:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 382
    return-void
.end method

.method protected final stopConnectionTimeOut()V
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingForSevenFragment;->connectionTimeOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 386
    return-void
.end method

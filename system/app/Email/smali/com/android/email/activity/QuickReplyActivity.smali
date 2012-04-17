.class public Lcom/android/email/activity/QuickReplyActivity;
.super Landroid/app/Activity;
.source "QuickReplyActivity.java"


# instance fields
.field private mController:Lcom/android/email/Controller;

.field private mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

.field private replyTextButton:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/QuickReplyActivity;->replyTextButton:Landroid/widget/TextView;

    .line 53
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/QuickReplyActivity;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/QuickReplyActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/email/activity/QuickReplyActivity;->replyTextButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/activity/QuickReplyActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/email/activity/QuickReplyActivity;->setButtonEnable(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/email/activity/QuickReplyActivity;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/email/activity/QuickReplyActivity;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/QuickReplyActivity;)Lcom/android/email/Controller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/email/activity/QuickReplyActivity;->mController:Lcom/android/email/Controller;

    return-object v0
.end method

.method private setButtonEnable(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/email/activity/QuickReplyActivity;->replyTextButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 204
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 15
    .parameter "savedInstanceState"

    .prologue
    .line 57
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/QuickReplyActivity;->requestWindowFeature(I)Z

    .line 65
    invoke-virtual {p0}, Lcom/android/email/activity/QuickReplyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 67
    .local v10, intent:Landroid/content/Intent;
    const-string v0, "address"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 68
    .local v8, address:Ljava/lang/String;
    const-string v0, "com.android.email.QuickReplyActivity_from"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, from:Ljava/lang/String;
    const-string v0, "com.android.email.QuickReplyActivity_to"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 70
    .local v4, to:Ljava/lang/String;
    const-string v0, "com.android.email.QuickReplyActivity_cc"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 71
    .local v5, cc:Ljava/lang/String;
    const-string v0, "subject"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 72
    .local v6, subject:Ljava/lang/String;
    const-string v0, "text"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 73
    .local v9, bodyText:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/email/activity/QuickReplyActivity;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    const-string v1, "com.android.email.QuickReplyActivity_account_key"

    const-wide/16 v13, -0x1

    invoke-virtual {v10, v1, v13, v14}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v13

    iput-wide v13, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 75
    new-instance v7, Landroid/app/Dialog;

    invoke-direct {v7, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 76
    .local v7, dialog:Landroid/app/Dialog;
    const v0, 0x7f04008f

    invoke-virtual {v7, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 79
    const v0, 0x7f10023d

    invoke-virtual {v7, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    const v0, 0x7f10023e

    invoke-virtual {v7, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v12, v0

    check-cast v12, Landroid/widget/TextView;

    .line 84
    .local v12, textViewBody:Landroid/widget/TextView;
    invoke-virtual {v12, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 86
    const/4 v0, 0x3

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 88
    const v0, 0x7f10023f

    invoke-virtual {v7, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    move-object v2, v0

    check-cast v2, Landroid/widget/EditText;

    .line 90
    .local v2, bodyField:Landroid/widget/EditText;
    const v0, 0x7f10023b

    invoke-virtual {v7, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/QuickReplyActivity;->replyTextButton:Landroid/widget/TextView;

    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/QuickReplyActivity;->setButtonEnable(Z)V

    .line 94
    invoke-virtual {p0}, Lcom/android/email/activity/QuickReplyActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/QuickReplyActivity;->mController:Lcom/android/email/Controller;

    .line 96
    new-instance v0, Lcom/android/email/activity/QuickReplyActivity$1;

    invoke-direct {v0, p0}, Lcom/android/email/activity/QuickReplyActivity$1;-><init>(Lcom/android/email/activity/QuickReplyActivity;)V

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 113
    iget-object v13, p0, Lcom/android/email/activity/QuickReplyActivity;->replyTextButton:Landroid/widget/TextView;

    new-instance v0, Lcom/android/email/activity/QuickReplyActivity$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/email/activity/QuickReplyActivity$2;-><init>(Lcom/android/email/activity/QuickReplyActivity;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Dialog;)V

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    const v0, 0x7f10023c

    invoke-virtual {v7, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/android/email/activity/QuickReplyActivity$3;

    invoke-direct {v1, p0, v7}, Lcom/android/email/activity/QuickReplyActivity$3;-><init>(Lcom/android/email/activity/QuickReplyActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    new-instance v0, Lcom/android/email/activity/QuickReplyActivity$4;

    invoke-direct {v0, p0}, Lcom/android/email/activity/QuickReplyActivity$4;-><init>(Lcom/android/email/activity/QuickReplyActivity;)V

    invoke-virtual {v7, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 184
    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0b0019

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 185
    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    .line 187
    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/QuickReplyActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/StatusBarManager;

    .line 188
    .local v11, statusBar:Landroid/app/StatusBarManager;
    if-eqz v11, :cond_0

    .line 189
    invoke-virtual {v11}, Landroid/app/StatusBarManager;->collapse()V

    .line 193
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 197
    invoke-static {p0}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/QuickReplyActivity;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/NotificationController;->cancelNewMessageNotification(J)V

    .line 198
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 199
    return-void
.end method

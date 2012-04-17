.class public Lcom/android/email/activity/setup/EditQuickResponseDialog;
.super Landroid/app/DialogFragment;
.source "EditQuickResponseDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/TextWatcher;


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field private mQuickResponse:Lcom/android/emailcommon/provider/QuickResponse;

.field private mQuickResponseEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/EditQuickResponseDialog;)Lcom/android/emailcommon/provider/QuickResponse;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog;->mQuickResponse:Lcom/android/emailcommon/provider/QuickResponse;

    return-object v0
.end method

.method public static newInstance(Lcom/android/emailcommon/provider/QuickResponse;J)Lcom/android/email/activity/setup/EditQuickResponseDialog;
    .locals 3
    .parameter "quickResponse"
    .parameter "accountId"

    .prologue
    .line 58
    new-instance v1, Lcom/android/email/activity/setup/EditQuickResponseDialog;

    invoke-direct {v1}, Lcom/android/email/activity/setup/EditQuickResponseDialog;-><init>()V

    .line 60
    .local v1, dialog:Lcom/android/email/activity/setup/EditQuickResponseDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 61
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "accountId"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 62
    if-eqz p0, :cond_0

    .line 63
    const-string v2, "quick_response"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 66
    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/email/activity/setup/EditQuickResponseDialog;->setArguments(Landroid/os/Bundle;)V

    .line 67
    return-object v1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 110
    return-void

    .line 109
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 115
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 135
    packed-switch p2, :pswitch_data_0

    .line 165
    :goto_0
    return-void

    .line 137
    :pswitch_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    goto :goto_0

    .line 140
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/email/activity/setup/EditQuickResponseDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "accountId"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 141
    .local v0, accountId:J
    iget-object v4, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog;->mQuickResponseEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 142
    .local v3, text:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/EditQuickResponseDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 143
    .local v2, context:Landroid/content/Context;
    iget-object v4, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog;->mQuickResponse:Lcom/android/emailcommon/provider/QuickResponse;

    if-nez v4, :cond_0

    .line 144
    new-instance v4, Lcom/android/emailcommon/provider/QuickResponse;

    invoke-direct {v4, v0, v1, v3}, Lcom/android/emailcommon/provider/QuickResponse;-><init>(JLjava/lang/String;)V

    iput-object v4, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog;->mQuickResponse:Lcom/android/emailcommon/provider/QuickResponse;

    .line 150
    :cond_0
    new-instance v4, Lcom/android/email/activity/setup/EditQuickResponseDialog$1;

    invoke-direct {v4, p0, v2, v3}, Lcom/android/email/activity/setup/EditQuickResponseDialog$1;-><init>(Lcom/android/email/activity/setup/EditQuickResponseDialog;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    goto :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/email/activity/setup/EditQuickResponseDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 73
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/EditQuickResponseDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "quick_response"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/emailcommon/provider/QuickResponse;

    iput-object v3, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog;->mQuickResponse:Lcom/android/emailcommon/provider/QuickResponse;

    .line 75
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog;->mQuickResponseEditText:Landroid/widget/EditText;

    .line 76
    if-eqz p1, :cond_1

    .line 77
    const-string v3, "quick_response_edited_string"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, quickResponseSavedString:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 80
    iget-object v3, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog;->mQuickResponseEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 85
    .end local v2           #quickResponseSavedString:Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog;->mQuickResponseEditText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog;->mQuickResponseEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 86
    iget-object v3, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog;->mQuickResponseEditText:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 88
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 89
    .local v0, b:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/EditQuickResponseDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0805c6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog;->mQuickResponseEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f080043

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0805c7

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 92
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog;->mDialog:Landroid/app/AlertDialog;

    .line 93
    iget-object v3, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog;->mDialog:Landroid/app/AlertDialog;

    return-object v3

    .line 82
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    :cond_1
    iget-object v3, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog;->mQuickResponse:Lcom/android/emailcommon/provider/QuickResponse;

    if-eqz v3, :cond_0

    .line 83
    iget-object v3, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog;->mQuickResponseEditText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog;->mQuickResponse:Lcom/android/emailcommon/provider/QuickResponse;

    invoke-virtual {v4}, Lcom/android/emailcommon/provider/QuickResponse;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 99
    iget-object v0, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 101
    iget-object v0, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog;->mQuickResponseEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 104
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 126
    const-string v0, "quick_response_edited_string"

    iget-object v1, p0, Lcom/android/email/activity/setup/EditQuickResponseDialog;->mQuickResponseEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 120
    return-void
.end method

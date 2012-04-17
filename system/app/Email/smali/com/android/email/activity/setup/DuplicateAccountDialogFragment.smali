.class public Lcom/android/email/activity/setup/DuplicateAccountDialogFragment;
.super Landroid/app/DialogFragment;
.source "DuplicateAccountDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/android/email/activity/setup/DuplicateAccountDialogFragment;
    .locals 3
    .parameter "note"

    .prologue
    .line 41
    new-instance v1, Lcom/android/email/activity/setup/DuplicateAccountDialogFragment;

    invoke-direct {v1}, Lcom/android/email/activity/setup/DuplicateAccountDialogFragment;-><init>()V

    .line 42
    .local v1, f:Lcom/android/email/activity/setup/DuplicateAccountDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 43
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "NoteDialogFragment.AccountName"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v1, v0}, Lcom/android/email/activity/setup/DuplicateAccountDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 45
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/android/email/activity/setup/DuplicateAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 51
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/DuplicateAccountDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "NoteDialogFragment.AccountName"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, accountName:Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0800ce

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0800cf

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080042

    new-instance v4, Lcom/android/email/activity/setup/DuplicateAccountDialogFragment$1;

    invoke-direct {v4, p0}, Lcom/android/email/activity/setup/DuplicateAccountDialogFragment$1;-><init>(Lcom/android/email/activity/setup/DuplicateAccountDialogFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.class public Lcom/android/email/activity/setup/AccountSetupBasics$NoteDialogFragment;
.super Landroid/app/DialogFragment;
.source "AccountSetupBasics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSetupBasics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoteDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2083
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/android/email/activity/setup/AccountSetupBasics$NoteDialogFragment;
    .locals 3
    .parameter "note"

    .prologue
    .line 2093
    new-instance v1, Lcom/android/email/activity/setup/AccountSetupBasics$NoteDialogFragment;

    invoke-direct {v1}, Lcom/android/email/activity/setup/AccountSetupBasics$NoteDialogFragment;-><init>()V

    .line 2094
    .local v1, f:Lcom/android/email/activity/setup/AccountSetupBasics$NoteDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2095
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "NoteDialogFragment.Note"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2096
    invoke-virtual {v1, v0}, Lcom/android/email/activity/setup/AccountSetupBasics$NoteDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 2097
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 2102
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics$NoteDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2103
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics$NoteDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "NoteDialogFragment.Note"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2105
    .local v1, note:Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040014

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080042

    new-instance v4, Lcom/android/email/activity/setup/AccountSetupBasics$NoteDialogFragment$1;

    invoke-direct {v4, p0}, Lcom/android/email/activity/setup/AccountSetupBasics$NoteDialogFragment$1;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics$NoteDialogFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080043

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

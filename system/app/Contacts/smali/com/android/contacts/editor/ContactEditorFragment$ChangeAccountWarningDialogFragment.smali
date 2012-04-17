.class public Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;
.super Landroid/app/DialogFragment;
.source "ContactEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/ContactEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChangeAccountWarningDialogFragment"
.end annotation


# static fields
.field private static mCurrentAccount:Lcom/android/contacts/model/AccountWithDataSet;

.field private static mCurrentState:Lcom/android/contacts/model/EntityDelta;

.field private static mNewAccount:Lcom/android/contacts/model/AccountWithDataSet;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1075
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$1000()Lcom/android/contacts/model/AccountWithDataSet;
    .locals 1

    .prologue
    .line 1075
    sget-object v0, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;->mNewAccount:Lcom/android/contacts/model/AccountWithDataSet;

    return-object v0
.end method

.method static synthetic access$800()Lcom/android/contacts/model/EntityDelta;
    .locals 1

    .prologue
    .line 1075
    sget-object v0, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;->mCurrentState:Lcom/android/contacts/model/EntityDelta;

    return-object v0
.end method

.method static synthetic access$900()Lcom/android/contacts/model/AccountWithDataSet;
    .locals 1

    .prologue
    .line 1075
    sget-object v0, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;->mCurrentAccount:Lcom/android/contacts/model/AccountWithDataSet;

    return-object v0
.end method

.method public static show(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountWithDataSet;Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 3
    .parameter "fragment"
    .parameter "currentState"
    .parameter "currentAccount"
    .parameter "newAccount"

    .prologue
    .line 1082
    new-instance v0, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;

    invoke-direct {v0}, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;-><init>()V

    .line 1083
    .local v0, dialog:Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1085
    sput-object p1, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;->mCurrentState:Lcom/android/contacts/model/EntityDelta;

    .line 1086
    sput-object p2, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;->mCurrentAccount:Lcom/android/contacts/model/AccountWithDataSet;

    .line 1087
    sput-object p3, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;->mNewAccount:Lcom/android/contacts/model/AccountWithDataSet;

    .line 1089
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "ChangeAccountWarning"

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1090
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 1094
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a024d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a024e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment$1;-><init>(Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1108
    .local v0, dialog:Landroid/app/AlertDialog;
    return-object v0
.end method

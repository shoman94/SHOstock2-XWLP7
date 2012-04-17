.class public final Lcom/android/contacts/editor/SelectAccountDialogFragment;
.super Landroid/app/DialogFragment;
.source "SelectAccountDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/editor/SelectAccountDialogFragment;Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->onAccountSelected(Lcom/android/contacts/model/AccountWithDataSet;)V

    return-void
.end method

.method private onAccountSelected(Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 4
    .parameter "account"

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    .line 111
    .local v1, targetFragment:Landroid/app/Fragment;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 112
    check-cast v0, Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;

    .line 113
    .local v0, target:Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;
    invoke-virtual {p0}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "extra_args"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;->onAccountChosen(Lcom/android/contacts/model/AccountWithDataSet;Landroid/os/Bundle;)V

    .line 115
    .end local v0           #target:Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;
    :cond_0
    return-void
.end method

.method public static show(Landroid/app/FragmentManager;Landroid/app/Fragment;ILcom/android/contacts/util/AccountsListAdapter$AccountListFilter;Landroid/os/Bundle;)V
    .locals 3
    .parameter "fragmentManager"
    .parameter
    .parameter "titleResourceId"
    .parameter "accountListFilter"
    .parameter "extraArgs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Landroid/app/Fragment;",
            ":",
            "Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;",
            ">(",
            "Landroid/app/FragmentManager;",
            "TF;I",
            "Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, targetFragment:Landroid/app/Fragment;,"TF;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 61
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "title_res_id"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 62
    const-string v2, "list_filter"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 63
    const-string v2, "extra_args"

    if-nez p4, :cond_0

    sget-object p4, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .end local p4
    :cond_0
    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 65
    new-instance v1, Lcom/android/contacts/editor/SelectAccountDialogFragment;

    invoke-direct {v1}, Lcom/android/contacts/editor/SelectAccountDialogFragment;-><init>()V

    .line 66
    .local v1, instance:Lcom/android/contacts/editor/SelectAccountDialogFragment;
    invoke-virtual {v1, v0}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 67
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 68
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 69
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    .line 100
    .local v1, targetFragment:Landroid/app/Fragment;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 101
    check-cast v0, Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;

    .line 102
    .local v0, target:Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;
    invoke-interface {v0}, Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;->onAccountSelectorCancelled()V

    .line 104
    .end local v0           #target:Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 73
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 74
    .local v2, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 76
    .local v1, args:Landroid/os/Bundle;
    const-string v6, "list_filter"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    .line 77
    .local v4, filter:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;
    new-instance v0, Lcom/android/contacts/util/AccountsListAdapter;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6, v4}, Lcom/android/contacts/util/AccountsListAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;)V

    .line 80
    .local v0, accountAdapter:Lcom/android/contacts/util/AccountsListAdapter;
    new-instance v3, Lcom/android/contacts/editor/SelectAccountDialogFragment$1;

    invoke-direct {v3, p0, v0}, Lcom/android/contacts/editor/SelectAccountDialogFragment$1;-><init>(Lcom/android/contacts/editor/SelectAccountDialogFragment;Lcom/android/contacts/util/AccountsListAdapter;)V

    .line 90
    .local v3, clickListener:Landroid/content/DialogInterface$OnClickListener;
    const-string v6, "title_res_id"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 91
    const/4 v6, 0x0

    invoke-virtual {v2, v0, v6, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 92
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 93
    .local v5, result:Landroid/app/AlertDialog;
    return-object v5
.end method

.class Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment$4;
.super Ljava/lang/Object;
.source "ChangeAccountDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;

.field final synthetic val$accountAdapter:Lcom/android/contacts/util/AccountsListAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;Lcom/android/contacts/util/AccountsListAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment$4;->this$0:Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;

    iput-object p2, p0, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment$4;->val$accountAdapter:Lcom/android/contacts/util/AccountsListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment$4;->this$0:Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment$4;->val$accountAdapter:Lcom/android/contacts/util/AccountsListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/contacts/util/AccountsListAdapter;->getItem(I)Lcom/android/contacts/model/AccountWithDataSet;

    move-result-object v1

    #calls: Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;->onAccountSelected(Lcom/android/contacts/model/AccountWithDataSet;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;->access$000(Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;Lcom/android/contacts/model/AccountWithDataSet;)V

    .line 137
    return-void
.end method

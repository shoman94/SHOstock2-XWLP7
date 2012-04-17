.class Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment$1;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1099
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment$1;->this$0:Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment$1;->this$0:Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;

    invoke-virtual {v0}, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-static {}, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;->access$800()Lcom/android/contacts/model/EntityDelta;

    move-result-object v1

    invoke-static {}, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;->access$900()Lcom/android/contacts/model/AccountWithDataSet;

    move-result-object v2

    invoke-static {}, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;->access$1000()Lcom/android/contacts/model/AccountWithDataSet;

    move-result-object v3

    #calls: Lcom/android/contacts/editor/ContactEditorFragment;->rebindEditorsForNewContact(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountWithDataSet;Lcom/android/contacts/model/AccountWithDataSet;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->access$700(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountWithDataSet;Lcom/android/contacts/model/AccountWithDataSet;)V

    .line 1103
    return-void
.end method

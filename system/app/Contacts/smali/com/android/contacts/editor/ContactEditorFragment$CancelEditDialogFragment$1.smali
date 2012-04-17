.class Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment$1;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1442
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment$1;->this$0:Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1445
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment$1;->this$0:Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment;

    invoke-virtual {v0}, Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/ContactEditorFragment;

    #calls: Lcom/android/contacts/editor/ContactEditorFragment;->doRevertAction()V
    invoke-static {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1100(Lcom/android/contacts/editor/ContactEditorFragment;)V

    .line 1446
    return-void
.end method

.class Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment$3;
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


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment$3;->this$0:Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 120
    invoke-static {}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->getEditorUtilInstance()Lcom/android/contacts/editor/ContactEditorUtils;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;->access$102(Lcom/android/contacts/editor/ContactEditorUtils;)Lcom/android/contacts/editor/ContactEditorUtils;

    .line 121
    invoke-static {}, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;->access$100()Lcom/android/contacts/editor/ContactEditorUtils;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment$3;->this$0:Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment$3;->this$0:Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;->access$100()Lcom/android/contacts/editor/ContactEditorUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/editor/ContactEditorUtils;->createAddWritableAccountIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 124
    :cond_0
    return-void
.end method

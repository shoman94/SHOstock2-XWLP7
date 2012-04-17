.class Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment$2;
.super Ljava/lang/Object;
.source "MessageViewFragmentBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;

.field final synthetic val$checkboxsmime:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8688
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment$2;->this$0:Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;

    iput-object p2, p0, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment$2;->val$checkboxsmime:Landroid/widget/CheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 8690
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment$2;->this$0:Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->getOwner()Lcom/android/email/activity/MessageViewFragmentBase;

    move-result-object v1

    iget-object v1, v1, Lcom/android/email/activity/MessageViewFragmentBase;->mUserChoiceDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 8691
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment$2;->this$0:Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment$2;->val$checkboxsmime:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->mAlwaysDecryptOrVerifyMails:Z

    .line 8692
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment$2;->this$0:Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase;

    .line 8693
    .local v0, parentFragment:Lcom/android/email/activity/MessageViewFragmentBase;
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment$2;->this$0:Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;

    iget-boolean v1, v1, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->mAlwaysDecryptOrVerifyMails:Z

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->setAlwaysDecryptOrVerifyMails(Z)V

    .line 8695
    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->startSmimeProcessing()V

    .line 8696
    return-void
.end method

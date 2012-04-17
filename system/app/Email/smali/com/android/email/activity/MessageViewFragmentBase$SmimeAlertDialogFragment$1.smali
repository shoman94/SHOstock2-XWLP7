.class Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment$1;
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


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 8699
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment$1;->this$0:Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 8702
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment$1;->this$0:Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase$SmimeAlertDialogFragment;->getOwner()Lcom/android/email/activity/MessageViewFragmentBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mUserChoiceDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 8703
    return-void
.end method

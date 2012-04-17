.class Lcom/android/email/activity/setup/AccountSetupBasics$NoteDialogFragment$1;
.super Ljava/lang/Object;
.source "AccountSetupBasics.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupBasics$NoteDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupBasics$NoteDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupBasics$NoteDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 2108
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupBasics$NoteDialogFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics$NoteDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2110
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics$NoteDialogFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics$NoteDialogFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/setup/AccountSetupBasics$NoteDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2111
    .local v0, a:Landroid/app/Activity;
    instance-of v1, v0, Lcom/android/email/activity/setup/AccountSetupBasics;

    if-eqz v1, :cond_0

    .line 2112
    check-cast v0, Lcom/android/email/activity/setup/AccountSetupBasics;

    .end local v0           #a:Landroid/app/Activity;
    #calls: Lcom/android/email/activity/setup/AccountSetupBasics;->finishAutoSetup()V
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$800(Lcom/android/email/activity/setup/AccountSetupBasics;)V

    .line 2114
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics$NoteDialogFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics$NoteDialogFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/setup/AccountSetupBasics$NoteDialogFragment;->dismiss()V

    .line 2115
    return-void
.end method

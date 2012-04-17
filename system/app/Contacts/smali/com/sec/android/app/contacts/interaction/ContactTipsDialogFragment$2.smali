.class Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment$2;
.super Ljava/lang/Object;
.source "ContactTipsDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment;

    iput-object p2, p0, Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment$2;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment$2;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment;->neverShowContactTipsAgain(Landroid/content/Context;)V

    .line 82
    :cond_0
    return-void
.end method

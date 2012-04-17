.class Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment$1;
.super Ljava/lang/Object;
.source "ContactTipsDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 67
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment;

    iput-object p2, p0, Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment$1;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 70
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment$1;->val$checkBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment$1;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 71
    return-void

    .line 70
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class final Lcom/sec/android/app/dialertab/calllog/CallLogFragment$6;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->showAddtoRejectListConfirmDlg(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$not_show_again:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Landroid/widget/CheckBox;)V
    .locals 0
    .parameter

    .prologue
    .line 590
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$6;->val$not_show_again:Landroid/widget/CheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 592
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$6;->val$not_show_again:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCheckedBefore:Z

    .line 593
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCheckedBefore:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$200()Z

    move-result v0

    if-nez v0, :cond_0

    .line 594
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$202(Z)Z

    .line 595
    :cond_0
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$300()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$400()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockContact(Landroid/content/Context;Ljava/lang/String;)V

    .line 596
    return-void
.end method

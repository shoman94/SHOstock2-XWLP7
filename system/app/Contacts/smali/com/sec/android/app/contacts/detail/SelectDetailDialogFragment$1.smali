.class Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$1;
.super Ljava/lang/Object;
.source "SelectDetailDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;

.field final synthetic val$adapter:Landroid/widget/ArrayAdapter;

.field final synthetic val$data:Ljava/lang/String;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;Ljava/lang/String;Landroid/widget/ArrayAdapter;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;

    iput-object p2, p0, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$1;->val$data:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$1;->val$adapter:Landroid/widget/ArrayAdapter;

    iput p4, p0, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$1;->val$type:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 78
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 80
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$1;->val$data:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$1;->val$data:Ljava/lang/String;

    .line 81
    .local v0, item:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;

    iget v2, p0, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$1;->val$type:I

    #calls: Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;->onItemSelected(IILjava/lang/String;)V
    invoke-static {v1, v2, p2, v0}, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;->access$000(Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;IILjava/lang/String;)V

    .line 82
    return-void

    .line 80
    .end local v0           #item:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$1;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    goto :goto_0
.end method

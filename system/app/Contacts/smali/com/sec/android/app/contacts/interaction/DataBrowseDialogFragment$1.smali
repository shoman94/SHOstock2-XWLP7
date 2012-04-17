.class Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$1;
.super Ljava/lang/Object;
.source "DataBrowseDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;

.field final synthetic val$setAsDefaultCheckBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;

    iput-object p2, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$1;->val$setAsDefaultCheckBox:Landroid/widget/CheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment$1;->val$setAsDefaultCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    #setter for: Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->mChecked:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;->access$002(Lcom/sec/android/app/contacts/interaction/DataBrowseDialogFragment;Z)Z

    .line 83
    return-void
.end method

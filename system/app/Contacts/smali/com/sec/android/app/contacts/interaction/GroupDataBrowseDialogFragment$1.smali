.class Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment$1;
.super Ljava/lang/Object;
.source "GroupDataBrowseDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;

.field final synthetic val$setAsDefaultCheckBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;

    iput-object p2, p0, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment$1;->val$setAsDefaultCheckBox:Landroid/widget/CheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment$1;->val$setAsDefaultCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    #setter for: Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;->mChecked:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;->access$002(Lcom/sec/android/app/contacts/interaction/GroupDataBrowseDialogFragment;Z)Z

    .line 80
    return-void
.end method

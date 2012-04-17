.class Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeAdapter$1;
.super Ljava/lang/Object;
.source "MessageViewFragmentBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeAdapter;

.field final synthetic val$check:Landroid/widget/RadioButton;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeAdapter;ILandroid/widget/RadioButton;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 7253
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeAdapter$1;->this$1:Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeAdapter;

    iput p2, p0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeAdapter$1;->val$position:I

    iput-object p3, p0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeAdapter$1;->val$check:Landroid/widget/RadioButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 7255
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeAdapter$1;->this$1:Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeAdapter;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeAdapter;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$6200(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeAdapter$1;->val$position:I

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeAdapter$1;->val$check:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 7256
    return-void
.end method

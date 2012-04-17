.class Lcom/android/email/activity/MessageListFragment$7;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageListFragment;->onMultiDelete(Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListFragment;

.field final synthetic val$messageIds:[J


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageListFragment;[J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2670
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment$7;->this$0:Lcom/android/email/activity/MessageListFragment;

    iput-object p2, p0, Lcom/android/email/activity/MessageListFragment$7;->val$messageIds:[J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 2672
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$7;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/email/activity/MessageListFragment;->access$200(Lcom/android/email/activity/MessageListFragment;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0800c4

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2673
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$7;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/email/activity/MessageListFragment;->access$200(Lcom/android/email/activity/MessageListFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$7;->val$messageIds:[J

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$7;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListFragment;->getAccountId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/Controller;->deleteMessage([JJ)V

    .line 2674
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$7;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->onDeselectAll()V

    .line 2675
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2676
    return-void
.end method

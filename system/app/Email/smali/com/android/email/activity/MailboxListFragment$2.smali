.class Lcom/android/email/activity/MailboxListFragment$2;
.super Ljava/lang/Object;
.source "MailboxListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MailboxListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MailboxListFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MailboxListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 428
    iput-object p1, p0, Lcom/android/email/activity/MailboxListFragment$2;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 430
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$2;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #setter for: Lcom/android/email/activity/MailboxListFragment;->isMoveScreen:Z
    invoke-static {v0, v2}, Lcom/android/email/activity/MailboxListFragment;->access$202(Lcom/android/email/activity/MailboxListFragment;Z)Z

    .line 431
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$2;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #setter for: Lcom/android/email/activity/MailboxListFragment;->mIsFromFolderFunction:Z
    invoke-static {v0, v2}, Lcom/android/email/activity/MailboxListFragment;->access$302(Lcom/android/email/activity/MailboxListFragment;Z)Z

    .line 432
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$2;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mTitleTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/email/activity/MailboxListFragment;->access$400(Lcom/android/email/activity/MailboxListFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0805b9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 433
    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$502(I)I

    .line 434
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$2;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageListXL;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXL;->showDialog2(I)V

    .line 435
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$2;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/email/activity/MailboxListFragment;->access$600(Lcom/android/email/activity/MailboxListFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 436
    return-void
.end method

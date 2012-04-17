.class Lcom/android/email/activity/MailboxListFragment$4;
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
    .line 455
    iput-object p1, p0, Lcom/android/email/activity/MailboxListFragment$4;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 457
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$4;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mTitleTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/email/activity/MailboxListFragment;->access$400(Lcom/android/email/activity/MailboxListFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f080035

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 458
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$4;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #setter for: Lcom/android/email/activity/MailboxListFragment;->mIsFromFolderFunction:Z
    invoke-static {v0, v2}, Lcom/android/email/activity/MailboxListFragment;->access$302(Lcom/android/email/activity/MailboxListFragment;Z)Z

    .line 459
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$4;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxesAdapter;
    invoke-static {v0}, Lcom/android/email/activity/MailboxListFragment;->access$700(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxesAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MailboxesAdapter;->setDeleteMode(Z)V

    .line 460
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/android/email/activity/MailboxListFragment;->access$502(I)I

    .line 461
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$4;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/email/activity/MailboxListFragment;->access$600(Lcom/android/email/activity/MailboxListFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 462
    return-void
.end method

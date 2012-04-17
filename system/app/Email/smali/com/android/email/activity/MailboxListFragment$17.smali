.class Lcom/android/email/activity/MailboxListFragment$17;
.super Ljava/lang/Object;
.source "MailboxListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MailboxListFragment;->moveFolder()V
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
    .line 1635
    iput-object p1, p0, Lcom/android/email/activity/MailboxListFragment$17;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1637
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1638
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$17;->this$0:Lcom/android/email/activity/MailboxListFragment;

    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment$17;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mMailboxList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/email/activity/MailboxListFragment;->access$1900(Lcom/android/email/activity/MailboxListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lcom/android/email/activity/MailboxListFragment$17;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mSelectedPosition:I
    invoke-static {v3}, Lcom/android/email/activity/MailboxListFragment;->access$1800(Lcom/android/email/activity/MailboxListFragment;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;

    invoke-virtual {v1}, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->getId()J

    move-result-wide v3

    #setter for: Lcom/android/email/activity/MailboxListFragment;->mDestMailboxId:J
    invoke-static {v2, v3, v4}, Lcom/android/email/activity/MailboxListFragment;->access$2202(Lcom/android/email/activity/MailboxListFragment;J)J

    .line 1639
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment$17;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mDestMailboxId:J
    invoke-static {v1}, Lcom/android/email/activity/MailboxListFragment;->access$2200(Lcom/android/email/activity/MailboxListFragment;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/email/activity/MailboxListFragment$17;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mSelectedContextMailboxId:J
    invoke-static {v3}, Lcom/android/email/activity/MailboxListFragment;->access$1100(Lcom/android/email/activity/MailboxListFragment;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 1640
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment$17;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    .line 1641
    .local v0, controller:Lcom/android/email/Controller;
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment$17;->this$0:Lcom/android/email/activity/MailboxListFragment;

    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$17;->this$0:Lcom/android/email/activity/MailboxListFragment;

    const v3, 0x7f080503

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/email/activity/MailboxListFragment;->showProgressDialog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/email/activity/MailboxListFragment;->access$900(Lcom/android/email/activity/MailboxListFragment;Ljava/lang/String;)V

    .line 1642
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment$17;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mSelectedContextMailboxId:J
    invoke-static {v1}, Lcom/android/email/activity/MailboxListFragment;->access$1100(Lcom/android/email/activity/MailboxListFragment;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/email/activity/MailboxListFragment$17;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mDestMailboxId:J
    invoke-static {v3}, Lcom/android/email/activity/MailboxListFragment;->access$2200(Lcom/android/email/activity/MailboxListFragment;)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/Controller;->moveFolder(JJ)V

    .line 1647
    .end local v0           #controller:Lcom/android/email/Controller;
    :goto_0
    return-void

    .line 1644
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment$17;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0804fe

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.class Lcom/android/email/activity/MailboxListFragment$10;
.super Ljava/lang/Object;
.source "MailboxListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MailboxListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MailboxListFragment;


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1450
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1451
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$10;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mSelectedPosition:I
    invoke-static {v0}, Lcom/android/email/activity/MailboxListFragment;->access$1800(Lcom/android/email/activity/MailboxListFragment;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1452
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$10;->this$0:Lcom/android/email/activity/MailboxListFragment;

    const/4 v1, 0x0

    #calls: Lcom/android/email/activity/MailboxListFragment;->createMailboxDialog(Z)V
    invoke-static {v0, v1}, Lcom/android/email/activity/MailboxListFragment;->access$2100(Lcom/android/email/activity/MailboxListFragment;Z)V

    .line 1457
    :goto_0
    return-void

    .line 1454
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$10;->this$0:Lcom/android/email/activity/MailboxListFragment;

    const/4 v1, 0x1

    #calls: Lcom/android/email/activity/MailboxListFragment;->createMailboxDialog(Z)V
    invoke-static {v0, v1}, Lcom/android/email/activity/MailboxListFragment;->access$2100(Lcom/android/email/activity/MailboxListFragment;Z)V

    goto :goto_0
.end method

.class Lcom/android/email/activity/MailboxListFragment$20;
.super Ljava/lang/Object;
.source "MailboxListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MailboxListFragment;->onDeleteSmsPopup([JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MailboxListFragment;

.field final synthetic val$account_id:J

.field final synthetic val$msg:[J


# direct methods
.method constructor <init>(Lcom/android/email/activity/MailboxListFragment;[JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2592
    iput-object p1, p0, Lcom/android/email/activity/MailboxListFragment$20;->this$0:Lcom/android/email/activity/MailboxListFragment;

    iput-object p2, p0, Lcom/android/email/activity/MailboxListFragment$20;->val$msg:[J

    iput-wide p3, p0, Lcom/android/email/activity/MailboxListFragment$20;->val$account_id:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 2594
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment$20;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/email/activity/MailboxListFragment;->access$600(Lcom/android/email/activity/MailboxListFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    .line 2595
    .local v0, controller:Lcom/android/email/Controller;
    const/4 v1, 0x0

    sput v1, Lcom/android/email/activity/MessageListFragment;->sms_selected:I

    .line 2596
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment$20;->val$msg:[J

    iget-wide v2, p0, Lcom/android/email/activity/MailboxListFragment$20;->val$account_id:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/Controller;->deleteMessage([JJ)V

    .line 2597
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment$20;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/email/activity/MailboxListFragment;->access$600(Lcom/android/email/activity/MailboxListFragment;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0800c4

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2598
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2600
    return-void
.end method

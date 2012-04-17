.class Lcom/android/email/activity/MessageViewFragment$1$1;
.super Ljava/lang/Object;
.source "MessageViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageViewFragment$1;->sendMeetingEditedResponseCallback(ZJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/MessageViewFragment$1;

.field final synthetic val$draftId:J

.field final synthetic val$messageId:J


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageViewFragment$1;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 332
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragment$1$1;->this$1:Lcom/android/email/activity/MessageViewFragment$1;

    iput-wide p2, p0, Lcom/android/email/activity/MessageViewFragment$1$1;->val$draftId:J

    iput-wide p4, p0, Lcom/android/email/activity/MessageViewFragment$1$1;->val$messageId:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 336
    iget-wide v0, p0, Lcom/android/email/activity/MessageViewFragment$1$1;->val$draftId:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$1$1;->this$1:Lcom/android/email/activity/MessageViewFragment$1;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragment$1;->this$0:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f08050b

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$1$1;->this$1:Lcom/android/email/activity/MessageViewFragment$1;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragment$1;->this$0:Lcom/android/email/activity/MessageViewFragment;

    #getter for: Lcom/android/email/activity/MessageViewFragment;->mPreviousMeetingResponseMsgId:J
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragment;->access$000(Lcom/android/email/activity/MessageViewFragment;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/email/activity/MessageViewFragment$1$1;->val$messageId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$1$1;->this$1:Lcom/android/email/activity/MessageViewFragment$1;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragment$1;->this$0:Lcom/android/email/activity/MessageViewFragment;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$1$1;->this$1:Lcom/android/email/activity/MessageViewFragment$1;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragment$1;->this$0:Lcom/android/email/activity/MessageViewFragment;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 346
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$1$1;->this$1:Lcom/android/email/activity/MessageViewFragment$1;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragment$1;->this$0:Lcom/android/email/activity/MessageViewFragment;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$1$1;->this$1:Lcom/android/email/activity/MessageViewFragment$1;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragment$1;->this$0:Lcom/android/email/activity/MessageViewFragment;

    const-wide/16 v1, -0x1

    #setter for: Lcom/android/email/activity/MessageViewFragment;->mPreviousMeetingResponseMsgId:J
    invoke-static {v0, v1, v2}, Lcom/android/email/activity/MessageViewFragment;->access$002(Lcom/android/email/activity/MessageViewFragment;J)J

    .line 349
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$1$1;->this$1:Lcom/android/email/activity/MessageViewFragment$1;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragment$1;->this$0:Lcom/android/email/activity/MessageViewFragment;

    const/4 v1, -0x1

    #setter for: Lcom/android/email/activity/MessageViewFragment;->mPreviousMeetingResponse:I
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageViewFragment;->access$102(Lcom/android/email/activity/MessageViewFragment;I)I

    .line 350
    return-void
.end method

.class Lcom/android/email/activity/MessageViewFragment$9;
.super Ljava/lang/Object;
.source "MessageViewFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageViewFragment;->onRespondToInvite(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragment;

.field final synthetic val$message:Lcom/android/emailcommon/provider/EmailContent$Message;

.field final synthetic val$response:I

.field final synthetic val$toastResId:I


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageViewFragment;IILcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1121
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragment$9;->this$0:Lcom/android/email/activity/MessageViewFragment;

    iput p2, p0, Lcom/android/email/activity/MessageViewFragment$9;->val$response:I

    iput p3, p0, Lcom/android/email/activity/MessageViewFragment$9;->val$toastResId:I

    iput-object p4, p0, Lcom/android/email/activity/MessageViewFragment$9;->val$message:Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "arg0"
    .parameter "pos"

    .prologue
    const v1, 0x7f0800b4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1125
    packed-switch p2, :pswitch_data_0

    .line 1161
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$9;->this$0:Lcom/android/email/activity/MessageViewFragment;

    iget v1, p0, Lcom/android/email/activity/MessageViewFragment$9;->val$response:I

    #setter for: Lcom/android/email/activity/MessageViewFragment;->mPreviousMeetingResponse:I
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageViewFragment;->access$102(Lcom/android/email/activity/MessageViewFragment;I)I

    .line 1164
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$9;->this$0:Lcom/android/email/activity/MessageViewFragment;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment$9;->val$message:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    #setter for: Lcom/android/email/activity/MessageViewFragment;->mPreviousMeetingResponseMsgId:J
    invoke-static {v0, v1, v2}, Lcom/android/email/activity/MessageViewFragment;->access$002(Lcom/android/email/activity/MessageViewFragment;J)J

    .line 1166
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$9;->this$0:Lcom/android/email/activity/MessageViewFragment;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1167
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$9;->this$0:Lcom/android/email/activity/MessageViewFragment;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mInviteTab:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1168
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$9;->this$0:Lcom/android/email/activity/MessageViewFragment;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragment;->setCurrentTab(I)V

    .line 1169
    :goto_1
    return-void

    .line 1127
    :pswitch_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$9;->this$0:Lcom/android/email/activity/MessageViewFragment;

    #getter for: Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragment;->access$600(Lcom/android/email/activity/MessageViewFragment;)Lcom/android/email/activity/MessageViewFragment$Callback;

    move-result-object v0

    iget v1, p0, Lcom/android/email/activity/MessageViewFragment$9;->val$response:I

    or-int/lit8 v1, v1, 0x20

    invoke-interface {v0, v1}, Lcom/android/email/activity/MessageViewFragment$Callback;->onRespondedToInvite(I)V

    goto :goto_0

    .line 1131
    :pswitch_1
    invoke-static {}, Lcom/android/email/EmailUtility;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1132
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$9;->this$0:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    .line 1134
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$9;->this$0:Lcom/android/email/activity/MessageViewFragment;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingYes:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1135
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$9;->this$0:Lcom/android/email/activity/MessageViewFragment;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingMaybe:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1136
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$9;->this$0:Lcom/android/email/activity/MessageViewFragment;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingNo:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 1140
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$9;->this$0:Lcom/android/email/activity/MessageViewFragment;

    #getter for: Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragment;->access$600(Lcom/android/email/activity/MessageViewFragment;)Lcom/android/email/activity/MessageViewFragment$Callback;

    move-result-object v0

    iget v1, p0, Lcom/android/email/activity/MessageViewFragment$9;->val$response:I

    or-int/lit8 v1, v1, 0x40

    invoke-interface {v0, v1}, Lcom/android/email/activity/MessageViewFragment$Callback;->onRespondedToInvite(I)V

    .line 1143
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$9;->this$0:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/android/email/activity/MessageViewFragment$9;->val$toastResId:I

    invoke-static {v0, v1, v2}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    goto :goto_0

    .line 1148
    :pswitch_2
    invoke-static {}, Lcom/android/email/EmailUtility;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1149
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$9;->this$0:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    .line 1151
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$9;->this$0:Lcom/android/email/activity/MessageViewFragment;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingYes:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1152
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$9;->this$0:Lcom/android/email/activity/MessageViewFragment;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingMaybe:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1153
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$9;->this$0:Lcom/android/email/activity/MessageViewFragment;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mMeetingNo:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 1156
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$9;->this$0:Lcom/android/email/activity/MessageViewFragment;

    #getter for: Lcom/android/email/activity/MessageViewFragment;->mCallback:Lcom/android/email/activity/MessageViewFragment$Callback;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragment;->access$600(Lcom/android/email/activity/MessageViewFragment;)Lcom/android/email/activity/MessageViewFragment$Callback;

    move-result-object v0

    iget v1, p0, Lcom/android/email/activity/MessageViewFragment$9;->val$response:I

    or-int/lit8 v1, v1, 0x10

    invoke-interface {v0, v1}, Lcom/android/email/activity/MessageViewFragment$Callback;->onRespondedToInvite(I)V

    goto/16 :goto_0

    .line 1125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

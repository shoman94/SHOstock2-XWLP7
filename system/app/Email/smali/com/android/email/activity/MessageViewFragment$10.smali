.class Lcom/android/email/activity/MessageViewFragment$10;
.super Landroid/os/AsyncTask;
.source "MessageViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageViewFragment;->onDeleteCalEventClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragment;

.field final synthetic val$message:Lcom/android/emailcommon/provider/EmailContent$Message;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageViewFragment;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1202
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragment$10;->this$0:Lcom/android/email/activity/MessageViewFragment;

    iput-object p2, p0, Lcom/android/email/activity/MessageViewFragment$10;->val$message:Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter "arg0"

    .prologue
    .line 1205
    new-instance v1, Lcom/android/emailcommon/mail/PackedString;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragment$10;->val$message:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/PackedString;-><init>(Ljava/lang/String;)V

    .line 1206
    .local v1, meetingInfo:Lcom/android/emailcommon/mail/PackedString;
    const-string v2, "UID"

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1207
    .local v0, eventUID:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragment$10;->this$0:Lcom/android/email/activity/MessageViewFragment;

    iget-object v2, v2, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "sync_data2=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 1215
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1216
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$10;->this$0:Lcom/android/email/activity/MessageViewFragment;

    #getter for: Lcom/android/email/activity/MessageViewFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragment;->access$700(Lcom/android/email/activity/MessageViewFragment;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f08015b

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1218
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$10;->this$0:Lcom/android/email/activity/MessageViewFragment;

    #calls: Lcom/android/email/activity/MessageViewFragment;->onDelete()V
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragment;->access$500(Lcom/android/email/activity/MessageViewFragment;)V

    .line 1219
    return-void
.end method

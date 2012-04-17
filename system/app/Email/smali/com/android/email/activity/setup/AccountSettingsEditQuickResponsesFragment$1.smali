.class Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$1;
.super Landroid/database/ContentObserver;
.source "AccountSettingsEditQuickResponsesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 9
    .parameter "selfChange"

    .prologue
    const/4 v8, 0x0

    .line 292
    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$QuickResponseFinder;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->access$300(Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;)Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->access$400(Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mQuickResponsesView:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->access$500(Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;)Landroid/widget/ListView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->access$600(Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;

    invoke-virtual {v6}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$QuickResponseFinder;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;JLandroid/widget/ListView;Landroid/content/Context;Landroid/app/FragmentManager;Landroid/widget/AdapterView$OnItemClickListener;Z)V

    new-array v1, v8, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$QuickResponseFinder;->executeParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 295
    return-void
.end method

.class public Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$QuickResponseFinder;
.super Lcom/android/emailcommon/utility/EmailAsyncTask;
.source "AccountSettingsEditQuickResponsesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QuickResponseFinder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/emailcommon/utility/EmailAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Lcom/android/emailcommon/provider/QuickResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccountId:J

.field private final mContext:Landroid/content/Context;

.field private final mFragmentManager:Landroid/app/FragmentManager;

.field private final mIsEditable:Z

.field private final mListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final mQuickResponsesView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;JLandroid/widget/ListView;Landroid/content/Context;Landroid/app/FragmentManager;Landroid/widget/AdapterView$OnItemClickListener;Z)V
    .locals 0
    .parameter "tracker"
    .parameter "accountId"
    .parameter "quickResponsesView"
    .parameter "context"
    .parameter "fragmentManager"
    .parameter "listener"
    .parameter "isEditable"

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/android/emailcommon/utility/EmailAsyncTask;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V

    .line 199
    iput-wide p2, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$QuickResponseFinder;->mAccountId:J

    .line 200
    iput-object p4, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$QuickResponseFinder;->mQuickResponsesView:Landroid/widget/ListView;

    .line 201
    iput-object p5, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$QuickResponseFinder;->mContext:Landroid/content/Context;

    .line 202
    iput-object p6, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$QuickResponseFinder;->mFragmentManager:Landroid/app/FragmentManager;

    .line 203
    iput-object p7, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$QuickResponseFinder;->mListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 204
    iput-boolean p8, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$QuickResponseFinder;->mIsEditable:Z

    .line 205
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 165
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$QuickResponseFinder;->doInBackground([Ljava/lang/Void;)[Lcom/android/emailcommon/provider/QuickResponse;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[Lcom/android/emailcommon/provider/QuickResponse;
    .locals 4
    .parameter "params"

    .prologue
    .line 209
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$QuickResponseFinder;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$QuickResponseFinder;->mAccountId:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/QuickResponse;->restoreQuickResponsesWithAccountId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/QuickResponse;

    move-result-object v0

    .line 211
    .local v0, quickResponses:[Lcom/android/emailcommon/provider/QuickResponse;
    return-object v0
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 165
    check-cast p1, [Lcom/android/emailcommon/provider/QuickResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$QuickResponseFinder;->onSuccess([Lcom/android/emailcommon/provider/QuickResponse;)V

    return-void
.end method

.method protected onSuccess([Lcom/android/emailcommon/provider/QuickResponse;)V
    .locals 6
    .parameter "quickResponseItems"

    .prologue
    .line 217
    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$QuickResponseFinder;->mIsEditable:Z

    if-eqz v1, :cond_0

    .line 218
    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$ArrayAdapterWithButtons;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$QuickResponseFinder;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$QuickResponseFinder;->mFragmentManager:Landroid/app/FragmentManager;

    iget-wide v4, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$QuickResponseFinder;->mAccountId:J

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$ArrayAdapterWithButtons;-><init>(Landroid/content/Context;[Lcom/android/emailcommon/provider/QuickResponse;Landroid/app/FragmentManager;J)V

    .line 225
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/emailcommon/provider/QuickResponse;>;"
    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$QuickResponseFinder;->mQuickResponsesView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 226
    return-void

    .line 221
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/emailcommon/provider/QuickResponse;>;"
    :cond_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$QuickResponseFinder;->mContext:Landroid/content/Context;

    const v2, 0x7f04005e

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 223
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/emailcommon/provider/QuickResponse;>;"
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$QuickResponseFinder;->mQuickResponsesView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsEditQuickResponsesFragment$QuickResponseFinder;->mListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

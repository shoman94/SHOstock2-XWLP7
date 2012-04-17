.class public Lcom/android/email/activity/MessageFileViewFragment;
.super Lcom/android/email/activity/MessageViewFragmentBase;
.source "MessageFileViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageFileViewFragment$LoadFileMessageTask;
    }
.end annotation


# static fields
.field public static EML_ACCOUNTID:I

.field private static sFragmentCount:I


# instance fields
.field private mFileEmailUri:Landroid/net/Uri;

.field private mLoadFileMessageTask:Lcom/android/email/activity/MessageFileViewFragment$LoadFileMessageTask;

.field private final mLock:Ljava/lang/Object;

.field private mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const v0, 0x7ffffffe

    sput v0, Lcom/android/email/activity/MessageFileViewFragment;->EML_ACCOUNTID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageFileViewFragment;->mLock:Ljava/lang/Object;

    .line 150
    return-void
.end method

.method static synthetic access$002(Lcom/android/email/activity/MessageFileViewFragment;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/email/activity/MessageFileViewFragment;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    return-object p1
.end method


# virtual methods
.method public clearContent()V
    .locals 2

    .prologue
    .line 102
    iget-object v1, p0, Lcom/android/email/activity/MessageFileViewFragment;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 103
    :try_start_0
    invoke-super {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->clearContent()V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageFileViewFragment;->mFileEmailUri:Landroid/net/Uri;

    .line 105
    monitor-exit v1

    .line 106
    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected isMessageSpecified()Z
    .locals 2

    .prologue
    .line 110
    iget-object v1, p0, Lcom/android/email/activity/MessageFileViewFragment;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/MessageFileViewFragment;->mFileEmailUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->onCreate(Landroid/os/Bundle;)V

    .line 60
    sget v0, Lcom/android/email/activity/MessageFileViewFragment;->sFragmentCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/email/activity/MessageFileViewFragment;->sFragmentCount:I

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase;->mIsEMLView:Z

    .line 62
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 68
    sget v0, Lcom/android/email/activity/MessageFileViewFragment;->sFragmentCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/email/activity/MessageFileViewFragment;->sFragmentCount:I

    .line 69
    sget v0, Lcom/android/email/activity/MessageFileViewFragment;->sFragmentCount:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageFileViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/android/email/activity/MessageFileViewFragment;->getController()Lcom/android/email/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/Controller;->deleteAttachmentMessages()V

    .line 73
    :cond_0
    invoke-super {p0}, Lcom/android/email/activity/MessageViewFragmentBase;->onDestroy()V

    .line 75
    iget-object v0, p0, Lcom/android/email/activity/MessageFileViewFragment;->mLoadFileMessageTask:Lcom/android/email/activity/MessageFileViewFragment$LoadFileMessageTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageFileViewFragment;->mLoadFileMessageTask:Lcom/android/email/activity/MessageFileViewFragment$LoadFileMessageTask;

    .line 77
    return-void
.end method

.method public openMessage(Landroid/net/Uri;)V
    .locals 3
    .parameter "fileEmailUri"

    .prologue
    const/4 v2, 0x0

    .line 84
    if-nez p1, :cond_0

    .line 85
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/MessageFileViewFragment;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 88
    :try_start_0
    iput-object p1, p0, Lcom/android/email/activity/MessageFileViewFragment;->mFileEmailUri:Landroid/net/Uri;

    .line 89
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    const/4 v0, 0x1

    invoke-super {p0, v2, v0}, Lcom/android/email/activity/MessageViewFragmentBase;->showContent(ZZ)V

    .line 93
    invoke-virtual {p0}, Lcom/android/email/activity/MessageFileViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0800be

    invoke-static {v0, v1, v2}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    .line 96
    new-instance v0, Lcom/android/email/activity/MessageFileViewFragment$LoadFileMessageTask;

    iget-object v1, p0, Lcom/android/email/activity/MessageFileViewFragment;->mFileEmailUri:Landroid/net/Uri;

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageFileViewFragment$LoadFileMessageTask;-><init>(Lcom/android/email/activity/MessageFileViewFragment;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageFileViewFragment;->mLoadFileMessageTask:Lcom/android/email/activity/MessageFileViewFragment$LoadFileMessageTask;

    .line 97
    iget-object v0, p0, Lcom/android/email/activity/MessageFileViewFragment;->mLoadFileMessageTask:Lcom/android/email/activity/MessageFileViewFragment$LoadFileMessageTask;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageFileViewFragment$LoadFileMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 98
    return-void

    .line 89
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected openMessageSync(Landroid/app/Activity;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 3
    .parameter "activity"

    .prologue
    .line 120
    iget-object v1, p0, Lcom/android/email/activity/MessageFileViewFragment;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/MessageFileViewFragment;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-nez v0, :cond_0

    .line 127
    const v0, 0x7f0800bc

    const/4 v2, 0x1

    invoke-static {p1, v0, v2}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    .line 129
    const/4 v0, 0x0

    monitor-exit v1

    .line 131
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageFileViewFragment;->mMessage:Lcom/android/emailcommon/provider/EmailContent$Message;

    monitor-exit v1

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected reloadUiFromMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Z)V
    .locals 3
    .parameter "message"
    .parameter "okToFetch"

    .prologue
    .line 141
    iget-object v1, p0, Lcom/android/email/activity/MessageFileViewFragment;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 143
    :try_start_0
    iget v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 144
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 146
    :cond_0
    :try_start_1
    invoke-super {p0, p1, p2}, Lcom/android/email/activity/MessageViewFragmentBase;->reloadUiFromMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Z)V

    .line 147
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    return-void
.end method

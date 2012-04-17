.class Lcom/android/email/activity/MessageListFragment$MailboxAccountLoaderCallback;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MailboxAccountLoaderCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/android/email/data/MailboxAccountLoader$Result;",
        ">;"
    }
.end annotation


# instance fields
.field private mMailboxChanging:Z

.field final synthetic this$0:Lcom/android/email/activity/MessageListFragment;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageListFragment;Z)V
    .locals 0
    .parameter
    .parameter "mailboxChanging"

    .prologue
    .line 3406
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment$MailboxAccountLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3407
    iput-boolean p2, p0, Lcom/android/email/activity/MessageListFragment$MailboxAccountLoaderCallback;->mMailboxChanging:Z

    .line 3408
    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 4
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/email/data/MailboxAccountLoader$Result;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3417
    new-instance v0, Lcom/android/email/data/MailboxAccountLoader;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$MailboxAccountLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$MailboxAccountLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mMailboxId:J
    invoke-static {v2}, Lcom/android/email/activity/MessageListFragment;->access$1300(Lcom/android/email/activity/MessageListFragment;)J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/data/MailboxAccountLoader;-><init>(Landroid/content/Context;J)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/email/data/MailboxAccountLoader$Result;)V
    .locals 7
    .parameter
    .parameter "result"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/email/data/MailboxAccountLoader$Result;",
            ">;",
            "Lcom/android/email/data/MailboxAccountLoader$Result;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/email/data/MailboxAccountLoader$Result;>;"
    const/4 v1, 0x0

    .line 3428
    iget-boolean v0, p2, Lcom/android/email/data/MailboxAccountLoader$Result;->mIsFound:Z

    if-nez v0, :cond_0

    .line 3429
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$MailboxAccountLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;
    invoke-static {v0}, Lcom/android/email/activity/MessageListFragment;->access$300(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessageListFragment$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/email/activity/MessageListFragment$Callback;->onMailboxNotFound()V

    .line 3445
    :goto_0
    return-void

    .line 3433
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$MailboxAccountLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$MailboxAccountLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mMailboxId:J
    invoke-static {v2}, Lcom/android/email/activity/MessageListFragment;->access$1300(Lcom/android/email/activity/MessageListFragment;)J

    move-result-wide v2

    #setter for: Lcom/android/email/activity/MessageListFragment;->mLastLoadedMailboxId:J
    invoke-static {v0, v2, v3}, Lcom/android/email/activity/MessageListFragment;->access$1402(Lcom/android/email/activity/MessageListFragment;J)J

    .line 3434
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$MailboxAccountLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    iget-object v2, p2, Lcom/android/email/data/MailboxAccountLoader$Result;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    #setter for: Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v0, v2}, Lcom/android/email/activity/MessageListFragment;->access$1502(Lcom/android/email/activity/MessageListFragment;Lcom/android/emailcommon/provider/EmailContent$Account;)Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 3435
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$MailboxAccountLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    iget-object v2, p2, Lcom/android/email/data/MailboxAccountLoader$Result;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    #setter for: Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    invoke-static {v0, v2}, Lcom/android/email/activity/MessageListFragment;->access$1602(Lcom/android/email/activity/MessageListFragment;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    .line 3436
    iget-boolean v0, p2, Lcom/android/email/data/MailboxAccountLoader$Result;->mIsEasAccount:Z

    sput-boolean v0, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    .line 3437
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$MailboxAccountLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->getAccountId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/email/adapter/ProtocolAdapter;->getAccountTransport(J)I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/email/activity/MessageListFragment;->mIsSevenAccount:Z

    .line 3438
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$MailboxAccountLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    iget-boolean v2, p2, Lcom/android/email/data/MailboxAccountLoader$Result;->mIsRefreshable:Z

    #setter for: Lcom/android/email/activity/MessageListFragment;->mIsRefreshable:Z
    invoke-static {v0, v2}, Lcom/android/email/activity/MessageListFragment;->access$1702(Lcom/android/email/activity/MessageListFragment;Z)Z

    .line 3439
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$MailboxAccountLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    new-instance v4, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;

    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment$MailboxAccountLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    iget-boolean v6, p0, Lcom/android/email/activity/MessageListFragment$MailboxAccountLoaderCallback;->mMailboxChanging:Z

    invoke-direct {v4, v5, v6}, Lcom/android/email/activity/MessageListFragment$MessagesLoaderCallback;-><init>(Lcom/android/email/activity/MessageListFragment;Z)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 3443
    iput-boolean v1, p0, Lcom/android/email/activity/MessageListFragment$MailboxAccountLoaderCallback;->mMailboxChanging:Z

    .line 3444
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$MailboxAccountLoaderCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 3437
    goto :goto_1
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3402
    check-cast p2, Lcom/android/email/data/MailboxAccountLoader$Result;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/email/activity/MessageListFragment$MailboxAccountLoaderCallback;->onLoadFinished(Landroid/content/Loader;Lcom/android/email/data/MailboxAccountLoader$Result;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/email/data/MailboxAccountLoader$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3449
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/email/data/MailboxAccountLoader$Result;>;"
    return-void
.end method

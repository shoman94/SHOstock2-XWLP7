.class Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;
.super Landroid/database/ContentObserver;
.source "MessageViewFragmentBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageObserver"
.end annotation


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mRegistered:Z

.field private final mThrottle:Lcom/android/email/Throttle;

.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "handler"
    .parameter "context"

    .prologue
    .line 8561
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    .line 8562
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 8563
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 8564
    new-instance v0, Lcom/android/email/Throttle;

    const-string v1, "MessageObserver"

    invoke-direct {v0, v1, p0, p2}, Lcom/android/email/Throttle;-><init>(Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->mThrottle:Lcom/android/email/Throttle;

    .line 8565
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 8584
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 8589
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8590
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->mThrottle:Lcom/android/email/Throttle;

    invoke-virtual {v0}, Lcom/android/email/Throttle;->onEvent()V

    .line 8592
    :cond_0
    return-void
.end method

.method public register(Landroid/net/Uri;)V
    .locals 2
    .parameter "notifyUri"

    .prologue
    .line 8577
    invoke-virtual {p0}, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->unregister()V

    .line 8578
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 8579
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->mRegistered:Z

    .line 8580
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 8601
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->isMessageSpecified()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8610
    :cond_0
    :goto_0
    return-void

    .line 8605
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8606
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mReloadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8200(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 8607
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    new-instance v1, Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$1;)V

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->mReloadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8202(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;)Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;

    .line 8608
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mReloadMessageTask:Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$8200(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$ReloadMessageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 8568
    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->mRegistered:Z

    if-nez v0, :cond_0

    .line 8574
    :goto_0
    return-void

    .line 8571
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->mThrottle:Lcom/android/email/Throttle;

    invoke-virtual {v0}, Lcom/android/email/Throttle;->cancelScheduledCallback()V

    .line 8572
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 8573
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$MessageObserver;->mRegistered:Z

    goto :goto_0
.end method

.class Lcom/android/email/activity/MessageListFragment$12;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListFragment;


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4584
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$12;->this$0:Lcom/android/email/activity/MessageListFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListFragment;->onFlickDownComplete(Z)V

    .line 4585
    return-void
.end method

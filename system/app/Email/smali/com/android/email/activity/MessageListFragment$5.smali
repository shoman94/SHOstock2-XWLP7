.class Lcom/android/email/activity/MessageListFragment$5;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageListFragment;->onMultiToggleFavorite(Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 2577
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment$5;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getField(JLandroid/database/Cursor;)Z
    .locals 1
    .parameter "messageId"
    .parameter "c"

    .prologue
    .line 2581
    const/4 v0, 0x7

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setField([JLandroid/database/Cursor;Z)Z
    .locals 3
    .parameter "messageIds"
    .parameter "c"
    .parameter "newValue"

    .prologue
    .line 2586
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$5;->this$0:Lcom/android/email/activity/MessageListFragment;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$5;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListFragment;->getAccountId()J

    move-result-wide v1

    #calls: Lcom/android/email/activity/MessageListFragment;->onSetMessageFavorite([JZJ)V
    invoke-static {v0, p1, p3, v1, v2}, Lcom/android/email/activity/MessageListFragment;->access$1100(Lcom/android/email/activity/MessageListFragment;[JZJ)V

    .line 2587
    const/4 v0, 0x1

    return v0
.end method

.method public setIntField([JLandroid/database/Cursor;I)Z
    .locals 1
    .parameter "messageIds"
    .parameter "c"
    .parameter "newValue"

    .prologue
    .line 2597
    const/4 v0, 0x0

    return v0
.end method

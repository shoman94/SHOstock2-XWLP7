.class Lcom/android/email/activity/MessageListFragment$4;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageListFragment;->onMultiToggleRead(Ljava/util/Set;)V
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
    .line 2546
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getField(JLandroid/database/Cursor;)Z
    .locals 1
    .parameter "messageId"
    .parameter "c"

    .prologue
    .line 2550
    const/4 v0, 0x6

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setField([JLandroid/database/Cursor;Z)Z
    .locals 5
    .parameter "messageIds"
    .parameter "c"
    .parameter "newValue"

    .prologue
    const/4 v1, 0x1

    .line 2555
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    if-nez p3, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment$4;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v3}, Lcom/android/email/activity/MessageListFragment;->getAccountId()J

    move-result-wide v3

    #calls: Lcom/android/email/activity/MessageListFragment;->onSetMessageRead([JZJ)V
    invoke-static {v2, p1, v0, v3, v4}, Lcom/android/email/activity/MessageListFragment;->access$1000(Lcom/android/email/activity/MessageListFragment;[JZJ)V

    .line 2556
    return v1

    .line 2555
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIntField([JLandroid/database/Cursor;I)Z
    .locals 1
    .parameter "messageIds"
    .parameter "c"
    .parameter "newValue"

    .prologue
    .line 2566
    const/4 v0, 0x0

    return v0
.end method

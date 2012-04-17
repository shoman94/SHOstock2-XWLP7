.class Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$1;
.super Ljava/lang/Object;
.source "MessageListView.java"

# interfaces
.implements Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;-><init>(Lcom/android/mms/ui/MessageListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

.field final synthetic val$this$0:Lcom/android/mms/ui/MessageListView;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;Lcom/android/mms/ui/MessageListView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$1;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iput-object p2, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$1;->val$this$0:Lcom/android/mms/ui/MessageListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyTransformation(F)V
    .locals 3
    .parameter "interpolatedTime"

    .prologue
    .line 252
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$1;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->hideSelectedChildItems()V

    .line 253
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$1;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-object v2, v2, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v2, v2, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemCountWithAll()I

    move-result v1

    .line 254
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 255
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$1;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-object v2, v2, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v2, v2, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    invoke-virtual {v2, v0, p1}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->calculateOffsetForTransDelAnim(IF)V

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    :cond_0
    return-void
.end method

.method public onBeginTransDeleteAnimation()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$1;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->hideSelectedChildItems()V

    .line 261
    return-void
.end method

.method public onCancelTransDeleteAnimation()V
    .locals 4

    .prologue
    .line 274
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$1;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-object v2, v2, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v2, v2, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->getChildItemCountWithAll()I

    move-result v1

    .line 275
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 276
    iget-object v2, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$1;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-object v2, v2, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->this$0:Lcom/android/mms/ui/MessageListView;

    iget-object v2, v2, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    const/high16 v3, 0x3f80

    invoke-virtual {v2, v0, v3}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;->calculateOffsetForTransDelAnim(IF)V

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 278
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$1;->onEndTransDeleteAnimation()V

    .line 279
    return-void
.end method

.method public onEndTransDeleteAnimation()V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$1;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->hideSelectedChildItems()V

    .line 266
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$1;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mIsTransferAnim:Z

    if-nez v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$1;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mIsTransferAnim:Z

    .line 268
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation$1;->this$1:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->afterDelAnim()V

    .line 270
    :cond_0
    return-void
.end method

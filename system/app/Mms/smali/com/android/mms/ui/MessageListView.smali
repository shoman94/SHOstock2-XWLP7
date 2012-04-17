.class public final Lcom/android/mms/ui/MessageListView;
.super Landroid/widget/ListView;
.source "MessageListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageListView$1;,
        Lcom/android/mms/ui/MessageListView$OnTransDelAnimListener;,
        Lcom/android/mms/ui/MessageListView$OnDeleteMsgAnimationListener;,
        Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;,
        Lcom/android/mms/ui/MessageListView$TransDelAnim;,
        Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;
    }
.end annotation


# instance fields
.field private bLongPress:Z

.field protected mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

.field public mDeleteMsgAnimation:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

.field protected mIsAvailableUp:Z

.field protected mIsDeleteMsgAnimating:Z

.field private mKeyIsLongPressed:Z

.field protected mOnDelAnimTotalListener:Lcom/android/mms/ui/MessageListView$OnDeleteMsgAnimationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 50
    iput-object v3, p0, Lcom/android/mms/ui/MessageListView;->mDeleteMsgAnimation:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    .line 52
    iput-object v3, p0, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    .line 54
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView;->mIsDeleteMsgAnimating:Z

    .line 57
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView;->mKeyIsLongPressed:Z

    .line 62
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListView;->mIsAvailableUp:Z

    .line 112
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView;->bLongPress:Z

    .line 613
    iput-object v3, p0, Lcom/android/mms/ui/MessageListView;->mOnDelAnimTotalListener:Lcom/android/mms/ui/MessageListView$OnDeleteMsgAnimationListener;

    .line 66
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageListView;->setClickable(Z)V

    .line 68
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageListView;->setFocusable(Z)V

    .line 70
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->initDelAnimListView()V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    iput-object v3, p0, Lcom/android/mms/ui/MessageListView;->mDeleteMsgAnimation:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    .line 52
    iput-object v3, p0, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    .line 54
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView;->mIsDeleteMsgAnimating:Z

    .line 57
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView;->mKeyIsLongPressed:Z

    .line 62
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageListView;->mIsAvailableUp:Z

    .line 112
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView;->bLongPress:Z

    .line 613
    iput-object v3, p0, Lcom/android/mms/ui/MessageListView;->mOnDelAnimTotalListener:Lcom/android/mms/ui/MessageListView$OnDeleteMsgAnimationListener;

    .line 75
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageListView;->setClickable(Z)V

    .line 77
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageListView;->setFocusable(Z)V

    .line 79
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->initDelAnimListView()V

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessageListView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 47
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/mms/ui/MessageListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    return v0
.end method

.method private showContextPopup()V
    .locals 3

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->getSelectedItemPosition()I

    move-result v1

    .line 197
    .local v1, position:I
    if-gez v1, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/MessageListItem;

    .line 201
    .local v2, view:Lcom/android/mms/ui/MessageListItem;
    if-eqz v2, :cond_0

    .line 202
    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->getBubbleLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 203
    .local v0, bubbleLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->showContextMenu()Z

    goto :goto_0
.end method


# virtual methods
.method protected initDelAnimListView()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListView;->mIsDeleteMsgAnimating:Z

    .line 85
    new-instance v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;-><init>(Lcom/android/mms/ui/MessageListView;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListView;->mDeleteMsgAnimation:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    .line 86
    new-instance v0, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;-><init>(Lcom/android/mms/ui/MessageListView;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListView;->mChildItemViewMgr:Lcom/android/mms/ui/MessageListView$ChildItemViewMgr;

    .line 87
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 226
    invoke-super {p0, p1}, Landroid/widget/ListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 227
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListView;->mIsDeleteMsgAnimating:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mDeleteMsgAnimation:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mDeleteMsgAnimation:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->runningDeleteMsgAnimation()V

    .line 229
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 116
    const/16 v0, 0x13

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->getSelectedItemPosition()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListItem;->getCheckBox()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 137
    :goto_0
    return v0

    .line 122
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListView;->bLongPress:Z

    .line 124
    invoke-direct {p0}, Lcom/android/mms/ui/MessageListView;->showContextPopup()V

    .line 137
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 190
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 93
    packed-switch p1, :pswitch_data_0

    .line 109
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v3

    :goto_0
    return v3

    .line 95
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/MessageListItem;

    .line 96
    .local v2, view:Lcom/android/mms/ui/MessageListItem;
    if-eqz v2, :cond_0

    .line 99
    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    .line 100
    .local v1, item:Lcom/android/mms/ui/MessageItem;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "clipboard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 103
    .local v0, clip:Landroid/text/ClipboardManager;
    iget-object v3, v1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 104
    const/4 v3, 0x1

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 146
    iget-boolean v2, p0, Lcom/android/mms/ui/MessageListView;->bLongPress:Z

    if-eqz v2, :cond_0

    .line 147
    iput-boolean v3, p0, Lcom/android/mms/ui/MessageListView;->bLongPress:Z

    .line 148
    const/4 v2, 0x1

    .line 168
    :goto_0
    return v2

    .line 150
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessageListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessageListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->getCheckBox()I

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x17

    if-eq p1, v2, :cond_1

    const/16 v2, 0x42

    if-ne p1, v2, :cond_3

    .line 154
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->getSelectedItemPosition()I

    move-result v0

    .line 156
    .local v0, position:I
    if-gez v0, :cond_2

    move v2, v3

    goto :goto_0

    .line 158
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/MessageListItem;

    .line 159
    .local v1, view:Lcom/android/mms/ui/MessageListItem;
    if-eqz v1, :cond_3

    .line 160
    iget-boolean v2, p0, Lcom/android/mms/ui/MessageListView;->mKeyIsLongPressed:Z

    if-nez v2, :cond_3

    .line 161
    invoke-virtual {v1, p0}, Lcom/android/mms/ui/MessageListItem;->setListView(Lcom/android/mms/ui/MessageListView;)V

    .line 162
    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListItem;->onMessageListItemClick()V

    .line 167
    .end local v0           #position:I
    .end local v1           #view:Lcom/android/mms/ui/MessageListItem;
    :cond_3
    iput-boolean v3, p0, Lcom/android/mms/ui/MessageListView;->bLongPress:Z

    .line 168
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListView;->mIsDeleteMsgAnimating:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mDeleteMsgAnimation:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mDeleteMsgAnimation:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    iget-object v0, v0, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->mTransferHandler:Lcom/android/mms/ui/MessageListView$TransDelAnim;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView$TransDelAnim;->userRelease()V

    .line 213
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mDeleteMsgAnimation:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->userCancelAnimationEffectForDeleteItems()V

    .line 215
    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1011
    if-lez p2, :cond_0

    .line 1012
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    .line 1013
    :cond_0
    return-void
.end method

.method public setOnDeleteMsgAnimation(Lcom/android/mms/ui/MessageListView$OnDeleteMsgAnimationListener;)V
    .locals 0
    .parameter "onDelAnimTotalListener"

    .prologue
    .line 617
    iput-object p1, p0, Lcom/android/mms/ui/MessageListView;->mOnDelAnimTotalListener:Lcom/android/mms/ui/MessageListView$OnDeleteMsgAnimationListener;

    .line 618
    return-void
.end method

.method public startDeleteMsgAnimation([I)V
    .locals 1
    .parameter "selectedIndexes"

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListView;->initDelAnimListView()V

    .line 221
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mDeleteMsgAnimation:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/mms/ui/MessageListView;->mDeleteMsgAnimation:Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageListView$DeleteMsgAnimation;->readyDeleteMsgAnimation([I)V

    .line 223
    :cond_0
    return-void
.end method

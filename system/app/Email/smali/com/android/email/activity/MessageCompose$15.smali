.class Lcom/android/email/activity/MessageCompose$15;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter

    .prologue
    .line 2424
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$15;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 2491
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 2426
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/high16 v5, 0x3f80

    const/4 v4, 0x1

    .line 2430
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$15;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;
    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$2600(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/ToolBarView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v3

    iget-object v3, v3, Lcom/android/email/activity/ToolBarScrollView;->mBtnUndo:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2431
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$15;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;
    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$2600(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/ToolBarView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v3

    iget-object v3, v3, Lcom/android/email/activity/ToolBarScrollView;->mBtnUndo:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 2432
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$15;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;
    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$2700(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/ToolBarView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v3

    iget-object v3, v3, Lcom/android/email/activity/ToolBarScrollView;->mBtnUndo:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2433
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$15;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;
    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$2700(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/ToolBarView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v3

    iget-object v3, v3, Lcom/android/email/activity/ToolBarScrollView;->mBtnUndo:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 2435
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$15;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;
    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$2600(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/ToolBarView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v3

    iget-object v3, v3, Lcom/android/email/activity/ToolBarScrollView;->mBtnRedo:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2436
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$15;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mToolBarView_noscroll:Lcom/android/email/activity/ToolBarView;
    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$2600(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/ToolBarView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v3

    iget-object v3, v3, Lcom/android/email/activity/ToolBarScrollView;->mBtnRedo:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 2437
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$15;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;
    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$2700(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/ToolBarView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v3

    iget-object v3, v3, Lcom/android/email/activity/ToolBarScrollView;->mBtnRedo:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2438
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$15;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mToolBarView:Lcom/android/email/activity/ToolBarView;
    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$2700(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/ToolBarView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/activity/ToolBarView;->GetToolBarScrollView()Lcom/android/email/activity/ToolBarScrollView;

    move-result-object v3

    iget-object v3, v3, Lcom/android/email/activity/ToolBarScrollView;->mBtnRedo:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 2442
    const/4 v0, 0x0

    .line 2443
    .local v0, rect:Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$15;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;
    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$1800(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerView;->getWebTextSelectionControls()Landroid/webkit/WebTextSelectionControls;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 2444
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$15;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;
    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$1800(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerView;->getWebTextSelectionControls()Landroid/webkit/WebTextSelectionControls;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebTextSelectionControls;->getSelectionCursorRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 2445
    if-nez v0, :cond_2

    .line 2446
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$15;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;
    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$1800(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/webkit/HtmlComposerView;->getCursorRect(Z)Landroid/graphics/Rect;

    move-result-object v0

    .line 2468
    :cond_0
    :goto_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2469
    .local v1, scrollViewRect:Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$15;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mScrollView:Lcom/android/email/ExtendedScrollView;
    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$2900(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/ExtendedScrollView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/email/ExtendedScrollView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 2471
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$15;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mScrollView:Lcom/android/email/ExtendedScrollView;
    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$2900(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/ExtendedScrollView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose$15;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;
    invoke-static {v4}, Lcom/android/email/activity/MessageCompose;->access$1800(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/android/email/ExtendedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2479
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2480
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v3, v4

    .line 2485
    .local v2, scrolly:I
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$15;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mScrollView:Lcom/android/email/ExtendedScrollView;
    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$2900(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/ExtendedScrollView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lcom/android/email/ExtendedScrollView;->smoothScrollBy(II)V

    .line 2488
    .end local v2           #scrolly:I
    :cond_1
    return-void

    .line 2448
    .end local v1           #scrollViewRect:Landroid/graphics/Rect;
    :cond_2
    iget v3, v0, Landroid/graphics/Rect;->left:I

    if-nez v3, :cond_0

    iget v3, v0, Landroid/graphics/Rect;->right:I

    if-nez v3, :cond_0

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    if-nez v3, :cond_0

    iget v3, v0, Landroid/graphics/Rect;->top:I

    if-nez v3, :cond_0

    .line 2449
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$15;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;
    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$1800(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerView;->getWebTextSelectionControls()Landroid/webkit/WebTextSelectionControls;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebTextSelectionControls;->getSelectionRegionEndRect()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    .line 2453
    :cond_3
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$15;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/HtmlComposerView;
    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->access$1800(Lcom/android/email/activity/MessageCompose;)Landroid/webkit/HtmlComposerView;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/webkit/HtmlComposerView;->getCursorRect(Z)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0
.end method

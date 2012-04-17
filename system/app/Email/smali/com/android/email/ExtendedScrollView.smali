.class public Lcom/android/email/ExtendedScrollView;
.super Landroid/widget/ScrollView;
.source "ExtendedScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/ExtendedScrollView$onChangeKeyboardStatusListener;
    }
.end annotation


# instance fields
.field private DEBUG:Z

.field curChanceCount:I

.field private mOnChangeKeyboardStatusListener:Lcom/android/email/ExtendedScrollView$onChangeKeyboardStatusListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 18
    iput-boolean v0, p0, Lcom/android/email/ExtendedScrollView;->DEBUG:Z

    .line 21
    iput v0, p0, Lcom/android/email/ExtendedScrollView;->curChanceCount:I

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    iput-boolean v0, p0, Lcom/android/email/ExtendedScrollView;->DEBUG:Z

    .line 21
    iput v0, p0, Lcom/android/email/ExtendedScrollView;->curChanceCount:I

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    iput-boolean v0, p0, Lcom/android/email/ExtendedScrollView;->DEBUG:Z

    .line 21
    iput v0, p0, Lcom/android/email/ExtendedScrollView;->curChanceCount:I

    .line 35
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "ev"

    .prologue
    const/4 v4, 0x0

    .line 39
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 40
    .local v3, retVal:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 41
    .local v0, action:I
    invoke-virtual {p0}, Lcom/android/email/ExtendedScrollView;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 43
    .local v1, focusedChild:Landroid/view/View;
    if-nez v0, :cond_0

    .line 44
    iput v4, p0, Lcom/android/email/ExtendedScrollView;->curChanceCount:I

    .line 47
    :cond_0
    instance-of v5, v1, Landroid/webkit/HtmlComposerView;

    if-eqz v5, :cond_4

    move-object v2, v1

    .line 48
    check-cast v2, Landroid/webkit/HtmlComposerView;

    .line 49
    .local v2, htv:Landroid/webkit/HtmlComposerView;
    iget-boolean v5, v2, Landroid/webkit/HtmlComposerView;->mInActionMove:Z

    if-nez v5, :cond_1

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->isMagnifierVisible()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 50
    :cond_1
    const/4 v3, 0x0

    .line 64
    :cond_2
    :goto_0
    iget-boolean v4, p0, Lcom/android/email/ExtendedScrollView;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "ExtendedScrollView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Extended Scroll View onInterceptTouchEvent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_3
    iget-boolean v4, p0, Lcom/android/email/ExtendedScrollView;->DEBUG:Z

    if-eqz v4, :cond_4

    const-string v4, "ExtendedScrollView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Extended Scroll View onInterceptTouchEvent InActionMove: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v2, Landroid/webkit/HtmlComposerView;->mInActionMove:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isMagnifierVisible: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->isMagnifierVisible()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .end local v2           #htv:Landroid/webkit/HtmlComposerView;
    :cond_4
    iget-boolean v4, p0, Lcom/android/email/ExtendedScrollView;->DEBUG:Z

    if-eqz v4, :cond_5

    const-string v4, "ExtendedScrollView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Extended Scroll View onInterceptTouchEvent return value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v4, v3

    .line 70
    :goto_1
    return v4

    .line 52
    .restart local v2       #htv:Landroid/webkit/HtmlComposerView;
    :cond_6
    const/4 v5, 0x1

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->getCursorPressed()Z

    move-result v6

    if-ne v5, v6, :cond_8

    .line 53
    iget v5, p0, Lcom/android/email/ExtendedScrollView;->curChanceCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/email/ExtendedScrollView;->curChanceCount:I

    .line 54
    iget-boolean v5, p0, Lcom/android/email/ExtendedScrollView;->DEBUG:Z

    if-eqz v5, :cond_7

    const-string v5, "ExtendedScrollView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Extended Scroll View onInterceptTouchEvent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/email/ExtendedScrollView;->curChanceCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_7
    iget v5, p0, Lcom/android/email/ExtendedScrollView;->curChanceCount:I

    const/16 v6, 0xf

    if-ge v5, v6, :cond_2

    goto :goto_1

    .line 59
    :cond_8
    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->getCursorPressed()Z

    move-result v5

    if-nez v5, :cond_2

    .line 61
    iput v4, p0, Lcom/android/email/ExtendedScrollView;->curChanceCount:I

    goto/16 :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 2
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 99
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 100
    iget-object v0, p0, Lcom/android/email/ExtendedScrollView;->mOnChangeKeyboardStatusListener:Lcom/android/email/ExtendedScrollView$onChangeKeyboardStatusListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/email/ExtendedScrollView$onChangeKeyboardStatusListener;->onChangeStatus(I)V

    .line 101
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v3, 0x0

    .line 82
    invoke-virtual {p0}, Lcom/android/email/ExtendedScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 83
    .local v0, focusedChild:Landroid/view/View;
    instance-of v2, v0, Landroid/webkit/HtmlComposerView;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 84
    check-cast v1, Landroid/webkit/HtmlComposerView;

    .line 85
    .local v1, htv:Landroid/webkit/HtmlComposerView;
    invoke-virtual {v1, v3}, Landroid/webkit/HtmlComposerView;->textChangedForWatcher(Z)V

    .line 89
    .end local v1           #htv:Landroid/webkit/HtmlComposerView;
    :goto_0
    if-le p2, p4, :cond_1

    .line 90
    iget-object v2, p0, Lcom/android/email/ExtendedScrollView;->mOnChangeKeyboardStatusListener:Lcom/android/email/ExtendedScrollView$onChangeKeyboardStatusListener;

    invoke-interface {v2, v3}, Lcom/android/email/ExtendedScrollView$onChangeKeyboardStatusListener;->onChangeStatus(I)V

    .line 96
    :goto_1
    return-void

    .line 87
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onSizeChanged(IIII)V

    goto :goto_0

    .line 91
    :cond_1
    if-ge p2, p4, :cond_2

    .line 92
    iget-object v2, p0, Lcom/android/email/ExtendedScrollView;->mOnChangeKeyboardStatusListener:Lcom/android/email/ExtendedScrollView$onChangeKeyboardStatusListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/email/ExtendedScrollView$onChangeKeyboardStatusListener;->onChangeStatus(I)V

    goto :goto_1

    .line 94
    :cond_2
    iget-object v2, p0, Lcom/android/email/ExtendedScrollView;->mOnChangeKeyboardStatusListener:Lcom/android/email/ExtendedScrollView$onChangeKeyboardStatusListener;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/android/email/ExtendedScrollView$onChangeKeyboardStatusListener;->onChangeStatus(I)V

    goto :goto_1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 75
    instance-of v0, p2, Landroid/webkit/HtmlComposerView;

    if-nez v0, :cond_0

    .line 76
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 78
    :cond_0
    return-void
.end method

.method public setOnChangeKeyboardStatusListener(Lcom/android/email/ExtendedScrollView$onChangeKeyboardStatusListener;)V
    .locals 0
    .parameter "keyboardStatusListener"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/email/ExtendedScrollView;->mOnChangeKeyboardStatusListener:Lcom/android/email/ExtendedScrollView$onChangeKeyboardStatusListener;

    .line 110
    return-void
.end method

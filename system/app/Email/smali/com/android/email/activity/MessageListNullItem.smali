.class public Lcom/android/email/activity/MessageListNullItem;
.super Landroid/view/View;
.source "MessageListNullItem.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, width:I
    if-eqz p1, :cond_0

    .line 37
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 38
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageListNullItem;->setMeasuredDimension(II)V

    .line 39
    return-void
.end method

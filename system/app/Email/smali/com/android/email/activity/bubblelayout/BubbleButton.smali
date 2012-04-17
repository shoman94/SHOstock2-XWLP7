.class public Lcom/android/email/activity/bubblelayout/BubbleButton;
.super Landroid/widget/Button;
.source "BubbleButton.java"


# instance fields
.field private mData:Lcom/android/email/activity/bubblelayout/BubbleData;

.field private mExpectedWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/email/activity/bubblelayout/BubbleData;)V
    .locals 0
    .parameter "context"
    .parameter "data"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 44
    iput-object p2, p0, Lcom/android/email/activity/bubblelayout/BubbleButton;->mData:Lcom/android/email/activity/bubblelayout/BubbleData;

    .line 46
    invoke-direct {p0}, Lcom/android/email/activity/bubblelayout/BubbleButton;->initButton()V

    .line 47
    return-void
.end method

.method private initButton()V
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x0

    .line 54
    iget-object v3, p0, Lcom/android/email/activity/bubblelayout/BubbleButton;->mData:Lcom/android/email/activity/bubblelayout/BubbleData;

    invoke-virtual {v3}, Lcom/android/email/activity/bubblelayout/BubbleData;->getName()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, dataName:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 56
    iget-object v3, p0, Lcom/android/email/activity/bubblelayout/BubbleButton;->mData:Lcom/android/email/activity/bubblelayout/BubbleData;

    invoke-virtual {v3}, Lcom/android/email/activity/bubblelayout/BubbleData;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/email/activity/bubblelayout/BubbleButton;->setText(Ljava/lang/CharSequence;)V

    .line 62
    :goto_0
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v3}, Lcom/android/email/activity/bubblelayout/BubbleButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 63
    const v3, 0x7f02022e

    invoke-virtual {p0, v3}, Lcom/android/email/activity/bubblelayout/BubbleButton;->setBackgroundResource(I)V

    .line 65
    invoke-virtual {p0}, Lcom/android/email/activity/bubblelayout/BubbleButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 66
    .local v1, fontColor:I
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/email/activity/bubblelayout/BubbleButton;->setTextColor(I)V

    .line 68
    const/4 v3, 0x2

    const/high16 v4, 0x4180

    invoke-virtual {p0, v3, v4}, Lcom/android/email/activity/bubblelayout/BubbleButton;->setTextSize(IF)V

    .line 69
    const/4 v3, 0x4

    invoke-virtual {p0, v6, v5, v6, v3}, Lcom/android/email/activity/bubblelayout/BubbleButton;->setPadding(IIII)V

    .line 71
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/email/activity/bubblelayout/BubbleButton;->setSingleLine(Z)V

    .line 72
    const/16 v3, 0x11

    invoke-virtual {p0, v3}, Lcom/android/email/activity/bubblelayout/BubbleButton;->setGravity(I)V

    .line 73
    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v3, -0x2

    const/16 v4, 0x2b

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 75
    .local v2, mlp:Landroid/view/ViewGroup$MarginLayoutParams;
    const/16 v3, 0xf0

    invoke-virtual {p0, v3}, Lcom/android/email/activity/bubblelayout/BubbleButton;->setMaxWidth(I)V

    .line 77
    const/16 v3, 0x40

    invoke-virtual {p0, v3}, Lcom/android/email/activity/bubblelayout/BubbleButton;->setMinWidth(I)V

    .line 79
    const/4 v3, 0x7

    invoke-virtual {v2, v5, v3, v6, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 81
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {p0, v3}, Lcom/android/email/activity/bubblelayout/BubbleButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    return-void

    .line 58
    .end local v1           #fontColor:I
    .end local v2           #mlp:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/email/activity/bubblelayout/BubbleButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public getBubbleData()Lcom/android/email/activity/bubblelayout/BubbleData;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/email/activity/bubblelayout/BubbleButton;->mData:Lcom/android/email/activity/bubblelayout/BubbleData;

    return-object v0
.end method

.method public getExpectedWidth()I
    .locals 5

    .prologue
    const/16 v4, 0xf0

    const/16 v3, 0x40

    .line 91
    invoke-virtual {p0}, Lcom/android/email/activity/bubblelayout/BubbleButton;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/bubblelayout/BubbleButton;->mExpectedWidth:I

    .line 94
    iget v0, p0, Lcom/android/email/activity/bubblelayout/BubbleButton;->mExpectedWidth:I

    if-nez v0, :cond_0

    .line 95
    iget v0, p0, Lcom/android/email/activity/bubblelayout/BubbleButton;->mExpectedWidth:I

    invoke-virtual {p0}, Lcom/android/email/activity/bubblelayout/BubbleButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/email/activity/bubblelayout/BubbleButton;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0xa

    add-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/email/activity/bubblelayout/BubbleButton;->mExpectedWidth:I

    .line 99
    :cond_0
    iget v0, p0, Lcom/android/email/activity/bubblelayout/BubbleButton;->mExpectedWidth:I

    if-le v0, v4, :cond_2

    .line 101
    iput v4, p0, Lcom/android/email/activity/bubblelayout/BubbleButton;->mExpectedWidth:I

    .line 108
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/email/activity/bubblelayout/BubbleButton;->mExpectedWidth:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/android/email/activity/bubblelayout/BubbleButton;->mExpectedWidth:I

    .line 110
    iget v0, p0, Lcom/android/email/activity/bubblelayout/BubbleButton;->mExpectedWidth:I

    return v0

    .line 103
    :cond_2
    iget v0, p0, Lcom/android/email/activity/bubblelayout/BubbleButton;->mExpectedWidth:I

    if-ge v0, v3, :cond_1

    .line 105
    iput v3, p0, Lcom/android/email/activity/bubblelayout/BubbleButton;->mExpectedWidth:I

    goto :goto_0
.end method

.method public refreshButton()V
    .locals 3

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/android/email/activity/bubblelayout/BubbleButton;->getExpectedWidth()I

    move-result v2

    add-int/lit8 v2, v2, 0x0

    add-int/lit8 v1, v2, -0xa

    .line 126
    .local v1, width:I
    iget-object v2, p0, Lcom/android/email/activity/bubblelayout/BubbleButton;->mData:Lcom/android/email/activity/bubblelayout/BubbleData;

    invoke-virtual {v2}, Lcom/android/email/activity/bubblelayout/BubbleData;->refreshContactInfo()V

    .line 130
    iget-object v2, p0, Lcom/android/email/activity/bubblelayout/BubbleButton;->mData:Lcom/android/email/activity/bubblelayout/BubbleData;

    invoke-virtual {v2}, Lcom/android/email/activity/bubblelayout/BubbleData;->getName()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, dataName:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    iget-object v2, p0, Lcom/android/email/activity/bubblelayout/BubbleButton;->mData:Lcom/android/email/activity/bubblelayout/BubbleData;

    invoke-virtual {v2}, Lcom/android/email/activity/bubblelayout/BubbleData;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/email/activity/bubblelayout/BubbleButton;->setText(Ljava/lang/CharSequence;)V

    .line 142
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/email/activity/bubblelayout/BubbleButton;->setMaxWidth(I)V

    .line 144
    return-void

    .line 138
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/email/activity/bubblelayout/BubbleButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

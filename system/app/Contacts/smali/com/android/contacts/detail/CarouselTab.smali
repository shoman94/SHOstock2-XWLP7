.class public Lcom/android/contacts/detail/CarouselTab;
.super Landroid/widget/RelativeLayout;
.source "CarouselTab.java"

# interfaces
.implements Lcom/android/contacts/detail/ViewOverlay;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAlphaLayer:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mLabelView:Landroid/widget/TextView;

.field private mTouchInterceptLayer:Landroid/view/View;

.field private mTwLabelView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/android/contacts/detail/CarouselTab;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/detail/CarouselTab;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    iput-object p1, p0, Lcom/android/contacts/detail/CarouselTab;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method


# virtual methods
.method public disableTouchInterceptor()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public enableTouchInterceptor(Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "clickListener"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/contacts/detail/CarouselTab;->mTouchInterceptLayer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/contacts/detail/CarouselTab;->mTouchInterceptLayer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/android/contacts/detail/CarouselTab;->mTouchInterceptLayer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 57
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 59
    const v0, 0x7f0d0089

    invoke-virtual {p0, v0}, Lcom/android/contacts/detail/CarouselTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/detail/CarouselTab;->mLabelView:Landroid/widget/TextView;

    .line 60
    iget-object v0, p0, Lcom/android/contacts/detail/CarouselTab;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 64
    const v0, 0x7f0d008a

    invoke-virtual {p0, v0}, Lcom/android/contacts/detail/CarouselTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/detail/CarouselTab;->mTwLabelView:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lcom/android/contacts/detail/CarouselTab;->mTwLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 67
    const v0, 0x7f0d0088

    invoke-virtual {p0, v0}, Lcom/android/contacts/detail/CarouselTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/CarouselTab;->mAlphaLayer:Landroid/view/View;

    .line 68
    const v0, 0x7f0d008b

    invoke-virtual {p0, v0}, Lcom/android/contacts/detail/CarouselTab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/CarouselTab;->mTouchInterceptLayer:Landroid/view/View;

    .line 69
    return-void
.end method

.method public setAlphaLayerValue(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/contacts/detail/CarouselTab;->mAlphaLayer:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setAlphaOnViewBackground(Landroid/view/View;F)V

    .line 110
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1
    .parameter "label"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/contacts/detail/CarouselTab;->mTwLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    return-void
.end method

.method public showDeselectedState()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 86
    iget-object v0, p0, Lcom/android/contacts/detail/CarouselTab;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 89
    iget-object v0, p0, Lcom/android/contacts/detail/CarouselTab;->mTwLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 90
    iget-object v0, p0, Lcom/android/contacts/detail/CarouselTab;->mTwLabelView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/detail/CarouselTab;->mContext:Landroid/content/Context;

    const v2, 0x7f0f001d

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 91
    return-void
.end method

.method public showSelectedState()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 78
    iget-object v0, p0, Lcom/android/contacts/detail/CarouselTab;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 81
    iget-object v0, p0, Lcom/android/contacts/detail/CarouselTab;->mTwLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 82
    iget-object v0, p0, Lcom/android/contacts/detail/CarouselTab;->mTwLabelView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/detail/CarouselTab;->mContext:Landroid/content/Context;

    const v2, 0x7f0f001c

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 83
    return-void
.end method

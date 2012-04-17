.class public Lcom/android/email/activity/MessageListXL$TextSizeItemView;
.super Landroid/widget/RelativeLayout;
.source "MessageListXL.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListXL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextSizeItemView"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 2373
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2374
    return-void
.end method

.method private findRadioButton()Landroid/widget/RadioButton;
    .locals 2

    .prologue
    .line 2402
    const v1, 0x7f100272

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageListXL$TextSizeItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2403
    .local v0, check:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/RadioButton;

    if-eqz v1, :cond_0

    .line 2404
    check-cast v0, Landroid/widget/RadioButton;

    .line 2406
    .end local v0           #check:Landroid/view/View;
    :goto_0
    return-object v0

    .restart local v0       #check:Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isChecked()Z
    .locals 2

    .prologue
    .line 2378
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL$TextSizeItemView;->findRadioButton()Landroid/widget/RadioButton;

    move-result-object v0

    .line 2379
    .local v0, check:Landroid/widget/RadioButton;
    if-eqz v0, :cond_0

    .line 2380
    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    .line 2382
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 2387
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL$TextSizeItemView;->findRadioButton()Landroid/widget/RadioButton;

    move-result-object v0

    .line 2388
    .local v0, check:Landroid/widget/RadioButton;
    if-eqz v0, :cond_0

    .line 2389
    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 2391
    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 2395
    invoke-direct {p0}, Lcom/android/email/activity/MessageListXL$TextSizeItemView;->findRadioButton()Landroid/widget/RadioButton;

    move-result-object v0

    .line 2396
    .local v0, check:Landroid/widget/RadioButton;
    if-eqz v0, :cond_0

    .line 2397
    invoke-virtual {v0}, Landroid/widget/RadioButton;->toggle()V

    .line 2399
    :cond_0
    return-void
.end method

.class public Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$ItemView;
.super Landroid/widget/LinearLayout;
.source "InteractionRecentFragment.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemView"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 440
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 441
    return-void
.end method

.method private findCheckBox()Landroid/widget/CheckBox;
    .locals 2

    .prologue
    .line 469
    const v1, 0x7f0d004b

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$ItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 470
    .local v0, check:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    .line 471
    check-cast v0, Landroid/widget/CheckBox;

    .line 473
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
    .line 445
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$ItemView;->findCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    .line 446
    .local v0, check:Landroid/widget/CheckBox;
    if-eqz v0, :cond_0

    .line 447
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 449
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
    .line 454
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$ItemView;->findCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    .line 455
    .local v0, check:Landroid/widget/CheckBox;
    if-eqz v0, :cond_0

    .line 456
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 458
    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 462
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment$ItemView;->findCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    .line 463
    .local v0, check:Landroid/widget/CheckBox;
    if-eqz v0, :cond_0

    .line 464
    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 466
    :cond_0
    return-void
.end method

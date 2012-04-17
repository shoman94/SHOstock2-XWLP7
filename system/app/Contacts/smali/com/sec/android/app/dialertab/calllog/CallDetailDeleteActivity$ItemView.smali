.class public Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ItemView;
.super Landroid/widget/LinearLayout;
.source "CallDetailDeleteActivity.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;
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
    .line 591
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 592
    return-void
.end method

.method private findCheckBox()Landroid/widget/CheckBox;
    .locals 2

    .prologue
    .line 620
    const v1, 0x7f0d004b

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 621
    .local v0, check:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    .line 622
    check-cast v0, Landroid/widget/CheckBox;

    .line 624
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
    .line 596
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ItemView;->findCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    .line 597
    .local v0, check:Landroid/widget/CheckBox;
    if-eqz v0, :cond_0

    .line 598
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 600
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
    .line 605
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ItemView;->findCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    .line 606
    .local v0, check:Landroid/widget/CheckBox;
    if-eqz v0, :cond_0

    .line 607
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 609
    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 613
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ItemView;->findCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    .line 614
    .local v0, check:Landroid/widget/CheckBox;
    if-eqz v0, :cond_0

    .line 615
    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 617
    :cond_0
    return-void
.end method

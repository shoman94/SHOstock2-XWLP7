.class public Lcom/android/email/activity/MessageViewFragmentBase$ItemView;
.super Landroid/widget/RelativeLayout;
.source "MessageViewFragmentBase.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
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
    .line 7694
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7695
    return-void
.end method

.method private findRadioButton()Landroid/widget/RadioButton;
    .locals 2

    .prologue
    .line 7720
    const v1, 0x7f100148

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$ItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 7721
    .local v0, check:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/RadioButton;

    if-eqz v1, :cond_0

    .line 7722
    check-cast v0, Landroid/widget/RadioButton;

    .line 7724
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
    .line 7698
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase$ItemView;->findRadioButton()Landroid/widget/RadioButton;

    move-result-object v0

    .line 7699
    .local v0, check:Landroid/widget/RadioButton;
    if-eqz v0, :cond_0

    .line 7700
    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    .line 7702
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
    .line 7706
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase$ItemView;->findRadioButton()Landroid/widget/RadioButton;

    move-result-object v0

    .line 7707
    .local v0, check:Landroid/widget/RadioButton;
    if-eqz v0, :cond_0

    .line 7708
    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 7710
    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 7713
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase$ItemView;->findRadioButton()Landroid/widget/RadioButton;

    move-result-object v0

    .line 7714
    .local v0, check:Landroid/widget/RadioButton;
    if-eqz v0, :cond_0

    .line 7715
    invoke-virtual {v0}, Landroid/widget/RadioButton;->toggle()V

    .line 7717
    :cond_0
    return-void
.end method

.class public Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeItemView;
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
    name = "RecipientRangeItemView"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 7280
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7281
    return-void
.end method

.method private findRadioButton()Landroid/widget/RadioButton;
    .locals 2

    .prologue
    .line 7306
    const v1, 0x7f10024e

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 7308
    .local v0, check:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/RadioButton;

    if-eqz v1, :cond_0

    .line 7309
    check-cast v0, Landroid/widget/RadioButton;

    .line 7311
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
    .line 7284
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeItemView;->findRadioButton()Landroid/widget/RadioButton;

    move-result-object v0

    .line 7285
    .local v0, check:Landroid/widget/RadioButton;
    if-eqz v0, :cond_0

    .line 7286
    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    .line 7288
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
    .line 7292
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeItemView;->findRadioButton()Landroid/widget/RadioButton;

    move-result-object v0

    .line 7293
    .local v0, check:Landroid/widget/RadioButton;
    if-eqz v0, :cond_0

    .line 7294
    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 7296
    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 7299
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeItemView;->findRadioButton()Landroid/widget/RadioButton;

    move-result-object v0

    .line 7300
    .local v0, check:Landroid/widget/RadioButton;
    if-eqz v0, :cond_0

    .line 7301
    invoke-virtual {v0}, Landroid/widget/RadioButton;->toggle()V

    .line 7303
    :cond_0
    return-void
.end method

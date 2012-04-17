.class public Lcom/android/email/activity/SelectGroup$GroupItemView;
.super Landroid/widget/RelativeLayout;
.source "SelectGroup.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/SelectGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupItemView"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 1081
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1083
    return-void
.end method

.method private findRadioButton()Landroid/widget/RadioButton;
    .locals 2

    .prologue
    .line 1133
    const v1, 0x7f100140

    invoke-virtual {p0, v1}, Lcom/android/email/activity/SelectGroup$GroupItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1135
    .local v0, check:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/RadioButton;

    if-eqz v1, :cond_0

    .line 1137
    check-cast v0, Landroid/widget/RadioButton;

    .line 1141
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
    .line 1089
    invoke-direct {p0}, Lcom/android/email/activity/SelectGroup$GroupItemView;->findRadioButton()Landroid/widget/RadioButton;

    move-result-object v0

    .line 1091
    .local v0, check:Landroid/widget/RadioButton;
    if-eqz v0, :cond_0

    .line 1093
    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    .line 1097
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
    .line 1105
    invoke-direct {p0}, Lcom/android/email/activity/SelectGroup$GroupItemView;->findRadioButton()Landroid/widget/RadioButton;

    move-result-object v0

    .line 1107
    .local v0, check:Landroid/widget/RadioButton;
    if-eqz v0, :cond_0

    .line 1109
    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1113
    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 1119
    invoke-direct {p0}, Lcom/android/email/activity/SelectGroup$GroupItemView;->findRadioButton()Landroid/widget/RadioButton;

    move-result-object v0

    .line 1121
    .local v0, check:Landroid/widget/RadioButton;
    if-eqz v0, :cond_0

    .line 1123
    invoke-virtual {v0}, Landroid/widget/RadioButton;->toggle()V

    .line 1127
    :cond_0
    return-void
.end method

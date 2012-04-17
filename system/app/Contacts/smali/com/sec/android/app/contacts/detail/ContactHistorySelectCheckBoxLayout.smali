.class public Lcom/sec/android/app/contacts/detail/ContactHistorySelectCheckBoxLayout;
.super Landroid/widget/LinearLayout;
.source "ContactHistorySelectCheckBoxLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method private findCheckBox()Landroid/widget/CheckBox;
    .locals 2

    .prologue
    .line 71
    const v1, 0x7f0d00df

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/detail/ContactHistorySelectCheckBoxLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 72
    .local v0, check:Landroid/view/View;
    instance-of v1, v0, Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    .line 74
    check-cast v0, Landroid/widget/CheckBox;

    .line 76
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
    .line 43
    invoke-direct {p0}, Lcom/sec/android/app/contacts/detail/ContactHistorySelectCheckBoxLayout;->findCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    .line 44
    .local v0, check:Landroid/widget/CheckBox;
    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 48
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
    .line 53
    invoke-direct {p0}, Lcom/sec/android/app/contacts/detail/ContactHistorySelectCheckBoxLayout;->findCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    .line 54
    .local v0, check:Landroid/widget/CheckBox;
    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 58
    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/sec/android/app/contacts/detail/ContactHistorySelectCheckBoxLayout;->findCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    .line 63
    .local v0, check:Landroid/widget/CheckBox;
    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 67
    :cond_0
    return-void
.end method

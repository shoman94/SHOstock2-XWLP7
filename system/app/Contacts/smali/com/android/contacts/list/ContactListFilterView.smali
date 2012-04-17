.class public Lcom/android/contacts/list/ContactListFilterView;
.super Landroid/widget/LinearLayout;
.source "ContactListFilterView.java"


# instance fields
.field private mActivatedBackground:I

.field private mFilter:Lcom/android/contacts/list/ContactListFilter;

.field private mIcon:Landroid/widget/ImageView;

.field private mIndent:Landroid/view/View;

.field private mLabel:Landroid/widget/TextView;

.field private mSingleAccount:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method private bindView(IIZ)V
    .locals 3
    .parameter "iconResource"
    .parameter "textResource"
    .parameter "dropdown"

    .prologue
    const/16 v1, 0x8

    .line 139
    if-eqz p1, :cond_1

    .line 140
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 146
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 148
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mIndent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mIndent:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 151
    :cond_0
    return-void

    .line 143
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    if-eqz p3, :cond_2

    const/4 v0, 0x4

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public bindView(Z)V
    .locals 4
    .parameter "dropdown"

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 63
    if-eqz p1, :cond_1

    .line 64
    iget v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mActivatedBackground:I

    if-nez v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListFilterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/util/ThemeUtils;->getActivatedBackground(Landroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mActivatedBackground:I

    .line 67
    :cond_0
    iget v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mActivatedBackground:I

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListFilterView;->setBackgroundResource(I)V

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mLabel:Landroid/widget/TextView;

    if-nez v0, :cond_2

    .line 71
    const v0, 0x7f0d001d

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    .line 72
    const v0, 0x7f0d0089

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mLabel:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f0d00e5

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mIndent:Landroid/view/View;

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-nez v0, :cond_4

    .line 77
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mLabel:Landroid/widget/TextView;

    const v1, 0x7f0a0009

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 136
    :cond_3
    :goto_0
    return-void

    .line 81
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget v0, v0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 103
    :pswitch_1
    const v0, 0x7f0a01a4

    invoke-direct {p0, v2, v0, p1}, Lcom/android/contacts/list/ContactListFilterView;->bindView(IIZ)V

    goto :goto_0

    .line 83
    :pswitch_2
    const v0, 0x7f0201a6

    const v1, 0x7f0a019f

    invoke-direct {p0, v0, v1, p1}, Lcom/android/contacts/list/ContactListFilterView;->bindView(IIZ)V

    goto :goto_0

    .line 88
    :pswitch_3
    const v0, 0x7f0201b0

    const v1, 0x7f0a01a0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/contacts/list/ContactListFilterView;->bindView(IIZ)V

    goto :goto_0

    .line 93
    :pswitch_4
    const v1, 0x7f0201ad

    if-eqz p1, :cond_5

    const v0, 0x7f0a01a2

    :goto_1
    invoke-direct {p0, v1, v0, p1}, Lcom/android/contacts/list/ContactListFilterView;->bindView(IIZ)V

    goto :goto_0

    :cond_5
    const v0, 0x7f0a01a1

    goto :goto_1

    .line 99
    :pswitch_5
    const v0, 0x7f0a01a3

    invoke-direct {p0, v2, v0, p1}, Lcom/android/contacts/list/ContactListFilterView;->bindView(IIZ)V

    goto :goto_0

    .line 107
    :pswitch_6
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget-object v0, v0, Lcom/android/contacts/list/ContactListFilter;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    .line 109
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget-object v2, v2, Lcom/android/contacts/list/ContactListFilter;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    :goto_2
    const-string v0, "vnd.sec.contact.phone"

    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget-object v2, v2, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 114
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListFilterView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0119

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    :goto_3
    if-eqz p1, :cond_3

    .line 122
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mIndent:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 111
    :cond_6
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    const v2, 0x7f02023a

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 115
    :cond_7
    const-string v0, "vnd.sec.contact.sim"

    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget-object v2, v2, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 116
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListFilterView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0241

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 118
    :cond_8
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mLabel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterView;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget-object v2, v2, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 127
    :pswitch_7
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mIcon:Landroid/widget/ImageView;

    const v3, 0x7f0201a7

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 129
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mLabel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/contacts/list/ContactListFilterView;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget-object v3, v3, Lcom/android/contacts/list/ContactListFilter;->title:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    if-eqz p1, :cond_3

    .line 131
    iget-object v3, p0, Lcom/android/contacts/list/ContactListFilterView;->mIndent:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListFilterView;->mSingleAccount:Z

    if-eqz v0, :cond_9

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_9
    move v0, v2

    goto :goto_4

    .line 81
    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public setContactListFilter(Lcom/android/contacts/list/ContactListFilter;)V
    .locals 0
    .parameter "filter"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/contacts/list/ContactListFilterView;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 52
    return-void
.end method

.method public setSingleAccount(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactListFilterView;->mSingleAccount:Z

    .line 60
    return-void
.end method

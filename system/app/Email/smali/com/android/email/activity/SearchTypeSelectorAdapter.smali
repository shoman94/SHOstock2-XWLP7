.class public Lcom/android/email/activity/SearchTypeSelectorAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SearchTypeSelectorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/email/activity/setup/SpinnerOption;",
        ">;"
    }
.end annotation


# static fields
.field private static sSearchSelectedTextColor:I

.field private static sSearchTextColor:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentPosition:I

.field private mDropDownItem:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 41
    sput v0, Lcom/android/email/activity/SearchTypeSelectorAdapter;->sSearchTextColor:I

    .line 43
    sput v0, Lcom/android/email/activity/SearchTypeSelectorAdapter;->sSearchSelectedTextColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I[Lcom/android/email/activity/setup/SpinnerOption;)V
    .locals 2
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter "objects"

    .prologue
    const/4 v1, -0x1

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 39
    iput v1, p0, Lcom/android/email/activity/SearchTypeSelectorAdapter;->mCurrentPosition:I

    .line 52
    sget v0, Lcom/android/email/activity/SearchTypeSelectorAdapter;->sSearchTextColor:I

    if-ne v0, v1, :cond_0

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/email/activity/SearchTypeSelectorAdapter;->sSearchTextColor:I

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/email/activity/SearchTypeSelectorAdapter;->sSearchSelectedTextColor:I

    .line 58
    :cond_0
    iput-object p1, p0, Lcom/android/email/activity/SearchTypeSelectorAdapter;->mContext:Landroid/content/Context;

    .line 59
    return-void
.end method


# virtual methods
.method public getDropDownItem()Landroid/view/View;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/email/activity/SearchTypeSelectorAdapter;->mDropDownItem:Landroid/view/View;

    return-object v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 72
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .local v1, itemView:Landroid/view/View;
    move-object v0, v1

    .line 73
    check-cast v0, Landroid/widget/TextView;

    .line 74
    .local v0, itemTextView:Landroid/widget/TextView;
    iget v2, p0, Lcom/android/email/activity/SearchTypeSelectorAdapter;->mCurrentPosition:I

    if-ne v2, p1, :cond_1

    .line 75
    iget-object v2, p0, Lcom/android/email/activity/SearchTypeSelectorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 80
    :goto_0
    if-nez p1, :cond_0

    .line 81
    iput-object v1, p0, Lcom/android/email/activity/SearchTypeSelectorAdapter;->mDropDownItem:Landroid/view/View;

    .line 82
    iget-object v1, p0, Lcom/android/email/activity/SearchTypeSelectorAdapter;->mDropDownItem:Landroid/view/View;

    .line 84
    .end local v1           #itemView:Landroid/view/View;
    :cond_0
    return-object v1

    .line 78
    .restart local v1       #itemView:Landroid/view/View;
    :cond_1
    sget v2, Lcom/android/email/activity/SearchTypeSelectorAdapter;->sSearchTextColor:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public setCurrentPosition(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 66
    iput p1, p0, Lcom/android/email/activity/SearchTypeSelectorAdapter;->mCurrentPosition:I

    .line 67
    return-void
.end method

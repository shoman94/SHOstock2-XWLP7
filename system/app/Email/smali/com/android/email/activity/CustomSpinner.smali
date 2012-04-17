.class public Lcom/android/email/activity/CustomSpinner;
.super Landroid/widget/Spinner;
.source "CustomSpinner.java"


# instance fields
.field mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 43
    const/4 v0, 0x0

    const v1, 0x1010081

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 47
    const v0, 0x1010081

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 51
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 52
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0}, Landroid/widget/Spinner;->onDetachedFromWindow()V

    .line 57
    return-void
.end method

.method public setLayout(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 73
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 74
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/android/email/activity/CustomSpinner;->mLeft:I

    .line 75
    const/16 v0, 0x256

    iput v0, p0, Lcom/android/email/activity/CustomSpinner;->mRight:I

    .line 80
    :goto_0
    return-void

    .line 77
    :cond_0
    const/16 v0, -0x1e0

    iput v0, p0, Lcom/android/email/activity/CustomSpinner;->mLeft:I

    .line 78
    const/16 v0, -0x16a

    iput v0, p0, Lcom/android/email/activity/CustomSpinner;->mRight:I

    goto :goto_0
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/email/activity/CustomSpinner;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 62
    return-void
.end method

.method public setSelection(I)V
    .locals 6
    .parameter "position"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/email/activity/CustomSpinner;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/email/activity/CustomSpinner;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p0

    move v3, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 69
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 70
    return-void
.end method

.class public Lcom/android/contacts/list/ContactNameHighlightingAnimation;
.super Lcom/android/contacts/widget/TextHighlightingAnimation;
.source "ContactNameHighlightingAnimation.java"


# instance fields
.field private final mListView:Landroid/widget/ListView;

.field private mSavedScrollingCacheEnabledFlag:Z


# virtual methods
.method protected invalidate()V
    .locals 5

    .prologue
    .line 41
    iget-object v4, p0, Lcom/android/contacts/list/ContactNameHighlightingAnimation;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 42
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 43
    iget-object v4, p0, Lcom/android/contacts/list/ContactNameHighlightingAnimation;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 44
    .local v2, itemView:Landroid/view/View;
    instance-of v4, v2, Lcom/android/contacts/list/ContactListItemView;

    if-eqz v4, :cond_0

    move-object v3, v2

    .line 45
    check-cast v3, Lcom/android/contacts/list/ContactListItemView;

    .line 46
    .local v3, view:Lcom/android/contacts/list/ContactListItemView;
    invoke-virtual {v3}, Lcom/android/contacts/list/ContactListItemView;->getNameTextView()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->invalidate()V

    .line 42
    .end local v3           #view:Lcom/android/contacts/list/ContactListItemView;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    .end local v2           #itemView:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onAnimationEnded()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/contacts/list/ContactNameHighlightingAnimation;->mListView:Landroid/widget/ListView;

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactNameHighlightingAnimation;->mSavedScrollingCacheEnabledFlag:Z

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setScrollingCacheEnabled(Z)V

    .line 60
    return-void
.end method

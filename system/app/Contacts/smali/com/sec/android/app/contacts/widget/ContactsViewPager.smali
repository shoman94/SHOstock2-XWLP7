.class public Lcom/sec/android/app/contacts/widget/ContactsViewPager;
.super Landroid/view/ViewGroup;
.source "ContactsViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/widget/ContactsViewPager$DataSetObserver;,
        Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;,
        Lcom/sec/android/app/contacts/widget/ContactsViewPager$SimpleOnPageChangeListener;,
        Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;,
        Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    }
.end annotation


# static fields
.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivePointerId:I

.field private mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private mCurItem:I

.field private mFirstLayout:Z

.field private mInLayout:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mObserver:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter$DataSetObserver;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;

.field private mPageMargin:I

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurItem:I

.field private mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mScrolling:Z

.field private mScrollingCacheEnabled:Z

.field private mTouchSlop:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager$1;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 221
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    .line 87
    iput v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredCurItem:I

    .line 88
    iput-object v3, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 89
    iput-object v3, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 104
    iput v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOffscreenPageLimit:I

    .line 119
    iput v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mActivePointerId:I

    .line 139
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mFirstLayout:Z

    .line 159
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScrollState:I

    .line 222
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->initViewPager()V

    .line 223
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 226
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    .line 87
    iput v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredCurItem:I

    .line 88
    iput-object v3, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 89
    iput-object v3, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 104
    iput v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOffscreenPageLimit:I

    .line 119
    iput v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mActivePointerId:I

    .line 139
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mFirstLayout:Z

    .line 159
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScrollState:I

    .line 227
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->initViewPager()V

    .line 228
    return-void
.end method

.method private completeScroll()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 912
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScrolling:Z

    .line 913
    .local v2, needPopulate:Z
    if-eqz v2, :cond_2

    .line 915
    invoke-direct {p0, v8}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setScrollingCacheEnabled(Z)V

    .line 916
    iget-object v7, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->abortAnimation()V

    .line 917
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getScrollX()I

    move-result v3

    .line 918
    .local v3, oldX:I
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getScrollY()I

    move-result v4

    .line 919
    .local v4, oldY:I
    iget-object v7, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 920
    .local v5, x:I
    iget-object v7, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    .line 921
    .local v6, y:I
    if-ne v3, v5, :cond_0

    if-eq v4, v6, :cond_1

    .line 922
    :cond_0
    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->scrollTo(II)V

    .line 924
    :cond_1
    invoke-direct {p0, v8}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setScrollState(I)V

    .line 926
    .end local v3           #oldX:I
    .end local v4           #oldY:I
    .end local v5           #x:I
    .end local v6           #y:I
    :cond_2
    iput-boolean v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPopulatePending:Z

    .line 927
    iput-boolean v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScrolling:Z

    .line 928
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v7, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_4

    .line 929
    iget-object v7, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    .line 930
    .local v1, ii:Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    iget-boolean v7, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->scrolling:Z

    if-eqz v7, :cond_3

    .line 931
    const/4 v2, 0x1

    .line 932
    iput-boolean v8, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->scrolling:Z

    .line 928
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 935
    .end local v1           #ii:Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    :cond_4
    if-eqz v2, :cond_5

    .line 936
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->populate()V

    .line 938
    :cond_5
    return-void
.end method

.method private recomputeScrollPosition(IIII)V
    .locals 11
    .parameter "width"
    .parameter "oldWidth"
    .parameter "margin"
    .parameter "oldMargin"

    .prologue
    const/4 v2, 0x0

    .line 829
    add-int v10, p1, p3

    .line 830
    .local v10, widthWithMargin:I
    if-lez p2, :cond_1

    .line 831
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getScrollX()I

    move-result v7

    .line 832
    .local v7, oldScrollPos:I
    add-int v8, p2, p4

    .line 833
    .local v8, oldwwm:I
    div-int v6, v7, v8

    .line 834
    .local v6, oldScrollItem:I
    rem-int v0, v7, v8

    int-to-float v0, v0

    int-to-float v3, v8

    div-float v9, v0, v3

    .line 835
    .local v9, scrollOffset:F
    int-to-float v0, v6

    add-float/2addr v0, v9

    int-to-float v3, v10

    mul-float/2addr v0, v3

    float-to-int v1, v0

    .line 836
    .local v1, scrollPos:I
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->scrollTo(II)V

    .line 837
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 839
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->timePassed()I

    move-result v3

    sub-int v5, v0, v3

    .line 840
    .local v5, newDuration:I
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScroller:Landroid/widget/Scroller;

    iget v3, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    mul-int/2addr v3, v10

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 849
    .end local v5           #newDuration:I
    .end local v6           #oldScrollItem:I
    .end local v7           #oldScrollPos:I
    .end local v8           #oldwwm:I
    .end local v9           #scrollOffset:F
    :cond_0
    :goto_0
    return-void

    .line 843
    .end local v1           #scrollPos:I
    :cond_1
    iget v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    mul-int v1, v0, v10

    .line 844
    .restart local v1       #scrollPos:I
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getScrollX()I

    move-result v0

    if-eq v1, v0, :cond_0

    .line 845
    invoke-direct {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->completeScroll()V

    .line 846
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->scrollTo(II)V

    goto :goto_0
.end method

.method private setScrollState(I)V
    .locals 1
    .parameter "newState"

    .prologue
    .line 245
    iget v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScrollState:I

    if-ne v0, p1, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    iput p1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScrollState:I

    .line 250
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    goto :goto_0
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1425
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1426
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScrollingCacheEnabled:Z

    .line 1437
    :cond_0
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 7
    .parameter
    .parameter "direction"
    .parameter "focusableMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1569
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1571
    .local v2, focusableCount:I
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getDescendantFocusability()I

    move-result v1

    .line 1573
    .local v1, descendantFocusability:I
    const/high16 v5, 0x6

    if-eq v1, v5, :cond_1

    .line 1574
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 1575
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1576
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 1577
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->infoForChild(Landroid/view/View;)Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    move-result-object v4

    .line 1578
    .local v4, ii:Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    if-eqz v4, :cond_0

    iget v5, v4, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    iget v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    if-ne v5, v6, :cond_0

    .line 1579
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1574
    .end local v4           #ii:Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1589
    .end local v0           #child:Landroid/view/View;
    .end local v3           #i:I
    :cond_1
    const/high16 v5, 0x4

    if-ne v1, v5, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v2, v5, :cond_3

    .line 1595
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->isFocusable()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1606
    :cond_3
    :goto_1
    return-void

    .line 1598
    :cond_4
    and-int/lit8 v5, p3, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->isInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->isFocusableInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1602
    :cond_5
    if-eqz p1, :cond_3

    .line 1603
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method addNewItem(II)V
    .locals 2
    .parameter "position"
    .parameter "index"

    .prologue
    .line 498
    new-instance v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;-><init>()V

    .line 499
    .local v0, ii:Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    iput p1, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    .line 500
    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v1, p0, p1}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->instantiateItem(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 501
    if-gez p2, :cond_0

    .line 502
    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    :goto_0
    return-void

    .line 504
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1616
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1617
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1618
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 1619
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->infoForChild(Landroid/view/View;)Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    move-result-object v2

    .line 1620
    .local v2, ii:Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    if-eqz v2, :cond_0

    iget v3, v2, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    iget v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    if-ne v3, v4, :cond_0

    .line 1621
    invoke-virtual {v0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 1616
    .end local v2           #ii:Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1625
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 742
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mInLayout:Z

    if-eqz v0, :cond_0

    .line 743
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 744
    iget v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mChildWidthMeasureSpec:I

    iget v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mChildHeightMeasureSpec:I

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 756
    :goto_0
    return-void

    .line 746
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public arrowScroll(I)Z
    .locals 6
    .parameter "direction"

    .prologue
    const/16 v5, 0x42

    const/16 v4, 0x11

    .line 1510
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1511
    .local v0, currentFocused:Landroid/view/View;
    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    .line 1513
    :cond_0
    const/4 v1, 0x0

    .line 1515
    .local v1, handled:Z
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 1517
    .local v2, nextFocused:Landroid/view/View;
    if-eqz v2, :cond_6

    if-eq v2, v0, :cond_6

    .line 1518
    if-ne p1, v4, :cond_4

    .line 1521
    if-eqz v0, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    if-lt v3, v4, :cond_3

    .line 1522
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->pageLeft()Z

    move-result v1

    .line 1542
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 1543
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->playSoundEffect(I)V

    .line 1545
    :cond_2
    return v1

    .line 1524
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    goto :goto_0

    .line 1526
    :cond_4
    if-ne p1, v5, :cond_1

    .line 1529
    if-eqz v0, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    if-gt v3, v4, :cond_5

    .line 1530
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->pageRight()Z

    move-result v1

    goto :goto_0

    .line 1532
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    goto :goto_0

    .line 1535
    :cond_6
    if-eq p1, v4, :cond_7

    const/4 v3, 0x1

    if-ne p1, v3, :cond_8

    .line 1537
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->pageLeft()Z

    move-result v1

    goto :goto_0

    .line 1538
    :cond_8
    if-eq p1, v5, :cond_9

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    .line 1540
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->pageRight()Z

    move-result v1

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 10

    .prologue
    .line 881
    iget-object v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->isFinished()Z

    move-result v8

    if-nez v8, :cond_3

    .line 882
    iget-object v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 884
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getScrollX()I

    move-result v2

    .line 885
    .local v2, oldX:I
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getScrollY()I

    move-result v3

    .line 886
    .local v3, oldY:I
    iget-object v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrX()I

    move-result v6

    .line 887
    .local v6, x:I
    iget-object v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrY()I

    move-result v7

    .line 889
    .local v7, y:I
    if-ne v2, v6, :cond_0

    if-eq v3, v7, :cond_1

    .line 890
    :cond_0
    invoke-virtual {p0, v6, v7}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->scrollTo(II)V

    .line 893
    :cond_1
    iget-object v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;

    if-eqz v8, :cond_2

    .line 894
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getWidth()I

    move-result v8

    iget v9, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPageMargin:I

    add-int v5, v8, v9

    .line 895
    .local v5, widthWithMargin:I
    div-int v4, v6, v5

    .line 896
    .local v4, position:I
    rem-int v1, v6, v5

    .line 897
    .local v1, offsetPixels:I
    int-to-float v8, v1

    int-to-float v9, v5

    div-float v0, v8, v9

    .line 898
    .local v0, offset:F
    iget-object v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;

    invoke-interface {v8, v4, v0, v1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 902
    .end local v0           #offset:F
    .end local v1           #offsetPixels:I
    .end local v4           #position:I
    .end local v5           #widthWithMargin:I
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->invalidate()V

    .line 909
    .end local v2           #oldX:I
    .end local v3           #oldY:I
    .end local v6           #x:I
    .end local v7           #y:I
    :goto_0
    return-void

    .line 908
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->completeScroll()V

    goto :goto_0
.end method

.method dataSetChanged()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 511
    iget-object v7, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x3

    if-ge v7, v8, :cond_1

    iget-object v7, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v8}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->getCount()I

    move-result v8

    if-ge v7, v8, :cond_1

    move v2, v5

    .line 512
    .local v2, needPopulate:Z
    :goto_0
    const/4 v3, -0x1

    .line 514
    .local v3, newCurrItem:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v7, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_5

    .line 515
    iget-object v7, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    .line 516
    .local v1, ii:Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    iget-object v7, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    iget-object v8, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v4

    .line 518
    .local v4, newPos:I
    const/4 v7, -0x1

    if-ne v4, v7, :cond_2

    .line 514
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    .end local v1           #ii:Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    .end local v2           #needPopulate:Z
    .end local v3           #newCurrItem:I
    .end local v4           #newPos:I
    :cond_1
    move v2, v6

    .line 511
    goto :goto_0

    .line 522
    .restart local v0       #i:I
    .restart local v1       #ii:Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    .restart local v2       #needPopulate:Z
    .restart local v3       #newCurrItem:I
    .restart local v4       #newPos:I
    :cond_2
    const/4 v7, -0x2

    if-ne v4, v7, :cond_3

    .line 523
    iget-object v7, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 524
    add-int/lit8 v0, v0, -0x1

    .line 525
    iget-object v7, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    iget v8, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    iget-object v9, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v7, p0, v8, v9}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->destroyItem(Landroid/view/View;ILjava/lang/Object;)V

    .line 526
    const/4 v2, 0x1

    .line 528
    iget v7, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    iget v8, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    if-ne v7, v8, :cond_0

    .line 530
    iget v7, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    iget-object v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v8}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_2

    .line 535
    :cond_3
    iget v7, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    if-eq v7, v4, :cond_0

    .line 536
    iget v7, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    iget v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    if-ne v7, v8, :cond_4

    .line 538
    move v3, v4

    .line 541
    :cond_4
    iput v4, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    .line 542
    const/4 v2, 0x1

    goto :goto_2

    .line 546
    .end local v1           #ii:Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    .end local v4           #newPos:I
    :cond_5
    iget-object v7, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    sget-object v8, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 548
    if-ltz v3, :cond_6

    .line 550
    invoke-virtual {p0, v3, v6, v5}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setCurrentItemInternal(IZZ)V

    .line 551
    const/4 v2, 0x1

    .line 553
    :cond_6
    if-eqz v2, :cond_7

    .line 554
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->populate()V

    .line 555
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->requestLayout()V

    .line 557
    :cond_7
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1476
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    .line 1667
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getChildCount()I

    move-result v1

    .line 1668
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1669
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1670
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 1671
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->infoForChild(Landroid/view/View;)Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    move-result-object v3

    .line 1672
    .local v3, ii:Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    if-eqz v3, :cond_0

    iget v4, v3, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    iget v5, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    if-ne v4, v5, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1674
    const/4 v4, 0x1

    .line 1679
    .end local v0           #child:Landroid/view/View;
    .end local v3           #ii:Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    :goto_1
    return v4

    .line 1668
    .restart local v0       #child:Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1679
    .end local v0           #child:Landroid/view/View;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/4 v1, 0x1

    .line 1215
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 1216
    const/4 v2, 0x0

    .line 1218
    .local v2, needsInvalidate:Z
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v3

    .line 1219
    .local v3, overScrollMode:I
    if-eqz v3, :cond_0

    if-ne v3, v1, :cond_5

    iget-object v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->getCount()I

    move-result v6

    if-le v6, v1, :cond_5

    .line 1222
    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1223
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 1224
    .local v4, restoreCount:I
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getPaddingBottom()I

    move-result v7

    sub-int v0, v6, v7

    .line 1226
    .local v0, height:I
    const/high16 v6, 0x4387

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1227
    neg-int v6, v0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getPaddingTop()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1228
    iget-object v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getWidth()I

    move-result v7

    invoke-virtual {v6, v0, v7}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 1229
    iget-object v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    or-int/2addr v2, v6

    .line 1230
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1232
    .end local v0           #height:I
    .end local v4           #restoreCount:I
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1233
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 1234
    .restart local v4       #restoreCount:I
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getWidth()I

    move-result v5

    .line 1235
    .local v5, width:I
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getPaddingBottom()I

    move-result v7

    sub-int v0, v6, v7

    .line 1236
    .restart local v0       #height:I
    iget-object v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->getCount()I

    move-result v1

    .line 1238
    .local v1, itemCount:I
    :cond_2
    const/high16 v6, 0x42b4

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1239
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getPaddingTop()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    neg-int v7, v1

    iget v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPageMargin:I

    add-int/2addr v8, v5

    mul-int/2addr v7, v8

    iget v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPageMargin:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1241
    iget-object v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6, v0, v5}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 1242
    iget-object v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    or-int/2addr v2, v6

    .line 1243
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1250
    .end local v0           #height:I
    .end local v1           #itemCount:I
    .end local v4           #restoreCount:I
    .end local v5           #width:I
    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    .line 1252
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->invalidate()V

    .line 1254
    :cond_4
    return-void

    .line 1246
    :cond_5
    iget-object v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    .line 1247
    iget-object v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 461
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 462
    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 463
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 464
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 466
    :cond_0
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 1488
    const/4 v0, 0x0

    .line 1489
    .local v0, handled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 1490
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1506
    :cond_0
    :goto_0
    return v0

    .line 1492
    :sswitch_0
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->arrowScroll(I)Z

    move-result v0

    .line 1493
    goto :goto_0

    .line 1495
    :sswitch_1
    const/16 v1, 0x42

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->arrowScroll(I)Z

    move-result v0

    .line 1496
    goto :goto_0

    .line 1498
    :sswitch_2
    invoke-static {p1}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1499
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 1500
    :cond_1
    invoke-static {p1, v2}, Landroid/support/v4/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1501
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_0

    .line 1490
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method

.method public getCurrentItem()I
    .locals 1

    .prologue
    .line 318
    iget v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    return v0
.end method

.method infoForAnyChild(Landroid/view/View;)Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    .locals 2
    .parameter "child"

    .prologue
    .line 770
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .local v0, parent:Landroid/view/ViewParent;
    if-eq v0, p0, :cond_2

    .line 771
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    .line 772
    :cond_0
    const/4 v1, 0x0

    .line 776
    :goto_1
    return-object v1

    :cond_1
    move-object p1, v0

    .line 774
    check-cast p1, Landroid/view/View;

    goto :goto_0

    .line 776
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->infoForChild(Landroid/view/View;)Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    move-result-object v1

    goto :goto_1
.end method

.method infoForChild(Landroid/view/View;)Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    .locals 4
    .parameter "child"

    .prologue
    .line 759
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 760
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    .line 761
    .local v1, ii:Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    iget-object v3, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 765
    .end local v1           #ii:Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    :goto_1
    return-object v1

    .line 759
    .restart local v1       #ii:Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 765
    .end local v1           #ii:Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method initViewPager()V
    .locals 3

    .prologue
    .line 231
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setWillNotDraw(Z)V

    .line 232
    const/high16 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setDescendantFocusability(I)V

    .line 233
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setFocusable(Z)V

    .line 234
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 235
    .local v1, context:Landroid/content/Context;
    new-instance v2, Landroid/widget/Scroller;

    invoke-direct {v2, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScroller:Landroid/widget/Scroller;

    .line 236
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 237
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mTouchSlop:I

    .line 238
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mMinimumVelocity:I

    .line 239
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mMaximumVelocity:I

    .line 240
    new-instance v2, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v2, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 241
    new-instance v2, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v2, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 242
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 781
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 782
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mFirstLayout:Z

    .line 783
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 1258
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 1261
    iget v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPageMargin:I

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 1262
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getScrollX()I

    move-result v2

    .line 1263
    .local v2, scrollX:I
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getWidth()I

    move-result v3

    .line 1264
    .local v3, width:I
    iget v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPageMargin:I

    add-int/2addr v4, v3

    rem-int v1, v2, v4

    .line 1265
    .local v1, offset:I
    if-eqz v1, :cond_0

    .line 1267
    sub-int v4, v2, v1

    add-int v0, v4, v3

    .line 1268
    .local v0, left:I
    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    iget v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPageMargin:I

    add-int/2addr v6, v0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getHeight()I

    move-result v7

    invoke-virtual {v4, v0, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1269
    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1272
    .end local v0           #left:I
    .end local v1           #offset:I
    .end local v2           #scrollX:I
    .end local v3           #width:I
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 853
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mInLayout:Z

    .line 854
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->populate()V

    .line 855
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mInLayout:Z

    .line 857
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getChildCount()I

    move-result v3

    .line 858
    .local v3, count:I
    sub-int v7, p4, p2

    .line 860
    .local v7, width:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 861
    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 863
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->infoForChild(Landroid/view/View;)Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    move-result-object v5

    .local v5, ii:Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    if-eqz v5, :cond_0

    .line 864
    iget v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPageMargin:I

    add-int/2addr v8, v7

    iget v9, v5, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    mul-int v6, v8, v9

    .line 865
    .local v6, loff:I
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getPaddingLeft()I

    move-result v8

    add-int v1, v8, v6

    .line 866
    .local v1, childLeft:I
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getPaddingTop()I

    move-result v2

    .line 870
    .local v2, childTop:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v2

    invoke-virtual {v0, v1, v2, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 860
    .end local v1           #childLeft:I
    .end local v2           #childTop:I
    .end local v5           #ii:Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    .end local v6           #loff:I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 875
    .end local v0           #child:Landroid/view/View;
    :cond_1
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mFirstLayout:Z

    .line 876
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v6, 0x4000

    const/4 v5, 0x0

    .line 792
    invoke-static {v5, p1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getDefaultSize(II)I

    move-result v3

    invoke-static {v5, p2}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getDefaultSize(II)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setMeasuredDimension(II)V

    .line 796
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mChildWidthMeasureSpec:I

    .line 798
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mChildHeightMeasureSpec:I

    .line 802
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mInLayout:Z

    .line 803
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->populate()V

    .line 804
    iput-boolean v5, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mInLayout:Z

    .line 807
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getChildCount()I

    move-result v2

    .line 808
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 809
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 810
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 813
    iget v3, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mChildWidthMeasureSpec:I

    iget v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mChildHeightMeasureSpec:I

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->measure(II)V

    .line 808
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 816
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 9
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1636
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getChildCount()I

    move-result v1

    .line 1637
    .local v1, count:I
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_0

    .line 1638
    const/4 v6, 0x0

    .line 1639
    .local v6, index:I
    const/4 v5, 0x1

    .line 1640
    .local v5, increment:I
    move v2, v1

    .line 1646
    .local v2, end:I
    :goto_0
    move v3, v6

    .local v3, i:I
    :goto_1
    if-eq v3, v2, :cond_2

    .line 1647
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1648
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    .line 1649
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->infoForChild(Landroid/view/View;)Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    move-result-object v4

    .line 1650
    .local v4, ii:Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    if-eqz v4, :cond_1

    iget v7, v4, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    iget v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    if-ne v7, v8, :cond_1

    .line 1651
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1652
    const/4 v7, 0x1

    .line 1657
    .end local v0           #child:Landroid/view/View;
    .end local v4           #ii:Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    :goto_2
    return v7

    .line 1642
    .end local v2           #end:I
    .end local v3           #i:I
    .end local v5           #increment:I
    .end local v6           #index:I
    :cond_0
    add-int/lit8 v6, v1, -0x1

    .line 1643
    .restart local v6       #index:I
    const/4 v5, -0x1

    .line 1644
    .restart local v5       #increment:I
    const/4 v2, -0x1

    .restart local v2       #end:I
    goto :goto_0

    .line 1646
    .restart local v0       #child:Landroid/view/View;
    .restart local v3       #i:I
    :cond_1
    add-int/2addr v3, v5

    goto :goto_1

    .line 1657
    .end local v0           #child:Landroid/view/View;
    :cond_2
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 722
    instance-of v1, p1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;

    if-nez v1, :cond_0

    .line 723
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 738
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 727
    check-cast v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;

    .line 728
    .local v0, ss:Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 730
    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    if-eqz v1, :cond_1

    .line 731
    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    iget-object v2, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iget-object v3, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 732
    iget v1, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;->position:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_0

    .line 734
    :cond_1
    iget v1, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;->position:I

    iput v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredCurItem:I

    .line 735
    iget-object v1, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 736
    iget-object v1, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 711
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 712
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 713
    .local v0, ss:Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;
    iget v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    iput v2, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;->position:I

    .line 714
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    if-eqz v2, :cond_0

    .line 715
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/contacts/widget/ContactsViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    .line 717
    :cond_0
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 820
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 823
    if-eq p1, p3, :cond_0

    .line 824
    iget v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPageMargin:I

    iget v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPageMargin:I

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->recomputeScrollPosition(IIII)V

    .line 826
    :cond_0
    return-void
.end method

.method pageLeft()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1549
    iget v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    if-lez v1, :cond_0

    .line 1550
    iget v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setCurrentItem(IZ)V

    .line 1553
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method pageRight()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1557
    iget-object v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 1558
    iget v1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setCurrentItem(IZ)V

    .line 1561
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method populate()V
    .locals 15

    .prologue
    const/4 v11, 0x0

    const/4 v12, -0x1

    .line 560
    iget-object v10, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    if-nez v10, :cond_1

    .line 661
    :cond_0
    return-void

    .line 568
    :cond_1
    iget-boolean v10, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPopulatePending:Z

    if-nez v10, :cond_0

    .line 576
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 580
    iget-object v10, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v10, p0}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->startUpdate(Landroid/view/View;)V

    .line 582
    iget v8, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOffscreenPageLimit:I

    .line 583
    .local v8, pageLimit:I
    const/4 v10, 0x0

    iget v13, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    sub-int/2addr v13, v8

    invoke-static {v10, v13}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 584
    .local v9, startPos:I
    iget-object v10, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v10}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->getCount()I

    move-result v0

    .line 585
    .local v0, N:I
    add-int/lit8 v10, v0, -0x1

    iget v13, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    add-int/2addr v13, v8

    invoke-static {v10, v13}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 590
    .local v4, endPos:I
    const/4 v7, -0x1

    .line 591
    .local v7, lastPos:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    iget-object v10, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_6

    .line 592
    iget-object v10, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    .line 593
    .local v6, ii:Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    iget v10, v6, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    if-lt v10, v9, :cond_2

    iget v10, v6, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    if-le v10, v4, :cond_4

    :cond_2
    iget-boolean v10, v6, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->scrolling:Z

    if-nez v10, :cond_4

    .line 595
    iget-object v10, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 596
    add-int/lit8 v5, v5, -0x1

    .line 597
    iget-object v10, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    iget v13, v6, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    iget-object v14, v6, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v10, p0, v13, v14}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->destroyItem(Landroid/view/View;ILjava/lang/Object;)V

    .line 613
    :cond_3
    iget v7, v6, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    .line 591
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 598
    :cond_4
    if-ge v7, v4, :cond_3

    iget v10, v6, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    if-le v10, v9, :cond_3

    .line 602
    add-int/lit8 v7, v7, 0x1

    .line 603
    if-ge v7, v9, :cond_5

    .line 604
    move v7, v9

    .line 606
    :cond_5
    :goto_1
    if-gt v7, v4, :cond_3

    iget v10, v6, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    if-ge v7, v10, :cond_3

    .line 608
    invoke-virtual {p0, v7, v5}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->addNewItem(II)V

    .line 609
    add-int/lit8 v7, v7, 0x1

    .line 610
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 617
    .end local v6           #ii:Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    :cond_6
    iget-object v10, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_7

    iget-object v10, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    iget v7, v10, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    .line 618
    :goto_2
    if-ge v7, v4, :cond_9

    .line 619
    add-int/lit8 v7, v7, 0x1

    .line 620
    if-le v7, v9, :cond_8

    .line 621
    :goto_3
    if-gt v7, v4, :cond_9

    .line 623
    invoke-virtual {p0, v7, v12}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->addNewItem(II)V

    .line 624
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_7
    move v7, v12

    .line 617
    goto :goto_2

    :cond_8
    move v7, v9

    .line 620
    goto :goto_3

    .line 635
    :cond_9
    const/4 v2, 0x0

    .line 636
    .local v2, curItem:Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    const/4 v5, 0x0

    :goto_4
    iget-object v10, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_a

    .line 637
    iget-object v10, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    iget v10, v10, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    iget v12, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    if-ne v10, v12, :cond_d

    .line 638
    iget-object v10, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #curItem:Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    check-cast v2, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    .line 642
    .restart local v2       #curItem:Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    :cond_a
    iget-object v12, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    iget v13, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    if-eqz v2, :cond_e

    iget-object v10, v2, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->object:Ljava/lang/Object;

    :goto_5
    invoke-virtual {v12, p0, v13, v10}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V

    .line 644
    iget-object v10, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v10, p0}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->finishUpdate(Landroid/view/View;)V

    .line 646
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->hasFocus()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 647
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->findFocus()Landroid/view/View;

    move-result-object v3

    .line 648
    .local v3, currentFocused:Landroid/view/View;
    if-eqz v3, :cond_f

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->infoForAnyChild(Landroid/view/View;)Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    move-result-object v6

    .line 649
    .restart local v6       #ii:Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    :goto_6
    if-eqz v6, :cond_b

    iget v10, v6, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    iget v11, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    if-eq v10, v11, :cond_0

    .line 650
    :cond_b
    const/4 v5, 0x0

    :goto_7
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getChildCount()I

    move-result v10

    if-ge v5, v10, :cond_0

    .line 651
    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 652
    .local v1, child:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->infoForChild(Landroid/view/View;)Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    move-result-object v6

    .line 653
    if-eqz v6, :cond_c

    iget v10, v6, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    iget v11, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    if-ne v10, v11, :cond_c

    .line 654
    const/4 v10, 0x2

    invoke-virtual {v1, v10}, Landroid/view/View;->requestFocus(I)Z

    move-result v10

    if-nez v10, :cond_0

    .line 650
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 636
    .end local v1           #child:Landroid/view/View;
    .end local v3           #currentFocused:Landroid/view/View;
    .end local v6           #ii:Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_e
    move-object v10, v11

    .line 642
    goto :goto_5

    .restart local v3       #currentFocused:Landroid/view/View;
    :cond_f
    move-object v6, v11

    .line 648
    goto :goto_6
.end method

.method public setAdapter(Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;)V
    .locals 7
    .parameter "adapter"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 256
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    if-eqz v2, :cond_1

    .line 257
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->setDataSetObserver(Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter$DataSetObserver;)V

    .line 258
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->startUpdate(Landroid/view/View;)V

    .line 259
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 260
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    .line 261
    .local v1, ii:Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    iget v3, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->position:I

    iget-object v4, v1, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p0, v3, v4}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->destroyItem(Landroid/view/View;ILjava/lang/Object;)V

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    .end local v1           #ii:Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->finishUpdate(Landroid/view/View;)V

    .line 264
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 265
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->removeAllViews()V

    .line 266
    iput v5, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    .line 267
    invoke-virtual {p0, v5, v5}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->scrollTo(II)V

    .line 270
    .end local v0           #i:I
    :cond_1
    iput-object p1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    .line 272
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    if-eqz v2, :cond_3

    .line 273
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mObserver:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter$DataSetObserver;

    if-nez v2, :cond_2

    .line 274
    new-instance v2, Lcom/sec/android/app/contacts/widget/ContactsViewPager$DataSetObserver;

    invoke-direct {v2, p0, v6}, Lcom/sec/android/app/contacts/widget/ContactsViewPager$DataSetObserver;-><init>(Lcom/sec/android/app/contacts/widget/ContactsViewPager;Lcom/sec/android/app/contacts/widget/ContactsViewPager$1;)V

    iput-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mObserver:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter$DataSetObserver;

    .line 276
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    iget-object v3, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mObserver:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter$DataSetObserver;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->setDataSetObserver(Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter$DataSetObserver;)V

    .line 277
    iput-boolean v5, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPopulatePending:Z

    .line 278
    iget v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredCurItem:I

    if-ltz v2, :cond_4

    .line 279
    iget-object v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    iget-object v3, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 280
    iget v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredCurItem:I

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v5, v3}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setCurrentItemInternal(IZZ)V

    .line 281
    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredCurItem:I

    .line 282
    iput-object v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 283
    iput-object v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 288
    :cond_3
    :goto_1
    return-void

    .line 285
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->populate()V

    goto :goto_1
.end method

.method public setCurrentItem(IZ)V
    .locals 1
    .parameter "item"
    .parameter "smoothScroll"

    .prologue
    const/4 v0, 0x0

    .line 313
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPopulatePending:Z

    .line 314
    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setCurrentItemInternal(IZZ)V

    .line 315
    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .locals 7
    .parameter "item"
    .parameter "smoothScroll"
    .parameter "always"

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 322
    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->getCount()I

    move-result v4

    if-gtz v4, :cond_2

    .line 323
    :cond_0
    invoke-direct {p0, v5}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setScrollingCacheEnabled(Z)V

    .line 360
    :cond_1
    :goto_0
    return-void

    .line 326
    :cond_2
    if-nez p3, :cond_3

    iget v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    if-ne v4, p1, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_3

    .line 327
    invoke-direct {p0, v5}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_0

    .line 330
    :cond_3
    if-gez p1, :cond_6

    .line 331
    const/4 p1, 0x0

    .line 335
    :cond_4
    :goto_1
    iget v3, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOffscreenPageLimit:I

    .line 336
    .local v3, pageLimit:I
    iget v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    add-int/2addr v4, v3

    if-gt p1, v4, :cond_5

    iget v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    sub-int/2addr v4, v3

    if-ge p1, v4, :cond_7

    .line 340
    :cond_5
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_7

    .line 341
    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;

    iput-boolean v1, v4, Lcom/sec/android/app/contacts/widget/ContactsViewPager$ItemInfo;->scrolling:Z

    .line 340
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 332
    .end local v2           #i:I
    .end local v3           #pageLimit:I
    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->getCount()I

    move-result v4

    if-lt p1, v4, :cond_4

    .line 333
    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mAdapter:Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;->getCount()I

    move-result v4

    add-int/lit8 p1, v4, -0x1

    goto :goto_1

    .line 344
    .restart local v3       #pageLimit:I
    :cond_7
    iget v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    if-eq v4, p1, :cond_8

    .line 345
    .local v1, dispatchSelected:Z
    :goto_3
    iput p1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mCurItem:I

    .line 346
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->populate()V

    .line 347
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getWidth()I

    move-result v4

    iget v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mPageMargin:I

    add-int/2addr v4, v6

    mul-int v0, v4, p1

    .line 348
    .local v0, destX:I
    if-eqz p2, :cond_9

    .line 349
    invoke-virtual {p0, v0, v5}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->smoothScrollTo(II)V

    .line 350
    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;

    if-eqz v4, :cond_1

    .line 351
    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;

    invoke-interface {v4, p1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;->onPageSelected(I)V

    goto :goto_0

    .end local v0           #destX:I
    .end local v1           #dispatchSelected:Z
    :cond_8
    move v1, v5

    .line 344
    goto :goto_3

    .line 354
    .restart local v0       #destX:I
    .restart local v1       #dispatchSelected:Z
    :cond_9
    if-eqz v1, :cond_a

    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;

    if-eqz v4, :cond_a

    .line 355
    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;

    invoke-interface {v4, p1}, Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 357
    :cond_a
    invoke-direct {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->completeScroll()V

    .line 358
    invoke-virtual {p0, v0, v5}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->scrollTo(II)V

    goto :goto_0
.end method

.method public setOnPageChangeListener(Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 363
    iput-object p1, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mOnPageChangeListener:Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;

    .line 364
    return-void
.end method

.method smoothScrollTo(II)V
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 475
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getChildCount()I

    move-result v4

    if-nez v4, :cond_0

    .line 477
    invoke-direct {p0, v5}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setScrollingCacheEnabled(Z)V

    .line 495
    :goto_0
    return-void

    .line 480
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getScrollX()I

    move-result v2

    .line 481
    .local v2, sx:I
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getScrollY()I

    move-result v3

    .line 482
    .local v3, sy:I
    sub-int v0, p1, v2

    .line 483
    .local v0, dx:I
    sub-int v1, p2, v3

    .line 484
    .local v1, dy:I
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 485
    invoke-direct {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->completeScroll()V

    .line 486
    invoke-direct {p0, v5}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setScrollState(I)V

    goto :goto_0

    .line 490
    :cond_1
    invoke-direct {p0, v6}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setScrollingCacheEnabled(Z)V

    .line 491
    iput-boolean v6, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScrolling:Z

    .line 492
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setScrollState(I)V

    .line 493
    iget-object v4, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4, v2, v3, v0, v1}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 494
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->invalidate()V

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 456
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

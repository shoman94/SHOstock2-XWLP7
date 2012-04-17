.class public abstract Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;
.super Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;
.source "DialtactsFragmentPagerAdapter.java"


# instance fields
.field private mCurTransaction:Landroid/app/FragmentTransaction;

.field private mCurrentPrimaryItem:Landroid/app/Fragment;

.field private final mFragmentManager:Landroid/app/FragmentManager;


# direct methods
.method public constructor <init>(Landroid/app/FragmentManager;)V
    .locals 1
    .parameter "fm"

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Lcom/sec/android/app/contacts/widget/ContactsPagerAdapter;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 39
    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    .line 42
    iput-object p1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    .line 43
    return-void
.end method

.method private static makeFragmentName(II)Ljava/lang/String;
    .locals 2
    .parameter "viewId"
    .parameter "index"

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:switcher:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    check-cast p3, Landroid/app/Fragment;

    .end local p3
    invoke-virtual {v0, p3}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 87
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 1
    .parameter "container"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 110
    :cond_0
    return-void
.end method

.method public abstract getItem(I)Landroid/app/Fragment;
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 5
    .parameter "container"
    .parameter "position"

    .prologue
    .line 56
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v2, :cond_0

    .line 57
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 61
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v2, p2}, Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;->makeFragmentName(II)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, name:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 63
    .local v0, fragment:Landroid/app/Fragment;
    if-eqz v0, :cond_2

    .line 65
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 72
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eq v0, v2, :cond_1

    .line 73
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/support/v13/app/FragmentCompat;->setMenuVisibility(Landroid/app/Fragment;Z)V

    .line 76
    :cond_1
    return-object v0

    .line 67
    :cond_2
    invoke-virtual {p0, p2}, Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v0

    .line 69
    iget-object v2, p0, Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {v4, p2}, Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;->makeFragmentName(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "object"

    .prologue
    .line 114
    check-cast p2, Landroid/app/Fragment;

    .end local p2
    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .parameter "state"
    .parameter "loader"

    .prologue
    .line 124
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 3
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 91
    move-object v0, p3

    check-cast v0, Landroid/app/Fragment;

    .line 92
    .local v0, fragment:Landroid/app/Fragment;
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eq v0, v1, :cond_2

    .line 93
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/support/v13/app/FragmentCompat;->setMenuVisibility(Landroid/app/Fragment;Z)V

    .line 96
    :cond_0
    if-eqz v0, :cond_1

    .line 97
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v13/app/FragmentCompat;->setMenuVisibility(Landroid/app/Fragment;Z)V

    .line 99
    :cond_1
    iput-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    .line 101
    :cond_2
    return-void
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "container"

    .prologue
    .line 52
    return-void
.end method

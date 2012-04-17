.class public Lcom/android/contacts/list/PhoneNumberPickerFragment;
.super Lcom/android/contacts/list/ContactEntryListFragment;
.source "PhoneNumberPickerFragment.java"

# interfaces
.implements Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/PhoneNumberPickerFragment$FilterHeaderClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/list/ContactEntryListAdapter;",
        ">;",
        "Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccountFilterHeaderContainer:Landroid/view/View;

.field private mAccountFilterHeaderView:Landroid/widget/TextView;

.field private mEmptyView:Landroid/view/View;

.field private mFilter:Lcom/android/contacts/list/ContactListFilter;

.field private mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

.field protected mHasGalSearchData:Z

.field protected mHasPhoneData:Z

.field protected mHasPhoneSearchData:Z

.field private mListContainer:Landroid/view/View;

.field private mListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

.field private mLoaderStarted:Z

.field private mPaddingView:Landroid/view/View;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSearchView:Landroid/widget/SearchView;

.field private mShortcutAction:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 93
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;-><init>()V

    .line 74
    iput-boolean v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mHasPhoneData:Z

    .line 75
    iput-boolean v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mHasPhoneSearchData:Z

    .line 76
    iput-boolean v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mHasGalSearchData:Z

    .line 91
    new-instance v0, Lcom/android/contacts/list/PhoneNumberPickerFragment$FilterHeaderClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/list/PhoneNumberPickerFragment$FilterHeaderClickListener;-><init>(Lcom/android/contacts/list/PhoneNumberPickerFragment;Lcom/android/contacts/list/PhoneNumberPickerFragment$1;)V

    iput-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

    .line 94
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setQuickContactEnabled(Z)V

    .line 95
    invoke-virtual {p0, v3}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setPhotoLoaderEnabled(Z)V

    .line 97
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setVisibleScrollbarEnabled(Z)V

    .line 98
    invoke-virtual {p0, v3}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    .line 100
    invoke-virtual {p0, v3}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 101
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setDirectorySearchMode(I)V

    .line 103
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setSweepActionEnabled(Z)V

    .line 106
    invoke-virtual {p0, v3}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setFakeQueryModeEnabled(Z)V

    .line 109
    invoke-virtual {p0, v3}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setHasOptionsMenu(Z)V

    .line 110
    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/list/PhoneNumberPickerFragment;)Landroid/widget/SearchView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method private configureEmptyView(Z)V
    .locals 4
    .parameter "isEmpty"

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 457
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mListContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mListContainer:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 462
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 461
    goto :goto_1

    :cond_3
    move v2, v1

    .line 462
    goto :goto_2
.end method

.method private updateFilterHeaderView()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 152
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mAccountFilterHeaderView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    .line 154
    .local v0, filter:Lcom/android/contacts/list/ContactListFilter;
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_3

    .line 155
    iget v1, v0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v2, -0x6

    if-ne v1, v2, :cond_1

    .line 156
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mAccountFilterHeaderContainer:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 157
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mAccountFilterHeaderView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0063

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mPaddingView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 178
    .end local v0           #filter:Lcom/android/contacts/list/ContactListFilter;
    :cond_0
    :goto_0
    return-void

    .line 161
    .restart local v0       #filter:Lcom/android/contacts/list/ContactListFilter;
    :cond_1
    iget v1, v0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v2, -0x3

    if-ne v1, v2, :cond_2

    .line 162
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mAccountFilterHeaderContainer:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 163
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mAccountFilterHeaderView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0064

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mPaddingView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 167
    :cond_2
    iget v1, v0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_3

    .line 168
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mAccountFilterHeaderContainer:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 169
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mAccountFilterHeaderView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0062

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mPaddingView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 175
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mAccountFilterHeaderContainer:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 176
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mPaddingView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected configureAdapter()V
    .locals 2

    .prologue
    .line 269
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureAdapter()V

    .line 271
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    .line 272
    .local v0, adapter:Lcom/android/contacts/list/ContactEntryListAdapter;
    if-nez v0, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-eqz v1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    goto :goto_0
.end method

.method protected createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 256
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 257
    new-instance v0, Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/PhoneNumberListAdapter;-><init>(Landroid/content/Context;)V

    .line 258
    .local v0, adapter:Lcom/android/contacts/list/PhoneNumberListAdapter;
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/PhoneNumberListAdapter;->setDisplayPhotos(Z)V

    .line 263
    .end local v0           #adapter:Lcom/android/contacts/list/PhoneNumberListAdapter;
    :goto_0
    return-object v0

    .line 261
    :cond_0
    new-instance v0, Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;-><init>(Landroid/content/Context;)V

    .line 262
    .local v0, adapter:Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;->setDisplayPhotos(Z)V

    goto :goto_0
.end method

.method public getFilter()Lcom/android/contacts/list/ContactListFilter;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    return-object v0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "inflater"
    .parameter "container"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 283
    const v3, 0x7f040045

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 284
    .local v2, view:Landroid/view/View;
    const v3, 0x7f0d010e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 285
    const v3, 0x7f0d0229

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 286
    const v3, 0x7f0d00ea

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SearchView;

    iput-object v3, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    .line 287
    const v3, 0x7f0d00e9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 288
    .local v1, newButton:Landroid/widget/ImageButton;
    const v3, 0x7f0d0198

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 289
    .local v0, menuButton:Landroid/widget/ImageButton;
    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 290
    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 292
    iget-object v3, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 293
    iget-object v3, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 294
    iget-object v3, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3, v5}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 295
    iget-object v3, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->clearFocus()V

    .line 296
    iget-object v3, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    const v4, 0x7f0a01ac

    invoke-virtual {p0, v4}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v3, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v4, Lcom/android/contacts/list/PhoneNumberPickerFragment$1;

    invoke-direct {v4, p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment$1;-><init>(Lcom/android/contacts/list/PhoneNumberPickerFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 331
    return-object v2
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 182
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onAttach(Landroid/app/Activity;)V

    .line 183
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mPrefs:Landroid/content/SharedPreferences;

    .line 184
    return-void
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 4
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 118
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 120
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0d00eb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mListContainer:Landroid/view/View;

    .line 121
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0d00ed

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mEmptyView:Landroid/view/View;

    .line 123
    const v1, 0x7f040025

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 124
    .local v0, paddingView:Landroid/view/View;
    const v1, 0x7f0d00c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mPaddingView:Landroid/view/View;

    .line 125
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0d0112

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mAccountFilterHeaderView:Landroid/widget/TextView;

    .line 128
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0d0111

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mAccountFilterHeaderContainer:Landroid/view/View;

    .line 130
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mAccountFilterHeaderContainer:Landroid/view/View;

    iget-object v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    invoke-direct {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->updateFilterHeaderView()V

    .line 132
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 188
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->onDetach()V

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mPrefs:Landroid/content/SharedPreferences;

    .line 190
    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 5
    .parameter "position"
    .parameter "id"

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/PhoneNumberListAdapter;

    .line 234
    .local v0, adapter:Lcom/android/contacts/list/PhoneNumberListAdapter;
    invoke-virtual {v0, p1}, Lcom/android/contacts/list/PhoneNumberListAdapter;->getDataUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 241
    .end local v0           #adapter:Lcom/android/contacts/list/PhoneNumberListAdapter;
    .local v1, phoneUri:Landroid/net/Uri;
    :goto_0
    if-eqz v1, :cond_1

    .line 242
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->pickPhoneNumber(Landroid/net/Uri;)V

    .line 246
    :goto_1
    return-void

    .line 237
    .end local v1           #phoneUri:Landroid/net/Uri;
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;

    .line 238
    .local v0, adapter:Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;
    invoke-virtual {v0, p1}, Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;->getPhoneUri(I)Landroid/net/Uri;

    move-result-object v1

    .restart local v1       #phoneUri:Landroid/net/Uri;
    goto :goto_0

    .line 244
    .end local v0           #adapter:Lcom/android/contacts/list/LegacyPhoneNumberListAdapter;
    :cond_1
    sget-object v2, Lcom/android/contacts/list/PhoneNumberPickerFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Item at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " was clicked before adapter is ready. Ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 7
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v5, 0x2

    const/4 v6, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 337
    iget-boolean v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mEnabled:Z

    if-nez v2, :cond_1

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    .line 342
    .local v1, loaderId:I
    if-ne v1, v6, :cond_4

    .line 343
    iput v5, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mDirectoryListStatus:I

    .line 344
    iget-object v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v2, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->changeDirectories(Landroid/database/Cursor;)V

    .line 345
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->startLoading()V

    .line 398
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->isSearchMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 399
    if-nez v1, :cond_3

    .line 400
    if-eqz p2, :cond_d

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_d

    .line 402
    iput-boolean v3, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mHasPhoneData:Z

    .line 406
    :cond_3
    :goto_2
    iget-boolean v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mHasPhoneData:Z

    if-nez v2, :cond_e

    :goto_3
    invoke-direct {p0, v3}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->configureEmptyView(Z)V

    goto :goto_0

    .line 349
    :cond_4
    invoke-virtual {p0, v1, p2}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->onPartitionLoaded(ILandroid/database/Cursor;)V

    .line 350
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->isSearchMode()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 352
    if-eqz p2, :cond_7

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_7

    .line 353
    if-nez v1, :cond_6

    .line 355
    iput-boolean v3, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mHasPhoneSearchData:Z

    .line 370
    :goto_4
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getDirectorySearchMode()I

    move-result v0

    .line 371
    .local v0, directorySearchMode:I
    if-eqz v0, :cond_5

    .line 372
    iget v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mDirectoryListStatus:I

    if-nez v2, :cond_9

    .line 373
    iput v3, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mDirectoryListStatus:I

    .line 374
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v6, v5, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 381
    :cond_5
    :goto_5
    iget-boolean v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mHasPhoneSearchData:Z

    if-nez v2, :cond_a

    iget-boolean v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mHasGalSearchData:Z

    if-nez v2, :cond_a

    move v2, v3

    :goto_6
    invoke-direct {p0, v2}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->configureEmptyView(Z)V

    goto :goto_1

    .line 357
    .end local v0           #directorySearchMode:I
    :cond_6
    iput-boolean v3, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mHasGalSearchData:Z

    goto :goto_4

    .line 361
    :cond_7
    if-nez v1, :cond_8

    .line 362
    iput-boolean v4, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mHasPhoneSearchData:Z

    goto :goto_4

    .line 365
    :cond_8
    iput-boolean v4, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mHasGalSearchData:Z

    goto :goto_4

    .line 376
    .restart local v0       #directorySearchMode:I
    :cond_9
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->startLoading()V

    goto :goto_5

    :cond_a
    move v2, v4

    .line 381
    goto :goto_6

    .line 383
    .end local v0           #directorySearchMode:I
    :cond_b
    iput v4, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mDirectoryListStatus:I

    .line 384
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 387
    iget-boolean v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFakeQueryModeEnabled:Z

    if-eqz v2, :cond_2

    .line 388
    iget v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFakeQueryStatus:I

    if-ne v2, v3, :cond_c

    .line 389
    iput v5, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFakeQueryStatus:I

    .line 390
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->startFullQuery()V

    goto :goto_1

    .line 391
    :cond_c
    iget v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFakeQueryStatus:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_2

    .line 392
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFakeQueryStatus:I

    goto :goto_1

    .line 404
    :cond_d
    iput-boolean v4, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mHasPhoneData:Z

    goto :goto_2

    :cond_e
    move v3, v4

    .line 406
    goto :goto_3
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 211
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 212
    .local v0, itemId:I
    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 213
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

    if-eqz v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

    invoke-interface {v1}, Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;->onHomeInActionBarSelected()V

    .line 216
    :cond_0
    const/4 v1, 0x1

    .line 218
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPickerResult(Landroid/content/Intent;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;->onPickPhoneNumberAction(Landroid/net/Uri;)V

    .line 430
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 205
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 206
    const-string v0, "filter"

    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 207
    return-void
.end method

.method public onShortcutIntentCreated(Landroid/net/Uri;Landroid/content/Intent;)V
    .locals 1
    .parameter "uri"
    .parameter "shortcutIntent"

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

    invoke-interface {v0, p2}, Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;->onShortcutIntentCreated(Landroid/content/Intent;)V

    .line 425
    return-void
.end method

.method public pickPhoneNumber(Landroid/net/Uri;)V
    .locals 2
    .parameter "uri"

    .prologue
    .line 412
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mShortcutAction:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 413
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

    invoke-interface {v1, p1}, Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;->onPickPhoneNumberAction(Landroid/net/Uri;)V

    .line 421
    :goto_0
    return-void

    .line 415
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 416
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 418
    :cond_1
    new-instance v0, Lcom/android/contacts/list/ShortcutIntentBuilder;

    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/contacts/list/ShortcutIntentBuilder;-><init>(Landroid/content/Context;Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;)V

    .line 419
    .local v0, builder:Lcom/android/contacts/list/ShortcutIntentBuilder;
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mShortcutAction:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/list/ShortcutIntentBuilder;->createPhoneNumberShortcutIntent(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedState"

    .prologue
    .line 194
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    .line 196
    if-nez p1, :cond_0

    .line 201
    :goto_0
    return-void

    .line 200
    :cond_0
    const-string v0, "filter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListFilter;

    iput-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    goto :goto_0
.end method

.method public setFilter(Lcom/android/contacts/list/ContactListFilter;)V
    .locals 2
    .parameter "filter"

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactListFilter;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 454
    :cond_1
    :goto_0
    return-void

    .line 442
    :cond_2
    iput-object p1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 443
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_3

    .line 445
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-static {v0, v1}, Lcom/android/contacts/list/ContactListFilter;->storeToPreferences(Landroid/content/SharedPreferences;Lcom/android/contacts/list/ContactListFilter;)V

    .line 450
    :cond_3
    iget-boolean v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mLoaderStarted:Z

    if-eqz v0, :cond_4

    .line 451
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->reloadData()V

    .line 453
    :cond_4
    invoke-direct {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->updateFilterHeaderView()V

    goto :goto_0
.end method

.method public setOnPhoneNumberPickerActionListener(Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/list/OnPhoneNumberPickerActionListener;

    .line 114
    return-void
.end method

.method public setSearchMode(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->setSearchMode(Z)V

    .line 148
    invoke-direct {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->updateFilterHeaderView()V

    .line 149
    return-void
.end method

.method public setShortcutAction(Ljava/lang/String;)V
    .locals 0
    .parameter "shortcutAction"

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mShortcutAction:Ljava/lang/String;

    .line 227
    return-void
.end method

.method protected showCount(ILandroid/database/Cursor;)V
    .locals 7
    .parameter "partitionIndex"
    .parameter "data"

    .prologue
    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 136
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactEntryListAdapter;->isEmpty()Z

    move-result v1

    .line 138
    .local v1, isEmpty:Z
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v6, 0x7f0d00ed

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 139
    .local v0, emptyView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v6, 0x7f0d00eb

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 141
    .local v2, listContainer:Landroid/view/View;
    if-eqz v1, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 142
    if-eqz v1, :cond_1

    :goto_1
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 143
    return-void

    :cond_0
    move v3, v5

    .line 141
    goto :goto_0

    :cond_1
    move v5, v4

    .line 142
    goto :goto_1
.end method

.method protected startLoading()V
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment;->mLoaderStarted:Z

    .line 251
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->startLoading()V

    .line 252
    return-void
.end method

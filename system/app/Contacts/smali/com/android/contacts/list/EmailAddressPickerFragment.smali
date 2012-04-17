.class public Lcom/android/contacts/list/EmailAddressPickerFragment;
.super Lcom/android/contacts/list/ContactEntryListFragment;
.source "EmailAddressPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/list/ContactEntryListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private mEmptyView:Landroid/view/View;

.field protected mHasGalSearchData:Z

.field protected mHasPhoneData:Z

.field protected mHasPhoneSearchData:Z

.field private mListContainer:Landroid/view/View;

.field private mListener:Lcom/android/contacts/list/OnEmailAddressPickerActionListener;

.field private mSearchView:Landroid/widget/SearchView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;-><init>()V

    .line 44
    iput-boolean v1, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mHasPhoneData:Z

    .line 45
    iput-boolean v1, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mHasPhoneSearchData:Z

    .line 46
    iput-boolean v1, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mHasGalSearchData:Z

    .line 49
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/EmailAddressPickerFragment;->setQuickContactEnabled(Z)V

    .line 50
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/EmailAddressPickerFragment;->setPhotoLoaderEnabled(Z)V

    .line 51
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/EmailAddressPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 52
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->setDirectorySearchMode(I)V

    .line 54
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/EmailAddressPickerFragment;->setSweepActionEnabled(Z)V

    .line 57
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/EmailAddressPickerFragment;->setFakeQueryModeEnabled(Z)V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/list/EmailAddressPickerFragment;)Landroid/widget/SearchView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method private configureEmptyView(Z)V
    .locals 4
    .parameter "isEmpty"

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 221
    iget-object v0, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mListContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mListContainer:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 225
    goto :goto_1

    :cond_3
    move v2, v1

    .line 226
    goto :goto_2
.end method

.method private pickEmailAddress(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mListener:Lcom/android/contacts/list/OnEmailAddressPickerActionListener;

    invoke-interface {v0, p1}, Lcom/android/contacts/list/OnEmailAddressPickerActionListener;->onPickEmailAddressAction(Landroid/net/Uri;)V

    .line 218
    return-void
.end method


# virtual methods
.method protected createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 73
    new-instance v0, Lcom/android/contacts/list/EmailAddressListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/EmailAddressListAdapter;-><init>(Landroid/content/Context;)V

    .line 74
    .local v0, adapter:Lcom/android/contacts/list/EmailAddressListAdapter;
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/EmailAddressListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 75
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/EmailAddressListAdapter;->setDisplayPhotos(Z)V

    .line 76
    return-object v0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "inflater"
    .parameter "container"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 89
    const v3, 0x7f040045

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 90
    .local v2, view:Landroid/view/View;
    const v3, 0x7f0d010e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 91
    const v3, 0x7f0d0229

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 92
    const v3, 0x7f0d00ea

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SearchView;

    iput-object v3, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mSearchView:Landroid/widget/SearchView;

    .line 93
    const v3, 0x7f0d00e9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 94
    .local v1, newButton:Landroid/widget/ImageButton;
    const v3, 0x7f0d0198

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 95
    .local v0, menuButton:Landroid/widget/ImageButton;
    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 96
    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 98
    iget-object v3, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mSearchView:Landroid/widget/SearchView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 99
    iget-object v3, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 100
    iget-object v3, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3, v5}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 101
    iget-object v3, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->clearFocus()V

    .line 102
    iget-object v3, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mSearchView:Landroid/widget/SearchView;

    const v4, 0x7f0a01ac

    invoke-virtual {p0, v4}, Lcom/android/contacts/list/EmailAddressPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v3, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v4, Lcom/android/contacts/list/EmailAddressPickerFragment$1;

    invoke-direct {v4, p0}, Lcom/android/contacts/list/EmailAddressPickerFragment$1;-><init>(Lcom/android/contacts/list/EmailAddressPickerFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 137
    return-object v2
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 2
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 81
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d00eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mListContainer:Landroid/view/View;

    .line 84
    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d00ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mEmptyView:Landroid/view/View;

    .line 85
    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 2
    .parameter "position"
    .parameter "id"

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/EmailAddressListAdapter;

    .line 68
    .local v0, adapter:Lcom/android/contacts/list/EmailAddressListAdapter;
    invoke-virtual {v0, p1}, Lcom/android/contacts/list/EmailAddressListAdapter;->getDataUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/contacts/list/EmailAddressPickerFragment;->pickEmailAddress(Landroid/net/Uri;)V

    .line 69
    return-void
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

    .line 143
    iget-boolean v2, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mEnabled:Z

    if-nez v2, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    .line 148
    .local v1, loaderId:I
    if-ne v1, v6, :cond_4

    .line 149
    iput v5, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mDirectoryListStatus:I

    .line 150
    iget-object v2, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v2, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->changeDirectories(Landroid/database/Cursor;)V

    .line 151
    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->startLoading()V

    .line 204
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->isSearchMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 205
    if-nez v1, :cond_3

    .line 206
    if-eqz p2, :cond_d

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_d

    .line 208
    iput-boolean v3, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mHasPhoneData:Z

    .line 212
    :cond_3
    :goto_2
    iget-boolean v2, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mHasPhoneData:Z

    if-nez v2, :cond_e

    :goto_3
    invoke-direct {p0, v3}, Lcom/android/contacts/list/EmailAddressPickerFragment;->configureEmptyView(Z)V

    goto :goto_0

    .line 155
    :cond_4
    invoke-virtual {p0, v1, p2}, Lcom/android/contacts/list/EmailAddressPickerFragment;->onPartitionLoaded(ILandroid/database/Cursor;)V

    .line 156
    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->isSearchMode()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 158
    if-eqz p2, :cond_7

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_7

    .line 159
    if-nez v1, :cond_6

    .line 161
    iput-boolean v3, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mHasPhoneSearchData:Z

    .line 176
    :goto_4
    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->getDirectorySearchMode()I

    move-result v0

    .line 177
    .local v0, directorySearchMode:I
    if-eqz v0, :cond_5

    .line 178
    iget v2, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mDirectoryListStatus:I

    if-nez v2, :cond_9

    .line 179
    iput v3, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mDirectoryListStatus:I

    .line 180
    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v6, v5, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 187
    :cond_5
    :goto_5
    iget-boolean v2, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mHasPhoneSearchData:Z

    if-nez v2, :cond_a

    iget-boolean v2, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mHasGalSearchData:Z

    if-nez v2, :cond_a

    move v2, v3

    :goto_6
    invoke-direct {p0, v2}, Lcom/android/contacts/list/EmailAddressPickerFragment;->configureEmptyView(Z)V

    goto :goto_1

    .line 163
    .end local v0           #directorySearchMode:I
    :cond_6
    iput-boolean v3, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mHasGalSearchData:Z

    goto :goto_4

    .line 167
    :cond_7
    if-nez v1, :cond_8

    .line 168
    iput-boolean v4, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mHasPhoneSearchData:Z

    goto :goto_4

    .line 171
    :cond_8
    iput-boolean v4, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mHasGalSearchData:Z

    goto :goto_4

    .line 182
    .restart local v0       #directorySearchMode:I
    :cond_9
    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->startLoading()V

    goto :goto_5

    :cond_a
    move v2, v4

    .line 187
    goto :goto_6

    .line 189
    .end local v0           #directorySearchMode:I
    :cond_b
    iput v4, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mDirectoryListStatus:I

    .line 190
    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 193
    iget-boolean v2, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mFakeQueryModeEnabled:Z

    if-eqz v2, :cond_2

    .line 194
    iget v2, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mFakeQueryStatus:I

    if-ne v2, v3, :cond_c

    .line 195
    iput v5, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mFakeQueryStatus:I

    .line 196
    invoke-virtual {p0}, Lcom/android/contacts/list/EmailAddressPickerFragment;->startFullQuery()V

    goto :goto_1

    .line 197
    :cond_c
    iget v2, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mFakeQueryStatus:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_2

    .line 198
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mFakeQueryStatus:I

    goto :goto_1

    .line 210
    :cond_d
    iput-boolean v4, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mHasPhoneData:Z

    goto :goto_2

    :cond_e
    move v3, v4

    .line 212
    goto :goto_3
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/EmailAddressPickerFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public setOnEmailAddressPickerActionListener(Lcom/android/contacts/list/OnEmailAddressPickerActionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/contacts/list/EmailAddressPickerFragment;->mListener:Lcom/android/contacts/list/OnEmailAddressPickerActionListener;

    .line 63
    return-void
.end method

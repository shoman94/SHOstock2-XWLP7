.class public Lcom/android/contacts/list/ContactPickerFragment;
.super Lcom/android/contacts/list/ContactEntryListFragment;
.source "ContactPickerFragment.java"

# interfaces
.implements Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/list/ContactEntryListAdapter;",
        ">;",
        "Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;"
    }
.end annotation


# instance fields
.field private OnlyPhoneNumberProjection:Z

.field public mAttachPhotoMode:Z

.field private mCounterHeaderView:Landroid/view/View;

.field private mCreateContactEnabled:Z

.field private mEditMode:Z

.field private mEmptyView:Landroid/view/View;

.field private mFinishActivityonCreateComplete:Z

.field protected mHasGalSearchData:Z

.field protected mHasPhoneData:Z

.field protected mHasPhoneSearchData:Z

.field private mListContainer:Landroid/view/View;

.field private mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

.field public mRingtoneMode:Z

.field protected mSearchView:Landroid/widget/SearchView;

.field private mShortcutRequested:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;-><init>()V

    .line 61
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mAttachPhotoMode:Z

    .line 62
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mRingtoneMode:Z

    .line 73
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mHasPhoneData:Z

    .line 74
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mHasPhoneSearchData:Z

    .line 75
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mHasGalSearchData:Z

    .line 78
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->setPhotoLoaderEnabled(Z)V

    .line 79
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 81
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->setVisibleScrollbarEnabled(Z)V

    .line 82
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    .line 84
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->setQuickContactEnabled(Z)V

    .line 85
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactPickerFragment;->setDirectorySearchMode(I)V

    .line 87
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->setSweepActionEnabled(Z)V

    .line 89
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->setFinishActivityonCreateComplete(Z)V

    .line 91
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->setFakeQueryModeEnabled(Z)V

    .line 93
    return-void
.end method

.method private configureEmptyView(Z)V
    .locals 4
    .parameter "isEmpty"

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 204
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEmptyView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListContainer:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 208
    goto :goto_1

    :cond_3
    move v2, v1

    .line 209
    goto :goto_2
.end method


# virtual methods
.method protected configureAdapter()V
    .locals 2

    .prologue
    .line 283
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureAdapter()V

    .line 285
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    .line 288
    .local v0, adapter:Lcom/android/contacts/list/ContactEntryListAdapter;
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->isCreateContactEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setEmptyListEnabled(Z)V

    .line 289
    return-void

    .line 288
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 226
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 227
    new-instance v0, Lcom/android/contacts/list/DefaultContactListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 228
    .local v0, adapter:Lcom/android/contacts/list/DefaultContactListAdapter;
    const/4 v1, -0x2

    invoke-static {v1}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 230
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/DefaultContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 231
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/DefaultContactListAdapter;->setDisplayPhotos(Z)V

    .line 232
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/DefaultContactListAdapter;->setQuickContactEnabled(Z)V

    .line 234
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->OnlyPhoneNumberProjection:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->setPhoneNumbersOnly(Z)V

    .line 236
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mRingtoneMode:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->setRingToneMode(Z)V

    .line 237
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mAttachPhotoMode:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->setAttachPhotoMode(Z)V

    .line 243
    .end local v0           #adapter:Lcom/android/contacts/list/DefaultContactListAdapter;
    :goto_0
    return-object v0

    .line 240
    :cond_0
    new-instance v0, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/LegacyContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 241
    .local v0, adapter:Lcom/android/contacts/list/LegacyContactListAdapter;
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/LegacyContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 242
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/LegacyContactListAdapter;->setDisplayPhotos(Z)V

    goto :goto_0
.end method

.method public createNewContact()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mFinishActivityonCreateComplete:Z

    invoke-interface {v0, v1}, Lcom/android/contacts/list/OnContactPickerActionListener;->onCreateNewContactAction(Z)V

    .line 214
    return-void
.end method

.method public editContact(Landroid/net/Uri;)V
    .locals 1
    .parameter "contactUri"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

    invoke-interface {v0, p1}, Lcom/android/contacts/list/OnContactPickerActionListener;->onEditContactAction(Landroid/net/Uri;)V

    .line 218
    return-void
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 370
    const v3, 0x7f04003c

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 371
    .local v2, view:Landroid/view/View;
    const v3, 0x7f0d00e8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 372
    const v3, 0x7f0d00ea

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SearchView;

    iput-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchView:Landroid/widget/SearchView;

    .line 373
    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchView:Landroid/widget/SearchView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 374
    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 375
    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchView:Landroid/widget/SearchView;

    const v4, 0x7f0a01ac

    invoke-virtual {p0, v4}, Lcom/android/contacts/list/ContactPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 376
    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v4, Lcom/android/contacts/list/ContactPickerFragment$1;

    invoke-direct {v4, p0}, Lcom/android/contacts/list/ContactPickerFragment$1;-><init>(Lcom/android/contacts/list/ContactPickerFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 411
    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v0

    .line 412
    .local v0, actionCode:I
    const/16 v3, 0x64

    if-ne v0, v3, :cond_1

    .line 413
    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchView:Landroid/widget/SearchView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setVisibility(I)V

    .line 428
    :goto_0
    sparse-switch v0, :sswitch_data_0

    .line 451
    :cond_0
    :goto_1
    return-object v2

    .line 418
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchView:Landroid/widget/SearchView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setVisibility(I)V

    .line 419
    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v4, Lcom/android/contacts/list/ContactPickerFragment$2;

    invoke-direct {v4, p0}, Lcom/android/contacts/list/ContactPickerFragment$2;-><init>(Lcom/android/contacts/list/ContactPickerFragment;)V

    const-wide/16 v5, 0xc8

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/SearchView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 430
    :sswitch_0
    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 436
    :sswitch_1
    iget-object v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactsRequest;->getHideCreateLabel()Z

    move-result v3

    if-nez v3, :cond_0

    .line 440
    const v3, 0x7f0d00e9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 441
    .local v1, newButton:Landroid/widget/ImageButton;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 442
    new-instance v3, Lcom/android/contacts/list/ContactPickerFragment$3;

    invoke-direct {v3, p0}, Lcom/android/contacts/list/ContactPickerFragment$3;-><init>(Lcom/android/contacts/list/ContactPickerFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 428
    :sswitch_data_0
    .sparse-switch
        0x46 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public isCreateContactEnabled()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mCreateContactEnabled:Z

    return v0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    const-string v4, "ContactPickerFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreateLoader(id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/4 v4, -0x1

    if-ne p1, v4, :cond_1

    .line 252
    new-instance v2, Lcom/android/contacts/list/DirectoryListLoader;

    iget-object v4, p0, Lcom/android/contacts/list/ContactPickerFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/contacts/list/DirectoryListLoader;-><init>(Landroid/content/Context;)V

    .line 253
    .local v2, loader:Lcom/android/contacts/list/DirectoryListLoader;
    iget-object v4, p0, Lcom/android/contacts/list/ContactPickerFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v4, v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->configureDirectoryLoader(Lcom/android/contacts/list/DirectoryListLoader;)V

    .line 277
    .end local v2           #loader:Lcom/android/contacts/list/DirectoryListLoader;
    :cond_0
    :goto_0
    return-object v2

    .line 257
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->createCursorLoader()Landroid/content/CursorLoader;

    move-result-object v2

    .line 258
    .local v2, loader:Landroid/content/CursorLoader;
    if-eqz p2, :cond_2

    const-string v4, "directoryId"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "directoryId"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 261
    .local v0, directoryId:J
    :goto_1
    iget-object v4, p0, Lcom/android/contacts/list/ContactPickerFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v4, v2, v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->configureLoader(Landroid/content/CursorLoader;J)V

    .line 264
    iget-boolean v4, p0, Lcom/android/contacts/list/ContactPickerFragment;->mFakeQueryModeEnabled:Z

    if-eqz v4, :cond_0

    .line 265
    iget v4, p0, Lcom/android/contacts/list/ContactPickerFragment;->mFakeQueryStatus:I

    if-nez v4, :cond_0

    .line 266
    iget-object v4, p0, Lcom/android/contacts/list/ContactPickerFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSearchMode()Z

    move-result v4

    if-nez v4, :cond_0

    .line 267
    const-string v4, "ContactPickerFragment"

    const-string v5, "onCreateLoader(), set fake mode"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/contacts/list/ContactPickerFragment;->mFakeQueryStatus:I

    .line 270
    invoke-virtual {v2}, Landroid/content/CursorLoader;->getSortOrder()Ljava/lang/String;

    move-result-object v3

    .line 271
    .local v3, sortOrder:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " LIMIT "

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " LIMIT 30"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 272
    invoke-virtual {v2, v3}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    goto :goto_0

    .line 258
    .end local v0           #directoryId:J
    .end local v3           #sortOrder:Ljava/lang/String;
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 5
    .parameter "inflater"
    .parameter "container"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 157
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 158
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0d00eb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListContainer:Landroid/view/View;

    .line 159
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0d00ed

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEmptyView:Landroid/view/View;

    .line 162
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 163
    .local v0, headerContainer:Landroid/widget/FrameLayout;
    const v1, 0x7f0400d2

    invoke-virtual {p1, v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mCounterHeaderView:Landroid/view/View;

    .line 164
    iget-object v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mCounterHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 165
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 173
    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 3
    .parameter "position"
    .parameter "id"

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {v2, p1}, Lcom/android/contacts/list/LegacyContactListAdapter;->getPersonUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 193
    .local v1, uri:Landroid/net/Uri;
    :goto_0
    iget-boolean v2, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEditMode:Z

    if-eqz v2, :cond_1

    .line 194
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->editContact(Landroid/net/Uri;)V

    .line 201
    :goto_1
    return-void

    .line 191
    .end local v1           #uri:Landroid/net/Uri;
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v2, p1}, Lcom/android/contacts/list/ContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v1

    .restart local v1       #uri:Landroid/net/Uri;
    goto :goto_0

    .line 195
    :cond_1
    iget-boolean v2, p0, Lcom/android/contacts/list/ContactPickerFragment;->mShortcutRequested:Z

    if-eqz v2, :cond_2

    .line 196
    new-instance v0, Lcom/android/contacts/list/ShortcutIntentBuilder;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/android/contacts/list/ShortcutIntentBuilder;-><init>(Landroid/content/Context;Lcom/android/contacts/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;)V

    .line 197
    .local v0, builder:Lcom/android/contacts/list/ShortcutIntentBuilder;
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ShortcutIntentBuilder;->createContactShortcutIntent(Landroid/net/Uri;)V

    goto :goto_1

    .line 199
    .end local v0           #builder:Lcom/android/contacts/list/ShortcutIntentBuilder;
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->pickContact(Landroid/net/Uri;)V

    goto :goto_1
.end method

.method public onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/touchwiz/widget/TwAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, parent:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<*>;"
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/list/ContactEntryListFragment;->onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V

    .line 183
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

    .line 294
    iget-boolean v2, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEnabled:Z

    if-nez v2, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    .line 299
    .local v1, loaderId:I
    if-ne v1, v6, :cond_4

    .line 300
    iput v5, p0, Lcom/android/contacts/list/ContactPickerFragment;->mDirectoryListStatus:I

    .line 301
    iget-object v2, p0, Lcom/android/contacts/list/ContactPickerFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v2, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->changeDirectories(Landroid/database/Cursor;)V

    .line 302
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->startLoading()V

    .line 355
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->isSearchMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 356
    if-nez v1, :cond_3

    .line 357
    if-eqz p2, :cond_d

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_d

    .line 359
    iput-boolean v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mHasPhoneData:Z

    .line 363
    :cond_3
    :goto_2
    iget-boolean v2, p0, Lcom/android/contacts/list/ContactPickerFragment;->mHasPhoneData:Z

    if-nez v2, :cond_e

    :goto_3
    invoke-direct {p0, v3}, Lcom/android/contacts/list/ContactPickerFragment;->configureEmptyView(Z)V

    goto :goto_0

    .line 306
    :cond_4
    invoke-virtual {p0, v1, p2}, Lcom/android/contacts/list/ContactPickerFragment;->onPartitionLoaded(ILandroid/database/Cursor;)V

    .line 307
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->isSearchMode()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 309
    if-eqz p2, :cond_7

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_7

    .line 310
    if-nez v1, :cond_6

    .line 312
    iput-boolean v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mHasPhoneSearchData:Z

    .line 327
    :goto_4
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getDirectorySearchMode()I

    move-result v0

    .line 328
    .local v0, directorySearchMode:I
    if-eqz v0, :cond_5

    .line 329
    iget v2, p0, Lcom/android/contacts/list/ContactPickerFragment;->mDirectoryListStatus:I

    if-nez v2, :cond_9

    .line 330
    iput v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mDirectoryListStatus:I

    .line 331
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v6, v5, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 338
    :cond_5
    :goto_5
    iget-boolean v2, p0, Lcom/android/contacts/list/ContactPickerFragment;->mHasPhoneSearchData:Z

    if-nez v2, :cond_a

    iget-boolean v2, p0, Lcom/android/contacts/list/ContactPickerFragment;->mHasGalSearchData:Z

    if-nez v2, :cond_a

    move v2, v3

    :goto_6
    invoke-direct {p0, v2}, Lcom/android/contacts/list/ContactPickerFragment;->configureEmptyView(Z)V

    goto :goto_1

    .line 314
    .end local v0           #directorySearchMode:I
    :cond_6
    iput-boolean v3, p0, Lcom/android/contacts/list/ContactPickerFragment;->mHasGalSearchData:Z

    goto :goto_4

    .line 318
    :cond_7
    if-nez v1, :cond_8

    .line 319
    iput-boolean v4, p0, Lcom/android/contacts/list/ContactPickerFragment;->mHasPhoneSearchData:Z

    goto :goto_4

    .line 322
    :cond_8
    iput-boolean v4, p0, Lcom/android/contacts/list/ContactPickerFragment;->mHasGalSearchData:Z

    goto :goto_4

    .line 333
    .restart local v0       #directorySearchMode:I
    :cond_9
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->startLoading()V

    goto :goto_5

    :cond_a
    move v2, v4

    .line 338
    goto :goto_6

    .line 340
    .end local v0           #directorySearchMode:I
    :cond_b
    iput v4, p0, Lcom/android/contacts/list/ContactPickerFragment;->mDirectoryListStatus:I

    .line 341
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 344
    iget-boolean v2, p0, Lcom/android/contacts/list/ContactPickerFragment;->mFakeQueryModeEnabled:Z

    if-eqz v2, :cond_2

    .line 345
    iget v2, p0, Lcom/android/contacts/list/ContactPickerFragment;->mFakeQueryStatus:I

    if-ne v2, v3, :cond_c

    .line 346
    iput v5, p0, Lcom/android/contacts/list/ContactPickerFragment;->mFakeQueryStatus:I

    .line 347
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->startFullQuery()V

    goto :goto_1

    .line 348
    :cond_c
    iget v2, p0, Lcom/android/contacts/list/ContactPickerFragment;->mFakeQueryStatus:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_2

    .line 349
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/contacts/list/ContactPickerFragment;->mFakeQueryStatus:I

    goto :goto_1

    .line 361
    :cond_d
    iput-boolean v4, p0, Lcom/android/contacts/list/ContactPickerFragment;->mHasPhoneData:Z

    goto :goto_2

    :cond_e
    move v3, v4

    .line 363
    goto :goto_3
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/ContactPickerFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onPickerResult(Landroid/content/Intent;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/contacts/list/OnContactPickerActionListener;->onPickContactAction(Landroid/net/Uri;)V

    .line 485
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 134
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 135
    const-string v0, "editMode"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEditMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 136
    const-string v0, "createContactEnabled"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mCreateContactEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 137
    const-string v0, "shortcutRequested"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mShortcutRequested:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 138
    const-string v0, "onlyphonnumberprojection"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->OnlyPhoneNumberProjection:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 139
    return-void
.end method

.method public onShortcutIntentCreated(Landroid/net/Uri;Landroid/content/Intent;)V
    .locals 1
    .parameter "uri"
    .parameter "shortcutIntent"

    .prologue
    .line 479
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

    invoke-interface {v0, p2}, Lcom/android/contacts/list/OnContactPickerActionListener;->onShortcutIntentCreated(Landroid/content/Intent;)V

    .line 480
    return-void
.end method

.method public pickContact(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

    invoke-interface {v0, p1}, Lcom/android/contacts/list/OnContactPickerActionListener;->onPickContactAction(Landroid/net/Uri;)V

    .line 222
    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedState"

    .prologue
    .line 143
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    .line 145
    if-nez p1, :cond_0

    .line 153
    :goto_0
    return-void

    .line 149
    :cond_0
    const-string v0, "editMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEditMode:Z

    .line 150
    const-string v0, "createContactEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mCreateContactEnabled:Z

    .line 151
    const-string v0, "shortcutRequested"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mShortcutRequested:Z

    .line 152
    const-string v0, "onlyphonnumberprojection"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->OnlyPhoneNumberProjection:Z

    goto :goto_0
.end method

.method public setAttachPhotoMode(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 492
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mAttachPhotoMode:Z

    .line 493
    return-void
.end method

.method public setCreateContactEnabled(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mCreateContactEnabled:Z

    .line 105
    return-void
.end method

.method public setEditMode(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEditMode:Z

    .line 113
    return-void
.end method

.method public setFinishActivityonCreateComplete(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mFinishActivityonCreateComplete:Z

    .line 125
    return-void
.end method

.method public setOnContactPickerActionListener(Lcom/android/contacts/list/OnContactPickerActionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

    .line 97
    return-void
.end method

.method public setOnlyPhoneNumberProjection(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactPickerFragment;->OnlyPhoneNumberProjection:Z

    .line 130
    return-void
.end method

.method public setRingToneMode(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 488
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mRingtoneMode:Z

    .line 489
    return-void
.end method

.method public setShortcutRequested(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mShortcutRequested:Z

    .line 121
    return-void
.end method

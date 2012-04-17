.class public Lcom/android/contacts/list/DefaultContactListAdapter;
.super Lcom/android/contacts/list/ContactListAdapter;
.source "DefaultContactListAdapter.java"


# instance fields
.field private final CONTACT_FILTER_URI_WITHOUT_SNIPPET:Landroid/net/Uri;

.field private isPhoneNumberOnly:Z

.field private mAttachPhotoMode:Z

.field private final mListCallButtonClickListener:Landroid/view/View$OnClickListener;

.field private mPhoneNumber:Ljava/lang/String;

.field private mRingtoneMode:Z

.field private mShowCallButton:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 61
    const-string v0, "content://com.android.contacts/contacts_list/filter/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->CONTACT_FILTER_URI_WITHOUT_SNIPPET:Landroid/net/Uri;

    .line 65
    iput-boolean v1, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->isPhoneNumberOnly:Z

    .line 71
    iput-boolean v1, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mAttachPhotoMode:Z

    .line 72
    iput-boolean v1, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mRingtoneMode:Z

    .line 73
    iput-boolean v1, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mShowCallButton:Z

    .line 403
    new-instance v0, Lcom/android/contacts/list/DefaultContactListAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/DefaultContactListAdapter$1;-><init>(Lcom/android/contacts/list/DefaultContactListAdapter;)V

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mListCallButtonClickListener:Landroid/view/View$OnClickListener;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/list/DefaultContactListAdapter;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/contacts/list/DefaultContactListAdapter;->getPhonenumber(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/list/DefaultContactListAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private final getPhonenumber(Landroid/net/Uri;)Ljava/lang/String;
    .locals 11
    .parameter "baseUri"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 356
    iput-object v3, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mPhoneNumber:Ljava/lang/String;

    .line 358
    const-string v0, "entities"

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 359
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const-string v4, "data1"

    aput-object v4, v2, v8

    const-string v4, "is_super_primary"

    aput-object v4, v2, v10

    const-string v4, "mimetype"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 370
    .local v7, phonecursor:Landroid/database/Cursor;
    if-eqz v7, :cond_4

    .line 372
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 379
    .local v6, isSuperPrimary:I
    if-eqz v6, :cond_0

    .line 380
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mPhoneNumber:Ljava/lang/String;

    .line 388
    .end local v6           #isSuperPrimary:I
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mPhoneNumber:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 389
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 391
    :cond_2
    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 392
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mPhoneNumber:Ljava/lang/String;

    .line 397
    :cond_3
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 400
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mPhoneNumber:Ljava/lang/String;

    return-object v0

    .line 395
    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0
.end method

.method private isCustomFilterForPhoneNumbersOnly()Z
    .locals 3

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 425
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "only_phones"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method


# virtual methods
.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 10
    .parameter "itemView"
    .parameter "partition"
    .parameter "cursor"
    .parameter "position"

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 278
    move-object v1, p1

    check-cast v1, Lcom/android/contacts/list/ContactListItemView;

    .line 279
    .local v1, view:Lcom/android/contacts/list/ContactListItemView;
    invoke-virtual {p0, p2, p3}, Lcom/android/contacts/list/DefaultContactListAdapter;->isGalSearchShowMoreItem(ILandroid/database/Cursor;)Z

    move-result v7

    .line 281
    .local v7, isGalSearchShowMore:Z
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->getUpperCaseQueryString()[C

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactListItemView;->setHighlightedPrefix([C)V

    .line 283
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->isSelectionVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {p0, p2, p3}, Lcom/android/contacts/list/DefaultContactListAdapter;->isSelectedContact(ILandroid/database/Cursor;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactListItemView;->setActivated(Z)V

    .line 287
    :cond_0
    invoke-virtual {p0, v1, p4, p3}, Lcom/android/contacts/list/DefaultContactListAdapter;->bindSectionHeaderAndDivider(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    .line 289
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->isQuickContactEnabled()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactListItemView;->setQuickContactEnabled(Z)V

    .line 290
    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListItemView;->removePhotoViewForDeleteMode()V

    .line 293
    if-eqz v7, :cond_2

    .line 294
    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListItemView;->removePhotoView()V

    .line 306
    :goto_1
    if-eqz v7, :cond_4

    .line 307
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->bindNameAsGalSearchShowMore(Lcom/android/contacts/list/ContactListItemView;)V

    .line 311
    :goto_2
    invoke-virtual {p0, v1, p3}, Lcom/android/contacts/list/DefaultContactListAdapter;->bindPresenceAndStatusMessage(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 313
    invoke-virtual {p0, v1, p3}, Lcom/android/contacts/list/DefaultContactListAdapter;->bindAccountIcons(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 315
    invoke-virtual {p0, v1, p3}, Lcom/android/contacts/list/DefaultContactListAdapter;->bindStarredIcon(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 317
    invoke-virtual {v1, v9}, Lcom/android/contacts/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->isMultiSelectEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 320
    invoke-virtual {p0, p2}, Lcom/android/contacts/list/DefaultContactListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v8

    .line 321
    .local v8, part:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    invoke-virtual {v8}, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->getHasHeader()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 322
    add-int/lit8 v0, p4, 0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactListAdapter;->isChecked(I)Z

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/list/DefaultContactListAdapter;->bindCheckBox(Lcom/android/contacts/list/ContactListItemView;Z)V

    .line 332
    .end local v8           #part:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    :goto_3
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->isMultiSelectEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, p4}, Lcom/android/contacts/list/DefaultContactListAdapter;->isSimContact(I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 335
    invoke-virtual {v1, v5}, Lcom/android/contacts/list/ContactListItemView;->setEnabled(Z)V

    .line 353
    :goto_4
    return-void

    :cond_1
    move-object v0, v9

    .line 281
    goto :goto_0

    .line 296
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->isQuickContactEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 297
    const/4 v4, 0x7

    const/16 v6, 0x9

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/list/DefaultContactListAdapter;->bindQuickContact(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;III)V

    goto :goto_1

    .line 301
    :cond_3
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/contacts/list/DefaultContactListAdapter;->bindPhoto(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    goto :goto_1

    .line 309
    :cond_4
    invoke-virtual {p0, v1, p3}, Lcom/android/contacts/list/DefaultContactListAdapter;->bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    goto :goto_2

    .line 324
    .restart local v8       #part:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    :cond_5
    invoke-virtual {p0, p4}, Lcom/android/contacts/list/DefaultContactListAdapter;->isChecked(I)Z

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/list/DefaultContactListAdapter;->bindCheckBox(Lcom/android/contacts/list/ContactListItemView;Z)V

    goto :goto_3

    .line 328
    .end local v8           #part:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    :cond_6
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->hideCheckBox(Lcom/android/contacts/list/ContactListItemView;)V

    goto :goto_3

    .line 337
    :cond_7
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactListItemView;->setEnabled(Z)V

    goto :goto_4
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 6
    .parameter "loader"
    .parameter "directoryId"

    .prologue
    .line 81
    instance-of v4, p1, Lcom/android/contacts/list/ProfileAndContactsLoader;

    if-eqz v4, :cond_0

    move-object v4, p1

    .line 82
    check-cast v4, Lcom/android/contacts/list/ProfileAndContactsLoader;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->shouldIncludeProfile()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/contacts/list/ProfileAndContactsLoader;->setLoadProfile(Z)V

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    .line 86
    .local v1, filter:Lcom/android/contacts/list/ContactListFilter;
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->isSearchMode()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 87
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, query:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 89
    const-string v2, ""

    .line 91
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 95
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 96
    sget-object v4, Lcom/android/contacts/list/DefaultContactListAdapter;->PROJECTION_CONTACT:[Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 97
    const-string v4, "0"

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 122
    .end local v2           #query:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->getSortOrder()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 123
    const-string v3, "sort_key"

    .line 128
    .local v3, sortOrder:Ljava/lang/String;
    :goto_1
    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 129
    return-void

    .line 101
    .end local v3           #sortOrder:Ljava/lang/String;
    .restart local v2       #query:Ljava/lang/String;
    :cond_2
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-eqz v4, :cond_3

    const-wide/16 v4, 0x1

    cmp-long v4, p2, v4

    if-eqz v4, :cond_3

    .line 102
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 103
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 104
    const-string v4, "directory"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 106
    const-string v4, "limit"

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->getDirectoryResultLimit()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 112
    :goto_2
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 113
    sget-object v4, Lcom/android/contacts/list/DefaultContactListAdapter;->FILTER_PROJECTION_WITHOUT_SNIPPET:[Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_0

    .line 109
    .end local v0           #builder:Landroid/net/Uri$Builder;
    :cond_3
    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->CONTACT_FILTER_URI_WITHOUT_SNIPPET:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 110
    .restart local v0       #builder:Landroid/net/Uri$Builder;
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_2

    .line 116
    .end local v0           #builder:Landroid/net/Uri$Builder;
    .end local v2           #query:Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->configureUri(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    .line 117
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->configureProjection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    .line 118
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    goto :goto_0

    .line 125
    :cond_5
    const-string v3, "sort_key_alt"

    .restart local v3       #sortOrder:Ljava/lang/String;
    goto :goto_1
.end method

.method protected configureProjection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V
    .locals 2
    .parameter "loader"
    .parameter "directoryId"
    .parameter "filter"

    .prologue
    .line 164
    if-eqz p4, :cond_0

    iget v0, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 165
    sget-object v0, Lcom/android/contacts/list/DefaultContactListAdapter;->PROJECTION_DATA:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_0
    sget-object v0, Lcom/android/contacts/list/DefaultContactListAdapter;->PROJECTION_CONTACT:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V
    .locals 5
    .parameter "loader"
    .parameter "directoryId"
    .parameter "filter"

    .prologue
    .line 173
    if-nez p4, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-nez v3, :cond_0

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .local v1, selection:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v2, selectionArgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget v3, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    packed-switch v3, :pswitch_data_0

    .line 242
    :goto_1
    :pswitch_0
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->isCustomFilterForPhoneNumbersOnly()Z

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->isPhoneNumberOnly:Z

    if-eqz v3, :cond_3

    .line 243
    :cond_2
    iget v3, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_8

    .line 244
    const-string v3, "has_phone_number=1"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    .line 253
    .local v0, phoneBookManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 254
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mAttachPhotoMode:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mRingtoneMode:Z

    if-eqz v3, :cond_6

    .line 255
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "link_type1 != \'vnd.sec.contact.sim\'"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 256
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 257
    const-string v3, " AND "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    :cond_5
    const-string v3, "(link_type1 != \'vnd.sec.contact.sim\')"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 265
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    goto :goto_0

    .line 196
    .end local v0           #phoneBookManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    :pswitch_1
    const-string v3, "starred!=0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 205
    :pswitch_2
    const-string v3, "in_visible_group=1"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 214
    :pswitch_3
    const-string v3, "_id IN (SELECT DISTINCT contact_id FROM raw_contacts WHERE account_type=? AND account_name=?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    iget-object v3, p4, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    iget-object v3, p4, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    iget-object v3, p4, Lcom/android/contacts/list/ContactListFilter;->dataSet:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 223
    const-string v3, " AND data_set=?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    iget-object v3, p4, Lcom/android/contacts/list/ContactListFilter;->dataSet:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    :goto_3
    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 226
    :cond_7
    const-string v3, " AND data_set IS NULL"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 232
    :pswitch_4
    const-string v3, "mimetype=? AND data1=?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    const-string v3, "vnd.android.cursor.item/group_membership"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    iget-wide v3, p4, Lcom/android/contacts/list/ContactListFilter;->groupId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 246
    :cond_8
    const-string v3, " AND has_phone_number=1"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 184
    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected configureUri(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V
    .locals 8
    .parameter "loader"
    .parameter "directoryId"
    .parameter "filter"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, -0x6

    .line 132
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 133
    .local v1, uri:Landroid/net/Uri;
    if-eqz p4, :cond_0

    .line 134
    iget v2, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 135
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 146
    :cond_0
    :goto_0
    cmp-long v2, p2, v6

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 147
    invoke-static {v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 151
    :cond_1
    if-eqz p4, :cond_2

    iget v2, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v3, -0x3

    if-eq v2, v3, :cond_2

    iget v2, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-eq v2, v5, :cond_2

    .line 154
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "directory"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 159
    :cond_2
    invoke-virtual {p1, v1}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 160
    return-void

    .line 136
    :cond_3
    iget v2, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-ne v2, v5, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->getSelectedContactLookupKey()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, lookupKey:Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 139
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 141
    :cond_4
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->getSelectedContactId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method public setAttachPhotoMode(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 273
    iput-boolean p1, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mAttachPhotoMode:Z

    .line 274
    return-void
.end method

.method public setCheckedIds(Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 436
    .local p1, checkedIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mCheckedIds:Ljava/util/HashMap;

    .line 437
    return-void
.end method

.method public setPhoneNumbersOnly(Z)V
    .locals 0
    .parameter "isOnly"

    .prologue
    .line 431
    iput-boolean p1, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->isPhoneNumberOnly:Z

    .line 432
    return-void
.end method

.method public setRingToneMode(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 269
    iput-boolean p1, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mRingtoneMode:Z

    .line 270
    return-void
.end method

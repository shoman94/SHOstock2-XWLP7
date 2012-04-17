.class public Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;
.super Lcom/android/contacts/list/ContactListAdapter;
.source "FavoriteInterfaceListAdapter.java"


# instance fields
.field private final CONTACT_FILTER_URI_WITHOUT_SNIPPET:Landroid/net/Uri;

.field private final DIVIDER:I

.field private final FREQUENT:I

.field private final STARRED:I

.field private mActionCode:I

.field private mContactCursor:Landroid/database/Cursor;

.field private mDividerPosition:I

.field private mSelectedInfoHashSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 39
    const-string v0, "content://com.android.contacts/contacts_list/filter/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->CONTACT_FILTER_URI_WITHOUT_SNIPPET:Landroid/net/Uri;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->mContactCursor:Landroid/database/Cursor;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->STARRED:I

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->DIVIDER:I

    .line 45
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->FREQUENT:I

    .line 50
    return-void
.end method

.method private getDivider()Landroid/view/View;
    .locals 5

    .prologue
    .line 128
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f040096

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 129
    .local v0, dividerView:Landroid/view/View;
    const v2, 0x7f0d0114

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 131
    .local v1, text:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0a009e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    return-object v0
.end method

.method private getDividerPosition(Landroid/database/Cursor;)I
    .locals 4
    .parameter "cursor"

    .prologue
    .line 324
    const/4 v0, 0x0

    .line 325
    .local v0, cnt:I
    const-string v3, "starred"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 327
    .local v2, staredIndex:I
    :cond_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_1

    move v1, v0

    .line 334
    .end local v0           #cnt:I
    .local v1, cnt:I
    :goto_0
    return v1

    .line 330
    .end local v1           #cnt:I
    .restart local v0       #cnt:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 331
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v0

    .line 334
    .end local v0           #cnt:I
    .restart local v1       #cnt:I
    goto :goto_0
.end method


# virtual methods
.method protected bindCheckbox(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;ZI)V
    .locals 5
    .parameter "view"
    .parameter "cursor"
    .parameter "checked"
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 226
    invoke-super {p0, p1, p3}, Lcom/android/contacts/list/ContactListAdapter;->bindCheckBox(Lcom/android/contacts/list/ContactListItemView;Z)V

    .line 227
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->mSelectedInfoHashSet:Ljava/util/HashSet;

    if-eqz v2, :cond_0

    .line 228
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 229
    .local v0, id:J
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 230
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->bindCheckBox(Lcom/android/contacts/list/ContactListItemView;Z)V

    .line 235
    .end local v0           #id:J
    :cond_0
    :goto_0
    return-void

    .line 232
    .restart local v0       #id:J
    :cond_1
    invoke-virtual {p0, p1, v4}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->bindCheckBox(Lcom/android/contacts/list/ContactListItemView;Z)V

    goto :goto_0
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 10
    .parameter "itemView"
    .parameter "partition"
    .parameter "cursor"
    .parameter "position"

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 182
    move-object v1, p1

    check-cast v1, Lcom/android/contacts/list/ContactListItemView;

    .line 184
    .local v1, view:Lcom/android/contacts/list/ContactListItemView;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->getUpperCaseQueryString()[C

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactListItemView;->setHighlightedPrefix([C)V

    .line 186
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->isSelectionVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->isSelectedContact(ILandroid/database/Cursor;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactListItemView;->setActivated(Z)V

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v8

    .line 191
    .local v8, filter:Lcom/android/contacts/list/ContactListFilter;
    iget v0, v8, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/16 v2, -0xe

    if-ne v0, v2, :cond_1

    .line 192
    iget v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->mDividerPosition:I

    if-ne p4, v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0a009e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    .line 197
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->getDisplayPhotos()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 198
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->isQuickContactEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 199
    const/4 v4, 0x7

    const/16 v6, 0x9

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->bindQuickContact(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;III)V

    .line 207
    :cond_2
    :goto_1
    :try_start_0
    invoke-virtual {p0, v1, p3}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 209
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->isMultiSelectEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 210
    const/4 v0, 0x0

    invoke-virtual {p0, v1, p3, v0, p4}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->bindCheckbox(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;ZI)V
    :try_end_0
    .catch Landroid/database/StaleDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :cond_3
    :goto_2
    invoke-virtual {v1, v9}, Lcom/android/contacts/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    .line 217
    return-void

    .end local v8           #filter:Lcom/android/contacts/list/ContactListFilter;
    :cond_4
    move-object v0, v9

    .line 184
    goto :goto_0

    .line 202
    .restart local v8       #filter:Lcom/android/contacts/list/ContactListFilter;
    :cond_5
    invoke-virtual {p0, v1, p2, p3}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->bindPhoto(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    goto :goto_1

    .line 212
    :catch_0
    move-exception v7

    .line 213
    .local v7, e:Landroid/database/StaleDataException;
    invoke-virtual {v7}, Landroid/database/StaleDataException;->printStackTrace()V

    goto :goto_2
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 6
    .parameter "loader"
    .parameter "directoryId"

    .prologue
    .line 54
    const-string v4, "FavoriteInterfaceListAdapter"

    const-string v5, " === configureLoader === "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    .line 56
    .local v1, filter:Lcom/android/contacts/list/ContactListFilter;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->isSearchMode()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 57
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, query:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 59
    const-string v2, ""

    .line 61
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 62
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 65
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->configureUri(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    .line 66
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->configureProjection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    .line 67
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    .line 93
    .end local v2           #query:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->getSortOrder()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 94
    const-string v3, "sort_key"

    .line 99
    .local v3, sortOrder:Ljava/lang/String;
    :goto_1
    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 101
    return-void

    .line 71
    .end local v3           #sortOrder:Ljava/lang/String;
    .restart local v2       #query:Ljava/lang/String;
    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-eqz v4, :cond_2

    const-wide/16 v4, 0x1

    cmp-long v4, p2, v4

    if-eqz v4, :cond_2

    .line 72
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 73
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 74
    const-string v4, "directory"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 76
    const-string v4, "limit"

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->getDirectoryResultLimit()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 82
    :goto_2
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 83
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    .line 84
    sget-object v4, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->FILTER_PROJECTION_WITHOUT_SNIPPET:[Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_0

    .line 79
    .end local v0           #builder:Landroid/net/Uri$Builder;
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->CONTACT_FILTER_URI_WITHOUT_SNIPPET:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 80
    .restart local v0       #builder:Landroid/net/Uri$Builder;
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_2

    .line 87
    .end local v0           #builder:Landroid/net/Uri$Builder;
    .end local v2           #query:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->configureUri(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    .line 88
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->configureProjection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    .line 89
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    goto :goto_0

    .line 96
    :cond_4
    const-string v3, "sort_key_alt"

    .restart local v3       #sortOrder:Ljava/lang/String;
    goto :goto_1
.end method

.method protected configureProjection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V
    .locals 1
    .parameter "loader"
    .parameter "directoryId"
    .parameter "filter"

    .prologue
    .line 252
    sget-object v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->PROJECTION_CONTACT:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method protected configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V
    .locals 4
    .parameter "loader"
    .parameter "directoryId"
    .parameter "filter"

    .prologue
    .line 267
    if-nez p4, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-nez v2, :cond_0

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    .local v0, selection:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 278
    .local v1, selectionArgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget v2, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    sparse-switch v2, :sswitch_data_0

    .line 304
    :goto_1
    :sswitch_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 305
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    goto :goto_0

    .line 290
    :sswitch_1
    const-string v2, "starred=0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 295
    :sswitch_2
    const-string v2, "starred=0 AND has_phone_number = 1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 278
    :sswitch_data_0
    .sparse-switch
        -0xf -> :sswitch_2
        -0xd -> :sswitch_1
        -0x6 -> :sswitch_0
        -0x2 -> :sswitch_0
    .end sparse-switch
.end method

.method protected configureUri(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V
    .locals 2
    .parameter "loader"
    .parameter "directoryId"
    .parameter "filter"

    .prologue
    .line 239
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 241
    .local v0, uri:Landroid/net/Uri;
    iget v1, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    packed-switch v1, :pswitch_data_0

    .line 248
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 249
    return-void

    .line 243
    :pswitch_0
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_STREQUENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 241
    :pswitch_data_0
    .packed-switch -0xe
        :pswitch_0
    .end packed-switch
.end method

.method protected getHeaderView(ILandroid/database/Cursor;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "partition"
    .parameter "cursor"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->getDivider()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 114
    iget v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->mDividerPosition:I

    if-ge p1, v0, :cond_0

    .line 115
    const/4 v0, 0x0

    .line 119
    :goto_0
    return v0

    .line 116
    :cond_0
    iget v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->mDividerPosition:I

    if-ne p1, v0, :cond_1

    .line 117
    const/4 v0, 0x1

    goto :goto_0

    .line 119
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method protected getView(ILandroid/database/Cursor;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "partition"
    .parameter "cursor"
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 138
    invoke-virtual {p0, p3}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->getItemViewType(I)I

    move-result v6

    .line 151
    .local v6, itemViewType:I
    if-eqz p4, :cond_0

    .line 152
    move-object v7, p4

    .line 159
    .local v7, view:Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v7, p1, p2, p3}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->bindView(Landroid/view/View;ILandroid/database/Cursor;I)V

    .line 160
    return-object v7

    .line 154
    .end local v7           #view:Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->mContext:Landroid/content/Context;

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .restart local v7       #view:Landroid/view/View;
    goto :goto_0
.end method

.method public setActionCode(I)V
    .locals 0
    .parameter "actionCode"

    .prologue
    .line 309
    iput p1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->mActionCode:I

    .line 310
    return-void
.end method

.method public setContactCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 317
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->mContactCursor:Landroid/database/Cursor;

    .line 318
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 319
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->getDividerPosition(Landroid/database/Cursor;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->mDividerPosition:I

    .line 320
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->notifyDataSetChanged()V

    .line 321
    return-void
.end method

.method public setSelectedInfoHashSet(Ljava/util/HashSet;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 313
    .local p1, data:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->mSelectedInfoHashSet:Ljava/util/HashSet;

    .line 314
    return-void
.end method

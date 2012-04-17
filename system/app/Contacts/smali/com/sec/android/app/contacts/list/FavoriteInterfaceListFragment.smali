.class public Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;
.super Lcom/android/contacts/list/ContactEntryListFragment;
.source "FavoriteInterfaceListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$DeleteFavoriteList;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/list/ContactEntryListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private mActionCode:I

.field private mEmptyView:Landroid/view/View;

.field private mFilter:Lcom/android/contacts/list/ContactListFilter;

.field private mListener:Lcom/sec/android/app/contacts/list/OnActionBarButtonUpdateListener;

.field private mNoMatchView:Landroid/view/View;

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

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 45
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;-><init>()V

    .line 46
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setPhotoLoaderEnabled(Z)V

    .line 47
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 48
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setQuickContactEnabled(Z)V

    .line 49
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setDirectorySearchMode(I)V

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    .line 51
    return-void
.end method

.method private addSelectedContact(IJ)V
    .locals 2
    .parameter "position"
    .parameter "id"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->onSelectedInfoChanged()V

    .line 126
    return-void
.end method

.method private getFrequentDeleteUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "dataId"

    .prologue
    .line 214
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "usagefeedback_delete"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "contactId"

    .prologue
    .line 218
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private isSelectedContact(J)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private removeContact(IJ)V
    .locals 2
    .parameter "position"
    .parameter "id"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 120
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->onSelectedInfoChanged()V

    .line 121
    return-void
.end method

.method private setDoneButton(I)V
    .locals 2
    .parameter "size"

    .prologue
    .line 139
    if-nez p1, :cond_1

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mListener:Lcom/sec/android/app/contacts/list/OnActionBarButtonUpdateListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/list/OnActionBarButtonUpdateListener;->onDoneButtonStateUpdated(Z)V

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    if-lez p1, :cond_0

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mListener:Lcom/sec/android/app/contacts/list/OnActionBarButtonUpdateListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/list/OnActionBarButtonUpdateListener;->onDoneButtonStateUpdated(Z)V

    goto :goto_0
.end method


# virtual methods
.method public actionDeleteFavoriteList()V
    .locals 14

    .prologue
    .line 185
    new-instance v12, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v12, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 186
    .local v12, values:Landroid/content/ContentValues;
    const-string v0, "starred"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 188
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 189
    .local v11, sb:Ljava/lang/StringBuffer;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 191
    .local v2, ID_PROJECTION:[Ljava/lang/String;
    const-string v3, "contact_id = ? AND mimetype_id in (Select _id from mimetypes where mimetype = \'vnd.android.cursor.item/phone_v2\')"

    .line 192
    .local v3, selectionStr:Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 193
    .local v7, contactId:Ljava/lang/Long;
    invoke-virtual {v7}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 195
    .local v8, contactfavoriteUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v8, v12, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 198
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v7}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 201
    .local v9, cursor:Landroid/database/Cursor;
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 206
    .end local v7           #contactId:Ljava/lang/Long;
    .end local v8           #contactfavoriteUri:Landroid/net/Uri;
    .end local v9           #cursor:Landroid/database/Cursor;
    :cond_1
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 207
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 208
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getFrequentDeleteUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 209
    .local v6, contactFrequentDeleteUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v6, v12, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 211
    .end local v6           #contactFrequentDeleteUri:Landroid/net/Uri;
    :cond_2
    return-void
.end method

.method public addFavoriteContactList()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 168
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 169
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "starred"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 170
    iget-object v4, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 171
    .local v0, contactId:Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 172
    .local v1, contactUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v1, v3, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 174
    .end local v0           #contactId:Ljava/lang/Long;
    .end local v1           #contactUri:Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method protected createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->isLegacyCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    new-instance v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;-><init>(Landroid/content/Context;)V

    .line 78
    .local v0, adapter:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 79
    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 80
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->setDisplayPhotos(Z)V

    .line 81
    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->setQuickContactEnabled(Z)V

    .line 82
    iget v1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mActionCode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->setActionCode(I)V

    .line 88
    .end local v0           #adapter:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;
    :goto_0
    return-object v0

    .line 85
    :cond_0
    new-instance v0, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/LegacyContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 86
    .local v0, adapter:Lcom/android/contacts/list/LegacyContactListAdapter;
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/LegacyContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 87
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/LegacyContactListAdapter;->setDisplayPhotos(Z)V

    goto :goto_0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 70
    const v0, 0x7f0400af

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mView:Landroid/view/View;

    .line 71
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getActionCode()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mActionCode:I

    .line 57
    return-void
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 2
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 61
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 64
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mView:Landroid/view/View;

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mEmptyView:Landroid/view/View;

    .line 65
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mView:Landroid/view/View;

    const v1, 0x7f0d01a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mNoMatchView:Landroid/view/View;

    .line 66
    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 3
    .parameter "position"
    .parameter "id"

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->getItemId(I)J

    move-result-wide v0

    .line 105
    .local v0, selectedId:J
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->isSelectedContact(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->removeContact(IJ)V

    .line 111
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->addSelectedContact(IJ)V

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 2
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
    .line 152
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mActionCode:I

    const/16 v1, 0x15f

    if-ne v0, v1, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    check-cast v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->setContactCursor(Landroid/database/Cursor;)V

    .line 155
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 157
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onSelectedInfoChanged()V
    .locals 2

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->setSelectedInfoHashSet(Ljava/util/HashSet;)V

    .line 130
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSelectedInfoHashSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setDoneButton(I)V

    .line 132
    return-void
.end method

.method public runDeleteFavoriteListThread()V
    .locals 2

    .prologue
    .line 177
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$DeleteFavoriteList;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$DeleteFavoriteList;-><init>(Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 178
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 179
    return-void
.end method

.method public setFilter(Lcom/android/contacts/list/ContactListFilter;)V
    .locals 0
    .parameter "filter"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 148
    return-void
.end method

.method public setOnActionBarButtonUpdateListener(Lcom/sec/android/app/contacts/list/OnActionBarButtonUpdateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mListener:Lcom/sec/android/app/contacts/list/OnActionBarButtonUpdateListener;

    .line 161
    return-void
.end method

.class public Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;
.super Landroid/app/ListFragment;
.source "GroupSelectionFragment.java"


# static fields
.field private static mSystemTitleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

.field mCheckedGroupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mCheckedGroupTitleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContactId:J

.field private mContext:Landroid/content/Context;

.field private mCreateFieldButton:Landroid/widget/Button;

.field private final mGroupLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderCheckBox:Landroid/widget/CheckBox;

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mHeaderView:Landroid/view/View;

.field private mIsContainGoogle:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 234
    new-instance v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$2;-><init>(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mGroupLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method private UpdateItems(Landroid/database/Cursor;)V
    .locals 13
    .parameter "curGroupMetaData"

    .prologue
    .line 256
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v10, defaultcheckedGroupList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mItems:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mItems:Ljava/util/ArrayList;

    .line 264
    :goto_0
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mIsContainGoogle:Z

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x2

    new-array v2, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "_id"

    aput-object v12, v2, v11

    const/4 v11, 0x1

    const-string v12, "auto_add"

    aput-object v12, v2, v11

    const-string v3, "auto_add = 1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 268
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 269
    const/4 v0, -0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 270
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 272
    .local v8, defaultGroupId:J
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 261
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v8           #defaultGroupId:J
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 277
    :cond_1
    const/4 v0, -0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 279
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 281
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 282
    .local v1, groupId:J
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 283
    .local v6, realTitle:Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->covertToSystemTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 285
    .local v3, title:Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCheckedGroupTitleList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 286
    .local v4, checked:Z
    const/4 v5, 0x0

    .line 288
    .local v5, enabled:Z
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v4, :cond_2

    .line 289
    const/4 v5, 0x0

    .line 294
    :goto_3
    iget-object v11, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;-><init>(JLjava/lang/String;ZZLjava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 291
    :cond_2
    const/4 v5, 0x1

    goto :goto_3

    .line 297
    .end local v1           #groupId:J
    .end local v3           #title:Ljava/lang/String;
    .end local v4           #checked:Z
    .end local v5           #enabled:Z
    .end local v6           #realTitle:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->getGoogleAccounts()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->UpdateItems(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->considerBindData()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->updateHeaderUnCheckState()V

    return-void
.end method

.method private considerBindData()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 180
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 181
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 184
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    if-nez v2, :cond_1

    .line 185
    new-instance v2, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    iget-object v3, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mContext:Landroid/content/Context;

    const v4, 0x7f040085

    iget-object v5, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mItems:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    .line 186
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 192
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCheckedGroupList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 193
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 194
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 195
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 196
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderTextView:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mIsContainGoogle:Z

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 209
    :goto_2
    return-void

    .line 188
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->notifyDataSetChanged()V

    .line 189
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->forceLayout()V

    .line 190
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidate()V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 196
    goto :goto_1

    .line 198
    :cond_3
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mIsContainGoogle:Z

    if-eqz v2, :cond_4

    .line 199
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 200
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 201
    iget-object v1, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2

    .line 203
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 204
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 205
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 206
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2
.end method

.method public static covertToSystemTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "title"

    .prologue
    .line 431
    sget-object v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mSystemTitleMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mSystemTitleMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 432
    :cond_0
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mSystemTitleMap:Ljava/util/HashMap;

    .line 433
    sget-object v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mSystemTitleMap:Ljava/util/HashMap;

    const-string v1, "Friends"

    const v2, 0x7f0a0249

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    sget-object v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mSystemTitleMap:Ljava/util/HashMap;

    const-string v1, "Family"

    const v2, 0x7f0a024a

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    sget-object v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mSystemTitleMap:Ljava/util/HashMap;

    const-string v1, "Coworkers"

    const v2, 0x7f0a024b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    sget-object v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mSystemTitleMap:Ljava/util/HashMap;

    const-string v1, "My Contacts"

    const v2, 0x7f0a024c

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    :cond_1
    sget-object v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mSystemTitleMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 440
    sget-object v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mSystemTitleMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 443
    :goto_0
    return-object v0

    :cond_2
    move-object v0, p1

    goto :goto_0
.end method

.method private getGoogleAccounts()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    iget-object v1, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    .line 168
    .local v0, accountTypemanager:Lcom/android/contacts/model/AccountTypeManager;
    invoke-virtual {v0}, Lcom/android/contacts/model/AccountTypeManager;->getGoogleAccounts()Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method private getGroupValues(Ljava/lang/String;JJ)Landroid/content/ContentValues;
    .locals 3
    .parameter "title"
    .parameter "groupId"
    .parameter "contactId"

    .prologue
    .line 359
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 361
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string v1, "account_type"

    const-string v2, "vnd.sec.contact.agg.account_type"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string v1, "account_name"

    const-string v2, "vnd.sec.contact.agg.account_name"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string v1, "data1"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 365
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string v1, "contact_id"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 368
    return-object v0
.end method

.method private resetGroups()V
    .locals 4

    .prologue
    .line 421
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 422
    .local v0, selectionArgs:[Ljava/lang/String;
    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mContactId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 423
    const/4 v1, 0x1

    const-string v2, "vnd.android.cursor.item/group_membership"

    aput-object v2, v0, v1

    .line 424
    iget-object v1, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "contact_id=? AND  mimetype=?"

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 427
    return-void
.end method

.method private updateAggregatedGroup()V
    .locals 15

    .prologue
    .line 392
    const/4 v0, 0x3

    new-array v12, v0, [Ljava/lang/String;

    .line 393
    .local v12, select:[Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 394
    .local v14, where:Ljava/lang/StringBuffer;
    const-string v0, "contact_id"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " = ? AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "mimetype"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " = ? AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "title"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " = ?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 396
    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mContactId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v12, v0

    .line 397
    const/4 v0, 0x1

    const-string v2, "vnd.android.cursor.item/group_membership"

    aput-object v2, v12, v0

    .line 398
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getCount()I

    move-result v0

    if-ge v9, v0, :cond_1

    .line 399
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    invoke-virtual {v0, v9}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v0}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->isChecked()Z

    move-result v10

    .line 400
    .local v10, isChecked:Z
    if-eqz v10, :cond_0

    .line 401
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 402
    .local v11, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "group_membership"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 404
    .local v6, builder:Landroid/content/ContentProviderOperation$Builder;
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    invoke-virtual {v0, v9}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v0}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->getGroupId()J

    move-result-wide v7

    .line 405
    .local v7, groupId:J
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    invoke-virtual {v0, v9}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v0}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->getRealTitle()Ljava/lang/String;

    move-result-object v1

    .line 406
    .local v1, realTitle:Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    invoke-virtual {v0, v9}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v0}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->getGroupId()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mContactId:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->getGroupValues(Ljava/lang/String;JJ)Landroid/content/ContentValues;

    move-result-object v13

    .line 408
    .local v13, values:Landroid/content/ContentValues;
    invoke-virtual {v6, v13}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 409
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "com.android.contacts"

    invoke-virtual {v0, v2, v11}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    .end local v1           #realTitle:Ljava/lang/String;
    .end local v6           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v7           #groupId:J
    .end local v11           #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v13           #values:Landroid/content/ContentValues;
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 418
    .end local v10           #isChecked:Z
    :cond_1
    return-void

    .line 413
    .restart local v1       #realTitle:Ljava/lang/String;
    .restart local v6       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v7       #groupId:J
    .restart local v10       #isChecked:Z
    .restart local v11       #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v13       #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private updateAllUnCheckState()V
    .locals 3

    .prologue
    .line 332
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 333
    iget-object v1, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->setChecked(Z)V

    .line 332
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 335
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCheckedGroupList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 336
    iget-object v1, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCheckedGroupList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 337
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCheckedGroupTitleList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 338
    iget-object v1, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCheckedGroupTitleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 339
    :cond_2
    return-void
.end method

.method private updateHeaderUnCheckState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 342
    const/4 v0, 0x0

    .line 343
    .local v0, checkedcount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 344
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v2}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 345
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 346
    add-int/lit8 v0, v0, 0x1

    .line 343
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 349
    :cond_1
    if-lez v0, :cond_2

    .line 350
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->onUpdateSaveMenuItem(Z)V

    .line 355
    :goto_1
    return-void

    .line 352
    :cond_2
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->onUpdateSaveMenuItem(Z)V

    goto :goto_1
.end method


# virtual methods
.method public getSelecedGroupId()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 384
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCheckedGroupList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSelectedGroupTitle()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 388
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCheckedGroupTitleList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public loadData(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 213
    const-string v0, "android.intent.extra.CONTACT_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mContactId:J

    .line 214
    const-string v0, "android.intent.extra.EXTRA_GROUP_CHECKED_LIST"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCheckedGroupList:Ljava/util/ArrayList;

    .line 216
    const-string v0, "android.intent.extra.EXTRA_GROUP_CHECKED_STRING_LIST"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCheckedGroupTitleList:Ljava/util/ArrayList;

    .line 219
    const-string v0, "android.intent.extra.EXTRA_GROUP_IS_GOOGLE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mIsContainGoogle:Z

    .line 220
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCheckedGroupList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 221
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->onUpdateSaveMenuItem(Z)V

    .line 223
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 173
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onAttach(Landroid/app/Activity;)V

    .line 175
    iput-object p1, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mContext:Landroid/content/Context;

    .line 176
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 103
    const-string v0, "SelectGroupFragment"

    const-string v1, "========== onCreate(Bundle savedInstanceState) =========="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const-string v0, "SelectGroupFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "savedInstanceState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mItems:Ljava/util/ArrayList;

    .line 108
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 109
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    const/4 v3, 0x0

    .line 113
    const-string v0, "SelectGroupFragment"

    const-string v1, "========== onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedState) =========="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-string v0, "SelectGroupFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inflater = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const-string v0, "SelectGroupFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "container = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const-string v0, "SelectGroupFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "savedState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const v0, 0x7f040084

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mView:Landroid/view/View;

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mListView:Landroid/widget/ListView;

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 123
    const v0, 0x7f040085

    iget-object v1, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderView:Landroid/view/View;

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderView:Landroid/view/View;

    const v1, 0x7f0d019d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderTextView:Landroid/widget/TextView;

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderTextView:Landroid/widget/TextView;

    const v1, 0x7f0a021e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderView:Landroid/view/View;

    const v1, 0x7f0d00df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderCheckBox:Landroid/widget/CheckBox;

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderView:Landroid/view/View;

    const v1, 0x7f0d019c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mView:Landroid/view/View;

    const v1, 0x7f0d019b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCreateFieldButton:Landroid/widget/Button;

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCreateFieldButton:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment$1;-><init>(Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 301
    invoke-super/range {p0 .. p5}, Landroid/app/ListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 303
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    .line 305
    .local v0, headerCount:I
    if-nez p3, :cond_3

    .line 306
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mIsContainGoogle:Z

    if-nez v2, :cond_0

    .line 307
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 308
    .local v1, isheaderchecked:Ljava/lang/Boolean;
    iget-object v5, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 309
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 310
    invoke-static {v4}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->onUpdateSaveMenuItem(Z)V

    .line 314
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->updateAllUnCheckState()V

    .line 329
    .end local v1           #isheaderchecked:Ljava/lang/Boolean;
    :cond_0
    :goto_2
    return-void

    .restart local v1       #isheaderchecked:Ljava/lang/Boolean;
    :cond_1
    move v2, v4

    .line 308
    goto :goto_0

    .line 312
    :cond_2
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/GroupSelectionActivity;->onUpdateSaveMenuItem(Z)V

    goto :goto_1

    .line 317
    .end local v1           #isheaderchecked:Ljava/lang/Boolean;
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    sub-int v5, p3, v0

    invoke-virtual {v2, v5}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v2}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 318
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    sub-int v3, p3, v0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v2, v4}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->setChecked(Z)V

    .line 319
    iget-object v3, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCheckedGroupList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    sub-int v4, p3, v0

    invoke-virtual {v2, v4}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v2}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->getGroupId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 320
    iget-object v3, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCheckedGroupTitleList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    sub-int v4, p3, v0

    invoke-virtual {v2, v4}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v2}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->getRealTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 326
    :goto_3
    invoke-direct {p0}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->updateHeaderUnCheckState()V

    goto :goto_2

    .line 322
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    sub-int v4, p3, v0

    invoke-virtual {v2, v4}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v2, v3}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->setChecked(Z)V

    .line 323
    iget-object v3, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCheckedGroupList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    sub-int v4, p3, v0

    invoke-virtual {v2, v4}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v2}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->getGroupId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    iget-object v3, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mCheckedGroupTitleList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    sub-int v4, p3, v0

    invoke-virtual {v2, v4}, Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;

    invoke-virtual {v2}, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->getRealTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mGroupLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 228
    invoke-super {p0}, Landroid/app/ListFragment;->onStart()V

    .line 229
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 161
    invoke-super {p0}, Landroid/app/ListFragment;->onStop()V

    .line 162
    sget-object v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mSystemTitleMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 163
    sget-object v0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mSystemTitleMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 164
    :cond_0
    return-void
.end method

.method public updateGroup()V
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mAdapter:Lcom/sec/android/app/contacts/editor/GroupSelectionAdapter;

    if-nez v0, :cond_1

    .line 374
    const-string v0, "SelectGroupFragment"

    const-string v1, "updateAggregatedGroup, mAdapter is null so do not reset action."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->resetGroups()V

    .line 378
    iget-object v0, p0, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->mHeaderCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 379
    invoke-direct {p0}, Lcom/sec/android/app/contacts/editor/GroupSelectionFragment;->updateAggregatedGroup()V

    goto :goto_0
.end method

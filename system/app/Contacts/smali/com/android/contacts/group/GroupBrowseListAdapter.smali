.class public Lcom/android/contacts/group/GroupBrowseListAdapter;
.super Landroid/widget/BaseAdapter;
.source "GroupBrowseListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;
    }
.end annotation


# instance fields
.field private final mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

.field private final mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mSelectedGroupUri:Landroid/net/Uri;

.field private mSelectionVisible:Z


# direct methods
.method private bindHeaderView(Lcom/android/contacts/group/GroupListItem;Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;)V
    .locals 4
    .parameter "entry"
    .parameter "viewCache"

    .prologue
    .line 197
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    invoke-virtual {p1}, Lcom/android/contacts/group/GroupListItem;->getAccountType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/contacts/group/GroupListItem;->getDataSet()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    .line 199
    .local v0, accountType:Lcom/android/contacts/model/AccountType;
    iget-object v1, p2, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->accountType:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    return-void
.end method

.method private static getGroupUriFromId(J)Landroid/net/Uri;
    .locals 1
    .parameter "groupId"

    .prologue
    .line 204
    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private isSelectedGroup(Landroid/net/Uri;)Z
    .locals 1
    .parameter "groupUri"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mSelectedGroupUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mSelectedGroupUri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lcom/android/contacts/group/GroupListItem;
    .locals 14
    .parameter "position"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    :cond_0
    const/4 v0, 0x0

    .line 144
    :goto_0
    return-object v0

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x0

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, accountName:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, accountType:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 123
    .local v3, dataSet:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x3

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 124
    .local v4, groupId:J
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x4

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 125
    .local v6, title:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x5

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 130
    .local v8, memberCount:I
    add-int/lit8 v12, p1, -0x1

    .line 131
    .local v12, previousIndex:I
    const/4 v7, 0x1

    .line 132
    .local v7, isFirstGroupInAccount:Z
    if-ltz v12, :cond_2

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v12}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x0

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 134
    .local v9, previousGroupAccountName:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 135
    .local v10, previousGroupAccountType:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v13, 0x2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 137
    .local v11, previousGroupDataSet:Ljava/lang/String;
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v3, v11}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    const/4 v7, 0x0

    .line 144
    .end local v9           #previousGroupAccountName:Ljava/lang/String;
    .end local v10           #previousGroupAccountType:Ljava/lang/String;
    .end local v11           #previousGroupDataSet:Ljava/lang/String;
    :cond_2
    new-instance v0, Lcom/android/contacts/group/GroupListItem;

    invoke-direct/range {v0 .. v8}, Lcom/android/contacts/group/GroupListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZI)V

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/contacts/group/GroupBrowseListAdapter;->getItem(I)Lcom/android/contacts/group/GroupListItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 112
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 150
    invoke-virtual {p0, p1}, Lcom/android/contacts/group/GroupBrowseListAdapter;->getItem(I)Lcom/android/contacts/group/GroupListItem;

    move-result-object v0

    .line 153
    .local v0, entry:Lcom/android/contacts/group/GroupListItem;
    if-eqz p2, :cond_1

    .line 154
    move-object v3, p2

    .line 155
    .local v3, result:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;

    .line 163
    .local v4, viewCache:Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;
    :goto_0
    invoke-virtual {v0}, Lcom/android/contacts/group/GroupListItem;->isFirstGroupInAccount()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 164
    invoke-direct {p0, v0, v4}, Lcom/android/contacts/group/GroupBrowseListAdapter;->bindHeaderView(Lcom/android/contacts/group/GroupListItem;Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;)V

    .line 165
    iget-object v5, v4, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->accountHeader:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 166
    iget-object v5, v4, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->divider:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 184
    :goto_1
    invoke-virtual {v0}, Lcom/android/contacts/group/GroupListItem;->getGroupId()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/contacts/group/GroupBrowseListAdapter;->getGroupUriFromId(J)Landroid/net/Uri;

    move-result-object v1

    .line 185
    .local v1, groupUri:Landroid/net/Uri;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupListItem;->getMemberCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, memberCountString:Ljava/lang/String;
    invoke-virtual {v4, v1}, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->setUri(Landroid/net/Uri;)V

    .line 187
    iget-object v5, v4, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->groupTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupListItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v5, v4, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->groupMemberCount:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-boolean v5, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mSelectionVisible:Z

    if-eqz v5, :cond_0

    .line 191
    invoke-direct {p0, v1}, Lcom/android/contacts/group/GroupBrowseListAdapter;->isSelectedGroup(Landroid/net/Uri;)Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setActivated(Z)V

    .line 193
    :cond_0
    return-object v3

    .line 157
    .end local v1           #groupUri:Landroid/net/Uri;
    .end local v2           #memberCountString:Ljava/lang/String;
    .end local v3           #result:Landroid/view/View;
    .end local v4           #viewCache:Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;
    :cond_1
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040072

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 158
    .restart local v3       #result:Landroid/view/View;
    new-instance v4, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;

    invoke-direct {v4, v3}, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;-><init>(Landroid/view/View;)V

    .line 159
    .restart local v4       #viewCache:Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;
    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 178
    :cond_2
    iget-object v5, v4, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->accountHeader:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 179
    iget-object v5, v4, Lcom/android/contacts/group/GroupBrowseListAdapter$GroupListItemViewCache;->divider:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

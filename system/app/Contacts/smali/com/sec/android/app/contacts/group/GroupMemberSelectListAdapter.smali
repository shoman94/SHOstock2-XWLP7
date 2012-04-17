.class public Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;
.super Lcom/android/contacts/list/ContactListAdapter;
.source "GroupMemberSelectListAdapter.java"


# instance fields
.field protected mExceptedAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field protected mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

.field protected mIsAutoAdd:Z

.field protected mMode:I

.field protected mModifiedMemberIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected mOriginalMemberIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
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
    .line 69
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mModifiedMemberIds:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mOriginalMemberIds:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mExceptedAccounts:Ljava/util/List;

    .line 70
    return-void
.end method

.method private configureSelection(Landroid/content/CursorLoader;JI)V
    .locals 7
    .parameter "loader"
    .parameter "directoryId"
    .parameter "mode"

    .prologue
    .line 285
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    .local v3, selection:Ljava/lang/StringBuilder;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .local v4, selectionArgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/16 v5, 0xe

    if-ne p4, v5, :cond_4

    .line 289
    iget-object v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mExceptedAccounts:Ljava/util/List;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mExceptedAccounts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_3

    .line 290
    const-string v5, " _id NOT IN (SELECT contacts._id FROM contacts "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "JOIN raw_contacts ON (contacts._id = raw_contacts.contact_id) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "WHERE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mExceptedAccounts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 294
    if-eqz v2, :cond_0

    .line 295
    const-string v5, " OR "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    :cond_0
    const-string v5, "(account_type = ? AND account_name = ?)"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    iget-object v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mExceptedAccounts:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/model/AccountWithDataSet;

    iget-object v5, v5, Lcom/android/contacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    iget-object v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mExceptedAccounts:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/model/AccountWithDataSet;

    iget-object v5, v5, Lcom/android/contacts/model/AccountWithDataSet;->name:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 301
    :cond_1
    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .end local v2           #i:I
    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 308
    const-string v5, " AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "link_type1 != \'vnd.sec.contact.sim\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    :cond_2
    :goto_2
    const-wide/16 v5, 0x0

    cmp-long v5, p2, v5

    if-eqz v5, :cond_5

    .line 325
    :goto_3
    return-void

    .line 304
    :cond_3
    const-string v5, "link_type1 != \'vnd.sec.contact.my_profile\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 312
    :cond_4
    const/16 v5, 0xf

    if-ne p4, v5, :cond_2

    .line 313
    iget-object v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/group/GroupInfo;->getAccountType()Ljava/lang/String;

    move-result-object v1

    .line 314
    .local v1, accountType:Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/group/GroupInfo;->getAccountName()Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, accountName:Ljava/lang/String;
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 323
    .end local v0           #accountName:Ljava/lang/String;
    .end local v1           #accountType:Ljava/lang/String;
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 324
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    goto :goto_3
.end method

.method private createFilterUriBuilder(I)Landroid/net/Uri$Builder;
    .locals 7
    .parameter "mode"

    .prologue
    .line 226
    const/4 v3, 0x0

    .line 227
    .local v3, title:Ljava/lang/String;
    const-wide/16 v1, -0x1

    .line 229
    .local v1, groupId:J
    iget-object v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    if-eqz v5, :cond_0

    .line 230
    iget-object v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 231
    iget-object v5, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/group/GroupInfo;->getGroupId()J

    move-result-wide v1

    .line 234
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 272
    :pswitch_0
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Can\'t generate URI: Unsupported Mode."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 236
    :pswitch_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://com.android.contacts/groups/title/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/contacts_except_filter"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 237
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 275
    .local v0, builder:Landroid/net/Uri$Builder;
    :goto_0
    return-object v0

    .line 242
    .end local v0           #builder:Landroid/net/Uri$Builder;
    .end local v4           #uri:Landroid/net/Uri;
    :pswitch_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://com.android.contacts/groups/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/contacts_except_filter"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 243
    .restart local v4       #uri:Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 244
    .restart local v0       #builder:Landroid/net/Uri$Builder;
    goto :goto_0

    .line 248
    .end local v0           #builder:Landroid/net/Uri$Builder;
    .end local v4           #uri:Landroid/net/Uri;
    :pswitch_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://com.android.contacts/groups/title/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/contacts_filter"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 249
    .restart local v4       #uri:Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 250
    .restart local v0       #builder:Landroid/net/Uri$Builder;
    goto :goto_0

    .line 254
    .end local v0           #builder:Landroid/net/Uri$Builder;
    .end local v4           #uri:Landroid/net/Uri;
    :pswitch_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://com.android.contacts/groups/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/contacts_filter"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 255
    .restart local v4       #uri:Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 256
    .restart local v0       #builder:Landroid/net/Uri$Builder;
    goto :goto_0

    .line 260
    .end local v0           #builder:Landroid/net/Uri$Builder;
    .end local v4           #uri:Landroid/net/Uri;
    :pswitch_5
    const-string v5, "content://com.android.contacts/contacts_list/filter"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 261
    .restart local v4       #uri:Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 262
    .restart local v0       #builder:Landroid/net/Uri$Builder;
    goto :goto_0

    .line 266
    .end local v0           #builder:Landroid/net/Uri$Builder;
    .end local v4           #uri:Landroid/net/Uri;
    :pswitch_6
    const-string v5, "content://com.android.contacts/contacts/account_filter"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 267
    .restart local v4       #uri:Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 268
    .restart local v0       #builder:Landroid/net/Uri$Builder;
    goto :goto_0

    .line 234
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method protected bindCheckBox(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 5
    .parameter "view"
    .parameter "cursor"

    .prologue
    const/4 v4, 0x0

    .line 363
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 364
    .local v0, contactId:J
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mModifiedMemberIds:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 365
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->bindCheckBox(Lcom/android/contacts/list/ContactListItemView;Z)V

    .line 369
    :goto_0
    return-void

    .line 367
    :cond_0
    invoke-virtual {p0, p1, v4}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->bindCheckBox(Lcom/android/contacts/list/ContactListItemView;Z)V

    goto :goto_0
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 8
    .parameter "itemView"
    .parameter "partition"
    .parameter "cursor"
    .parameter "position"

    .prologue
    const/4 v7, 0x0

    .line 329
    move-object v1, p1

    check-cast v1, Lcom/android/contacts/list/ContactListItemView;

    .line 331
    .local v1, view:Lcom/android/contacts/list/ContactListItemView;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->getUpperCaseQueryString()[C

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactListItemView;->setHighlightedPrefix([C)V

    .line 333
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->isSelectionVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->isSelectedContact(ILandroid/database/Cursor;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactListItemView;->setActivated(Z)V

    .line 337
    :cond_0
    invoke-virtual {p0, v1, p4, p3}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->bindSectionHeaderAndDivider(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    .line 339
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->isQuickContactEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 340
    const/4 v4, 0x7

    const/4 v5, 0x0

    const/16 v6, 0x9

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->bindQuickContact(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;III)V

    .line 347
    :goto_1
    invoke-virtual {p0, v1, p3}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 348
    invoke-virtual {p0, v1, p3}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->bindPresenceAndStatusMessage(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 350
    invoke-virtual {p0, v1, p3}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->bindAccountIcons(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 351
    invoke-virtual {p0, v1, p3}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->bindCheckBox(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 352
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 353
    invoke-virtual {p0, v1, p3}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->bindSearchSnippet(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 358
    :goto_2
    invoke-virtual {p0, p4}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->isEnabled(I)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactListItemView;->setEnabled(Z)V

    .line 360
    return-void

    :cond_1
    move-object v0, v7

    .line 331
    goto :goto_0

    .line 344
    :cond_2
    invoke-virtual {p0, v1, p2, p3}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->bindPhoto(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    goto :goto_1

    .line 355
    :cond_3
    invoke-virtual {v1, v7}, Lcom/android/contacts/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 6
    .parameter "loader"
    .parameter "directoryId"

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->getMode()I

    move-result v1

    .line 113
    .local v1, mode:I
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->isSearchMode()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 114
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, query:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 116
    const-string v2, ""

    .line 118
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 119
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 122
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 123
    sget-object v4, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->PROJECTION_CONTACT:[Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 124
    const-string v4, "0"

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 153
    .end local v2           #query:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->getSortOrder()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 154
    const-string v3, "sort_key"

    .line 159
    .local v3, sortOrder:Ljava/lang/String;
    :goto_1
    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 160
    return-void

    .line 128
    .end local v3           #sortOrder:Ljava/lang/String;
    .restart local v2       #query:Ljava/lang/String;
    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-eqz v4, :cond_2

    const-wide/16 v4, 0x1

    cmp-long v4, p2, v4

    if-eqz v4, :cond_2

    .line 129
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 130
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 131
    const-string v4, "directory"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 133
    const-string v4, "limit"

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->getDirectoryResultLimit()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 142
    :goto_2
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 144
    sget-object v4, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->FILTER_PROJECTION_WITHOUT_SNIPPET:[Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_0

    .line 137
    .end local v0           #builder:Landroid/net/Uri$Builder;
    :cond_2
    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->createFilterUriBuilder(I)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 138
    .restart local v0       #builder:Landroid/net/Uri$Builder;
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 140
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->configureSelection(Landroid/content/CursorLoader;JI)V

    goto :goto_2

    .line 147
    .end local v0           #builder:Landroid/net/Uri$Builder;
    .end local v2           #query:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->configureUri(Landroid/content/CursorLoader;JI)V

    .line 148
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->configureProjection(Landroid/content/CursorLoader;)V

    .line 149
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->configureSelection(Landroid/content/CursorLoader;JI)V

    goto :goto_0

    .line 156
    :cond_4
    const-string v3, "sort_key_alt"

    .restart local v3       #sortOrder:Ljava/lang/String;
    goto :goto_1
.end method

.method protected configureProjection(Landroid/content/CursorLoader;)V
    .locals 1
    .parameter "loader"

    .prologue
    .line 280
    sget-object v0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->PROJECTION_CONTACT:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method protected configureUri(Landroid/content/CursorLoader;JI)V
    .locals 8
    .parameter "loader"
    .parameter "directoryId"
    .parameter "mode"

    .prologue
    const-wide/16 v6, 0x0

    .line 163
    const/4 v2, 0x0

    .line 164
    .local v2, title:Ljava/lang/String;
    const-wide/16 v0, -0x1

    .line 167
    .local v0, groupId:J
    iget-object v4, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    if-eqz v4, :cond_0

    .line 168
    iget-object v4, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 169
    iget-object v4, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/group/GroupInfo;->getGroupId()J

    move-result-wide v0

    .line 172
    :cond_0
    packed-switch p4, :pswitch_data_0

    .line 207
    :pswitch_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Can\'t generate URI: Unsupported Mode."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 174
    :pswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://com.android.contacts/groups/title/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/contacts_except"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 211
    .local v3, uri:Landroid/net/Uri;
    :goto_0
    cmp-long v4, p2, v6

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 212
    invoke-static {v3}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 215
    :cond_1
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "directory"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 220
    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 221
    return-void

    .line 180
    .end local v3           #uri:Landroid/net/Uri;
    :pswitch_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://com.android.contacts/groups/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/contacts_except"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 182
    .restart local v3       #uri:Landroid/net/Uri;
    goto :goto_0

    .line 186
    .end local v3           #uri:Landroid/net/Uri;
    :pswitch_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://com.android.contacts/groups/title/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/contacts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 188
    .restart local v3       #uri:Landroid/net/Uri;
    goto :goto_0

    .line 192
    .end local v3           #uri:Landroid/net/Uri;
    :pswitch_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://com.android.contacts/groups/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/contacts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 193
    .restart local v3       #uri:Landroid/net/Uri;
    goto :goto_0

    .line 197
    .end local v3           #uri:Landroid/net/Uri;
    :pswitch_5
    const-string v4, "content://com.android.contacts/contacts"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 198
    .restart local v3       #uri:Landroid/net/Uri;
    goto/16 :goto_0

    .line 202
    .end local v3           #uri:Landroid/net/Uri;
    :pswitch_6
    const-string v4, "content://com.android.contacts/contacts/account"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 203
    .restart local v3       #uri:Landroid/net/Uri;
    goto/16 :goto_0

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected getMode()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mMode:I

    return v0
.end method

.method public isEnabled(I)Z
    .locals 9
    .parameter "position"

    .prologue
    const/16 v8, 0xd

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 374
    iget-boolean v4, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mIsAutoAdd:Z

    if-eqz v4, :cond_1

    .line 375
    iget v4, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mMode:I

    and-int/lit8 v4, v4, 0x8

    const/16 v7, 0x8

    if-ne v4, v7, :cond_3

    .line 376
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 377
    .local v2, cursor:Landroid/database/Cursor;
    if-eqz v2, :cond_1

    .line 378
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/Cursor;

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 380
    .local v3, string:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/Cursor;

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 381
    .local v0, contactId:J
    const-string v4, "com.google"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mOriginalMemberIds:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    move v4, v6

    :goto_0
    move v6, v4

    .line 394
    .end local v0           #contactId:J
    .end local v2           #cursor:Landroid/database/Cursor;
    .end local v3           #string:Ljava/lang/String;
    :cond_1
    :goto_1
    return v6

    .restart local v0       #contactId:J
    .restart local v2       #cursor:Landroid/database/Cursor;
    .restart local v3       #string:Ljava/lang/String;
    :cond_2
    move v4, v5

    .line 381
    goto :goto_0

    .line 384
    .end local v0           #contactId:J
    .end local v2           #cursor:Landroid/database/Cursor;
    .end local v3           #string:Ljava/lang/String;
    :cond_3
    iget v4, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mMode:I

    and-int/lit8 v4, v4, 0x4

    const/4 v7, 0x4

    if-ne v4, v7, :cond_1

    .line 385
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 386
    .restart local v2       #cursor:Landroid/database/Cursor;
    if-eqz v2, :cond_1

    .line 387
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/database/Cursor;

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 389
    .restart local v3       #string:Ljava/lang/String;
    const-string v4, "com.google"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v6, v5

    goto :goto_1
.end method

.method protected setAutoAdd(Z)V
    .locals 0
    .parameter "isAutoAdd"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mIsAutoAdd:Z

    .line 83
    return-void
.end method

.method protected setExceptedAccounts(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, exceptedAccounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    if-eqz p1, :cond_0

    .line 92
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mExceptedAccounts:Ljava/util/List;

    .line 94
    :cond_0
    return-void
.end method

.method protected setGroupInfo(Lcom/sec/android/app/contacts/group/GroupInfo;)V
    .locals 0
    .parameter "groupInfo"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 88
    return-void
.end method

.method protected setMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 73
    iput p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mMode:I

    .line 74
    return-void
.end method

.method protected setModifiedMemeberIds(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, modifiedMemberIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    .line 98
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mModifiedMemberIds:Ljava/util/List;

    .line 100
    :cond_0
    return-void
.end method

.method protected setOriginalMemeberIds(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, originalMemberIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    .line 105
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupMemberSelectListAdapter;->mOriginalMemberIds:Ljava/util/List;

    .line 107
    :cond_0
    return-void
.end method

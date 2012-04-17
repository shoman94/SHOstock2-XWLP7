.class public Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMemberFilter;
.super Landroid/widget/Filter;
.source "SuggestedMemberListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/SuggestedMemberListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SuggestedMemberFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/group/SuggestedMemberListAdapter;


# direct methods
.method public constructor <init>(Lcom/android/contacts/group/SuggestedMemberListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMemberFilter;->this$0:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 35
    .parameter "prefix"

    .prologue
    .line 171
    new-instance v30, Landroid/widget/Filter$FilterResults;

    invoke-direct/range {v30 .. v30}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 172
    .local v30, results:Landroid/widget/Filter$FilterResults;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMemberFilter;->this$0:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    #getter for: Lcom/android/contacts/group/SuggestedMemberListAdapter;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->access$000(Lcom/android/contacts/group/SuggestedMemberListAdapter;)Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-object v30

    .line 180
    :cond_1
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v33, suggestionsList:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;>;"
    new-instance v34, Ljava/util/HashMap;

    invoke-direct/range {v34 .. v34}, Ljava/util/HashMap;-><init>()V

    .line 185
    .local v34, suggestionsMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 186
    .local v31, searchQuery:Ljava/lang/String;
    const-string v20, "account_name=? AND account_type=?"

    .line 189
    .local v20, accountClause:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMemberFilter;->this$0:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    #getter for: Lcom/android/contacts/group/SuggestedMemberListAdapter;->mDataSet:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->access$100(Lcom/android/contacts/group/SuggestedMemberListAdapter;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND data_set IS NULL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 191
    const/4 v2, 0x4

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMemberFilter;->this$0:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    #getter for: Lcom/android/contacts/group/SuggestedMemberListAdapter;->mAccountName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->access$200(Lcom/android/contacts/group/SuggestedMemberListAdapter;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMemberFilter;->this$0:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    #getter for: Lcom/android/contacts/group/SuggestedMemberListAdapter;->mAccountType:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->access$300(Lcom/android/contacts/group/SuggestedMemberListAdapter;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x2

    aput-object v31, v6, v2

    const/4 v2, 0x3

    aput-object v31, v6, v2

    .line 199
    .local v6, args:[Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMemberFilter;->this$0:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    #getter for: Lcom/android/contacts/group/SuggestedMemberListAdapter;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->access$000(Lcom/android/contacts/group/SuggestedMemberListAdapter;)Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->access$400()[Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " AND ("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "display_name"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " LIKE ? OR "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "display_name_alt"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " LIKE ? )"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "display_name COLLATE LOCALIZED ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 206
    .local v22, cursor:Landroid/database/Cursor;
    if-eqz v22, :cond_0

    .line 213
    const/4 v2, -0x1

    :try_start_0
    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 214
    :cond_2
    :goto_2
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual/range {v34 .. v34}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_4

    .line 215
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 216
    .local v9, rawContactId:J
    const/4 v2, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 218
    .local v12, contactId:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMemberFilter;->this$0:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    #getter for: Lcom/android/contacts/group/SuggestedMemberListAdapter;->mExistingMemberContactIds:Ljava/util/List;
    invoke-static {v2}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->access$500(Lcom/android/contacts/group/SuggestedMemberListAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 222
    const/4 v2, 0x2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 223
    .local v11, displayName:Ljava/lang/String;
    new-instance v7, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMemberFilter;->this$0:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    invoke-direct/range {v7 .. v13}, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;-><init>(Lcom/android/contacts/group/SuggestedMemberListAdapter;JLjava/lang/String;J)V

    .line 226
    .local v7, member:Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;
    move-object/from16 v0, v33

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v34

    invoke-virtual {v0, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 230
    .end local v7           #member:Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;
    .end local v9           #rawContactId:J
    .end local v11           #displayName:Ljava/lang/String;
    .end local v12           #contactId:J
    :catchall_0
    move-exception v2

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    throw v2

    .line 193
    .end local v6           #args:[Ljava/lang/String;
    .end local v22           #cursor:Landroid/database/Cursor;
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND data_set=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 194
    const/4 v2, 0x5

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMemberFilter;->this$0:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    #getter for: Lcom/android/contacts/group/SuggestedMemberListAdapter;->mAccountName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->access$200(Lcom/android/contacts/group/SuggestedMemberListAdapter;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMemberFilter;->this$0:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    #getter for: Lcom/android/contacts/group/SuggestedMemberListAdapter;->mAccountType:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->access$300(Lcom/android/contacts/group/SuggestedMemberListAdapter;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMemberFilter;->this$0:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    #getter for: Lcom/android/contacts/group/SuggestedMemberListAdapter;->mDataSet:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->access$100(Lcom/android/contacts/group/SuggestedMemberListAdapter;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x3

    aput-object v31, v6, v2

    const/4 v2, 0x4

    aput-object v31, v6, v2

    .restart local v6       #args:[Ljava/lang/String;
    goto/16 :goto_1

    .line 230
    .restart local v22       #cursor:Landroid/database/Cursor;
    :cond_4
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 233
    invoke-virtual/range {v34 .. v34}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v27

    .line 234
    .local v27, numSuggestions:I
    if-eqz v27, :cond_0

    .line 241
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .local v29, rawContactIdSelectionBuilder:Ljava/lang/StringBuilder;
    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v28, v0

    .line 243
    .local v28, questionMarks:[Ljava/lang/String;
    const-string v2, "?"

    move-object/from16 v0, v28

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 244
    const-string v2, "_id IN ("

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    move-object/from16 v0, v28

    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v32, selectionArgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v32

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    const-string v2, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v32

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    const-string v2, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v32

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-virtual/range {v34 .. v34}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 255
    .local v9, rawContactId:Ljava/lang/Long;
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 260
    .end local v9           #rawContactId:Ljava/lang/Long;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMemberFilter;->this$0:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    #getter for: Lcom/android/contacts/group/SuggestedMemberListAdapter;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->access$000(Lcom/android/contacts/group/SuggestedMemberListAdapter;)Landroid/content/ContentResolver;

    move-result-object v14

    sget-object v15, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->access$600()[Ljava/lang/String;

    move-result-object v16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(mimetype=? OR mimetype=? OR mimetype=?) AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/String;

    const/16 v19, 0x0

    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 267
    .local v25, memberDataCursor:Landroid/database/Cursor;
    const/4 v2, -0x1

    :try_start_1
    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 268
    :cond_6
    :goto_4
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 269
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 270
    .local v9, rawContactId:J
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;

    .line 271
    .restart local v7       #member:Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;
    if-eqz v7, :cond_6

    .line 274
    const/4 v2, 0x2

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 275
    .local v26, mimetype:Ljava/lang/String;
    const-string v2, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 277
    const/4 v2, 0x4

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v21

    .line 278
    .local v21, bitmapArray:[B
    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->setPhotoByteArray([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    .line 290
    .end local v7           #member:Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;
    .end local v9           #rawContactId:J
    .end local v21           #bitmapArray:[B
    .end local v26           #mimetype:Ljava/lang/String;
    :catchall_1
    move-exception v2

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    throw v2

    .line 279
    .restart local v7       #member:Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;
    .restart local v9       #rawContactId:J
    .restart local v26       #mimetype:Ljava/lang/String;
    :cond_7
    :try_start_2
    const-string v2, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 283
    :cond_8
    invoke-virtual {v7}, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->hasExtraInfo()Z

    move-result v2

    if-nez v2, :cond_6

    .line 284
    const/4 v2, 0x3

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 285
    .local v24, info:Ljava/lang/String;
    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->setExtraInfo(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    .line 290
    .end local v7           #member:Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;
    .end local v9           #rawContactId:J
    .end local v24           #info:Ljava/lang/String;
    .end local v26           #mimetype:Ljava/lang/String;
    :cond_9
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 292
    move-object/from16 v0, v33

    move-object/from16 v1, v30

    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 4
    .parameter "constraint"
    .parameter "results"

    .prologue
    .line 298
    iget-object v2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    .line 299
    .local v2, suggestionsList:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;>;"
    if-nez v2, :cond_0

    .line 312
    :goto_0
    return-void

    .line 304
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMemberFilter;->this$0:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->clear()V

    .line 307
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;

    .line 308
    .local v1, member:Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;
    iget-object v3, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMemberFilter;->this$0:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    invoke-virtual {v3, v1}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 311
    .end local v1           #member:Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMemberFilter;->this$0:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

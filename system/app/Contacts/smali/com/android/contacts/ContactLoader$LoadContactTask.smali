.class final Lcom/android/contacts/ContactLoader$LoadContactTask;
.super Landroid/os/AsyncTask;
.source "ContactLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LoadContactTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/contacts/ContactLoader$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ContactLoader;


# direct methods
.method private constructor <init>(Lcom/android/contacts/ContactLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 726
    iput-object p1, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/ContactLoader;Lcom/android/contacts/ContactLoader$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 726
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactLoader$LoadContactTask;-><init>(Lcom/android/contacts/ContactLoader;)V

    return-void
.end method

.method private cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V
    .locals 3
    .parameter "cursor"
    .parameter "values"
    .parameter "index"

    .prologue
    .line 1050
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1064
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid or unhandled data type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1055
    :pswitch_1
    sget-object v0, Lcom/android/contacts/ContactLoader$ContactQuery;->COLUMNS:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1066
    :goto_0
    :pswitch_2
    return-void

    .line 1058
    :pswitch_3
    sget-object v0, Lcom/android/contacts/ContactLoader$ContactQuery;->COLUMNS:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1061
    :pswitch_4
    sget-object v0, Lcom/android/contacts/ContactLoader$ContactQuery;->COLUMNS:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_0

    .line 1050
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private ensureIsContactUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 7
    .parameter "resolver"
    .parameter "uri"

    .prologue
    .line 764
    if-nez p2, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "uri must not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 766
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 769
    .local v1, authority:Ljava/lang/String;
    const-string v5, "com.android.contacts"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 770
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 772
    .local v4, type:Ljava/lang/String;
    const-string v5, "vnd.android.cursor.item/contact"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 792
    .end local v4           #type:Ljava/lang/String;
    .end local p2
    :goto_0
    return-object p2

    .line 777
    .restart local v4       #type:Ljava/lang/String;
    .restart local p2
    :cond_1
    const-string v5, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 778
    invoke-static {p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 779
    .local v2, rawContactId:J
    iget-object v5, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    invoke-virtual {v5}, Lcom/android/contacts/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    goto :goto_0

    .line 784
    .end local v2           #rawContactId:J
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "uri format is unknown"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 788
    .end local v4           #type:Ljava/lang/String;
    :cond_3
    const-string v0, "contacts"

    .line 789
    .local v0, OBSOLETE_AUTHORITY:Ljava/lang/String;
    const-string v5, "contacts"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 791
    invoke-static {p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 792
    .restart local v2       #rawContactId:J
    sget-object v5, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    goto :goto_0

    .line 796
    .end local v2           #rawContactId:J
    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "uri authority is unknown"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private loadBlackListData(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 8
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    .line 1107
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/contacts/ContactLoader$BlackQuery;->BlACK_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/contacts/ContactLoader$BlackQuery;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1109
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 1120
    :goto_0
    return-void

    .line 1113
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1114
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1115
    .local v7, data:Ljava/lang/String;
    #calls: Lcom/android/contacts/ContactLoader$Result;->addBlackListData(Ljava/lang/String;)V
    invoke-static {p1, v7}, Lcom/android/contacts/ContactLoader$Result;->access$1100(Lcom/android/contacts/ContactLoader$Result;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1118
    .end local v7           #data:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private loadContactEntity(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/android/contacts/ContactLoader$Result;
    .locals 21
    .parameter "resolver"
    .parameter "contactUri"

    .prologue
    .line 800
    const-string v2, "entities"

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 801
    .local v3, entityUri:Landroid/net/Uri;
    sget-object v4, Lcom/android/contacts/ContactLoader$ContactQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "raw_contact_id"

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 803
    .local v10, cursor:Landroid/database/Cursor;
    if-nez v10, :cond_0

    .line 804
    const-string v2, "ContactLoader"

    const-string v4, "No cursor returned in loadContactEntity"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    #getter for: Lcom/android/contacts/ContactLoader;->mRequestedUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/contacts/ContactLoader;->access$400(Lcom/android/contacts/ContactLoader;)Landroid/net/Uri;

    move-result-object v2

    #calls: Lcom/android/contacts/ContactLoader$Result;->forNotFound(Landroid/net/Uri;)Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v2}, Lcom/android/contacts/ContactLoader$Result;->access$600(Landroid/net/Uri;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v18

    .line 841
    :goto_0
    return-object v18

    .line 809
    :cond_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    .line 810
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 811
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    #getter for: Lcom/android/contacts/ContactLoader;->mRequestedUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/contacts/ContactLoader;->access$400(Lcom/android/contacts/ContactLoader;)Landroid/net/Uri;

    move-result-object v2

    #calls: Lcom/android/contacts/ContactLoader$Result;->forNotFound(Landroid/net/Uri;)Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v2}, Lcom/android/contacts/ContactLoader$Result;->access$600(Landroid/net/Uri;)Lcom/android/contacts/ContactLoader$Result;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v18

    .line 841
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 814
    :cond_1
    const-wide/16 v8, -0x1

    .line 815
    .local v8, currentRawContactId:J
    const/4 v15, 0x0

    .line 816
    .local v15, entity:Landroid/content/Entity;
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v10, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->loadContactHeaderData(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v18

    .line 817
    .local v18, result:Lcom/android/contacts/ContactLoader$Result;
    invoke-virtual/range {v18 .. v18}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v14

    .line 818
    .local v14, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    invoke-virtual/range {v18 .. v18}, Lcom/android/contacts/ContactLoader$Result;->getStatuses()Ljava/util/HashMap;

    move-result-object v20

    .line 819
    .local v20, statuses:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/contacts/util/DataStatus;>;"
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_5

    .line 820
    const/16 v2, 0xe

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 821
    .local v16, rawContactId:J
    cmp-long v2, v16, v8

    if-eqz v2, :cond_2

    .line 822
    move-wide/from16 v8, v16

    .line 823
    new-instance v15, Landroid/content/Entity;

    .end local v15           #entity:Landroid/content/Entity;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/contacts/ContactLoader$LoadContactTask;->loadRawContact(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-direct {v15, v2}, Landroid/content/Entity;-><init>(Landroid/content/ContentValues;)V

    .line 824
    .restart local v15       #entity:Landroid/content/Entity;
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 826
    :cond_2
    const/16 v2, 0x1c

    invoke-interface {v10, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 827
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/contacts/ContactLoader$LoadContactTask;->loadData(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v11

    .line 828
    .local v11, data:Landroid/content/ContentValues;
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v15, v2, v11}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 830
    const/16 v2, 0x36

    invoke-interface {v10, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x38

    invoke-interface {v10, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 832
    :cond_3
    new-instance v19, Lcom/android/contacts/util/DataStatus;

    move-object/from16 v0, v19

    invoke-direct {v0, v10}, Lcom/android/contacts/util/DataStatus;-><init>(Landroid/database/Cursor;)V

    .line 833
    .local v19, status:Lcom/android/contacts/util/DataStatus;
    const/16 v2, 0x1c

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 834
    .local v12, dataId:J
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    .end local v11           #data:Landroid/content/ContentValues;
    .end local v12           #dataId:J
    .end local v19           #status:Lcom/android/contacts/util/DataStatus;
    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 841
    .end local v8           #currentRawContactId:J
    .end local v14           #entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    .end local v15           #entity:Landroid/content/Entity;
    .end local v16           #rawContactId:J
    .end local v18           #result:Lcom/android/contacts/ContactLoader$Result;
    .end local v20           #statuses:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/contacts/util/DataStatus;>;"
    :catchall_0
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    .restart local v8       #currentRawContactId:J
    .restart local v14       #entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    .restart local v15       #entity:Landroid/content/Entity;
    .restart local v18       #result:Lcom/android/contacts/ContactLoader$Result;
    .restart local v20       #statuses:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/contacts/util/DataStatus;>;"
    :cond_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private loadContactHeaderData(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/android/contacts/ContactLoader$Result;
    .locals 30
    .parameter "cursor"
    .parameter "contactUri"

    .prologue
    .line 931
    const-string v1, "directory"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 933
    .local v27, directoryParameter:Ljava/lang/String;
    if-nez v27, :cond_2

    const-wide/16 v5, 0x0

    .line 936
    .local v5, directoryId:J
    :goto_0
    const/16 v1, 0xd

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 937
    .local v8, contactId:J
    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 938
    .local v7, lookupKey:Ljava/lang/String;
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 939
    .local v10, nameRawContactId:J
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 940
    .local v12, displayNameSource:I
    const/4 v1, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 941
    .local v16, displayName:Ljava/lang/String;
    const/4 v1, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 942
    .local v17, altDisplayName:Ljava/lang/String;
    const/4 v1, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 943
    .local v18, phoneticName:Ljava/lang/String;
    const/4 v1, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 944
    .local v13, photoId:J
    const/16 v1, 0x3d

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 945
    .local v15, photoUri:Ljava/lang/String;
    const/4 v1, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_3

    const/16 v19, 0x1

    .line 946
    .local v19, starred:Z
    :goto_1
    const/16 v1, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v20, 0x0

    .line 949
    .local v20, presence:Ljava/lang/Integer;
    :goto_2
    const/16 v1, 0x3e

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    const/16 v21, 0x1

    .line 950
    .local v21, sendToVoicemail:Z
    :goto_3
    const/16 v1, 0x3f

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 951
    .local v22, customRingtone:Ljava/lang/String;
    const/16 v1, 0x40

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    const/16 v23, 0x1

    .line 953
    .local v23, isUserProfile:Z
    :goto_4
    const/16 v1, 0x10

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v24, 0x0

    .line 958
    .local v24, isSim:Z
    :goto_5
    const-wide/16 v1, 0x0

    cmp-long v1, v5, v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x1

    cmp-long v1, v5, v1

    if-nez v1, :cond_8

    .line 959
    :cond_0
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v1, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 966
    .local v4, lookupUri:Landroid/net/Uri;
    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0222

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 967
    .local v25, customRingtoneName:Ljava/lang/String;
    if-eqz v22, :cond_1

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 968
    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v29

    .line 969
    .local v29, ringtoneUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, v29

    invoke-static {v1, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v28

    .line 970
    .local v28, ringtone:Landroid/media/Ringtone;
    if-eqz v28, :cond_1

    .line 971
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, v28

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v25

    .line 975
    .end local v28           #ringtone:Landroid/media/Ringtone;
    .end local v29           #ringtoneUri:Landroid/net/Uri;
    :cond_1
    new-instance v1, Lcom/android/contacts/ContactLoader$Result;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    #getter for: Lcom/android/contacts/ContactLoader;->mRequestedUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/contacts/ContactLoader;->access$400(Lcom/android/contacts/ContactLoader;)Landroid/net/Uri;

    move-result-object v2

    const/16 v26, 0x0

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v26}, Lcom/android/contacts/ContactLoader$Result;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLjava/lang/String;JJIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;ZLjava/lang/String;ZZLjava/lang/String;Lcom/android/contacts/ContactLoader$1;)V

    return-object v1

    .line 933
    .end local v4           #lookupUri:Landroid/net/Uri;
    .end local v5           #directoryId:J
    .end local v7           #lookupKey:Ljava/lang/String;
    .end local v8           #contactId:J
    .end local v10           #nameRawContactId:J
    .end local v12           #displayNameSource:I
    .end local v13           #photoId:J
    .end local v15           #photoUri:Ljava/lang/String;
    .end local v16           #displayName:Ljava/lang/String;
    .end local v17           #altDisplayName:Ljava/lang/String;
    .end local v18           #phoneticName:Ljava/lang/String;
    .end local v19           #starred:Z
    .end local v20           #presence:Ljava/lang/Integer;
    .end local v21           #sendToVoicemail:Z
    .end local v22           #customRingtone:Ljava/lang/String;
    .end local v23           #isUserProfile:Z
    .end local v24           #isSim:Z
    .end local v25           #customRingtoneName:Ljava/lang/String;
    :cond_2
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    goto/16 :goto_0

    .line 945
    .restart local v5       #directoryId:J
    .restart local v7       #lookupKey:Ljava/lang/String;
    .restart local v8       #contactId:J
    .restart local v10       #nameRawContactId:J
    .restart local v12       #displayNameSource:I
    .restart local v13       #photoId:J
    .restart local v15       #photoUri:Ljava/lang/String;
    .restart local v16       #displayName:Ljava/lang/String;
    .restart local v17       #altDisplayName:Ljava/lang/String;
    .restart local v18       #phoneticName:Ljava/lang/String;
    :cond_3
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 946
    .restart local v19       #starred:Z
    :cond_4
    const/16 v1, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    goto/16 :goto_2

    .line 949
    .restart local v20       #presence:Ljava/lang/Integer;
    :cond_5
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 951
    .restart local v21       #sendToVoicemail:Z
    .restart local v22       #customRingtone:Ljava/lang/String;
    :cond_6
    const/16 v23, 0x0

    goto/16 :goto_4

    .line 953
    .restart local v23       #isUserProfile:Z
    :cond_7
    const-string v1, "vnd.sec.contact.sim"

    const/16 v2, 0x10

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    goto/16 :goto_5

    .line 962
    .restart local v24       #isSim:Z
    :cond_8
    move-object/from16 v4, p2

    .restart local v4       #lookupUri:Landroid/net/Uri;
    goto :goto_6
.end method

.method private loadData(Landroid/database/Cursor;)Landroid/content/ContentValues;
    .locals 4
    .parameter "cursor"

    .prologue
    .line 1013
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1015
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "_id"

    const/16 v2, 0x1c

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1017
    const/16 v1, 0x1d

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1018
    const/16 v1, 0x1e

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1019
    const/16 v1, 0x1f

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1020
    const/16 v1, 0x20

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1021
    const/16 v1, 0x21

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1022
    const/16 v1, 0x22

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1023
    const/16 v1, 0x23

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1024
    const/16 v1, 0x24

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1025
    const/16 v1, 0x25

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1026
    const/16 v1, 0x26

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1027
    const/16 v1, 0x27

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1028
    const/16 v1, 0x28

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1029
    const/16 v1, 0x29

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1030
    const/16 v1, 0x2a

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1031
    const/16 v1, 0x2b

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1032
    const/16 v1, 0x2c

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1033
    const/16 v1, 0x2d

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1034
    const/16 v1, 0x2e

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1035
    const/16 v1, 0x2f

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1036
    const/16 v1, 0x30

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1037
    const/16 v1, 0x31

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1038
    const/16 v1, 0x32

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1039
    const/16 v1, 0x33

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1040
    const/16 v1, 0x34

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1041
    const/16 v1, 0x35

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1042
    const/16 v1, 0x37

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1043
    const/16 v1, 0x41

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1045
    return-object v0
.end method

.method private loadDirectoryMetaData(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 17
    .parameter "result"

    .prologue
    .line 1069
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/ContactLoader$Result;->getDirectoryId()J

    move-result-wide v8

    .line 1071
    .local v8, directoryId:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v15, Landroid/provider/ContactsContract$Directory;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v15, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/contacts/ContactLoader$DirectoryQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1074
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 1103
    :goto_0
    return-void

    .line 1078
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1079
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1080
    .local v2, displayName:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1081
    .local v11, packageName:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 1082
    .local v14, typeResourceId:I
    const/4 v1, 0x3

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1083
    .local v4, accountType:Ljava/lang/String;
    const/4 v1, 0x4

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1084
    .local v5, accountName:Ljava/lang/String;
    const/4 v1, 0x5

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1085
    .local v6, exportSupport:I
    const/4 v3, 0x0

    .line 1086
    .local v3, directoryType:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1087
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v12

    .line 1089
    .local v12, pm:Landroid/content/pm/PackageManager;
    :try_start_1
    invoke-virtual {v12, v11}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v13

    .line 1090
    .local v13, resources:Landroid/content/res/Resources;
    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .end local v12           #pm:Landroid/content/pm/PackageManager;
    .end local v13           #resources:Landroid/content/res/Resources;
    :cond_1
    :goto_1
    move-object/from16 v1, p1

    .line 1097
    :try_start_2
    #calls: Lcom/android/contacts/ContactLoader$Result;->setDirectoryMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static/range {v1 .. v6}, Lcom/android/contacts/ContactLoader$Result;->access$1000(Lcom/android/contacts/ContactLoader$Result;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1101
    .end local v2           #displayName:Ljava/lang/String;
    .end local v3           #directoryType:Ljava/lang/String;
    .end local v4           #accountType:Ljava/lang/String;
    .end local v5           #accountName:Ljava/lang/String;
    .end local v6           #exportSupport:I
    .end local v11           #packageName:Ljava/lang/String;
    .end local v14           #typeResourceId:I
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1091
    .restart local v2       #displayName:Ljava/lang/String;
    .restart local v3       #directoryType:Ljava/lang/String;
    .restart local v4       #accountType:Ljava/lang/String;
    .restart local v5       #accountName:Ljava/lang/String;
    .restart local v6       #exportSupport:I
    .restart local v11       #packageName:Ljava/lang/String;
    .restart local v12       #pm:Landroid/content/pm/PackageManager;
    .restart local v14       #typeResourceId:I
    :catch_0
    move-exception v10

    .line 1092
    .local v10, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    const-string v1, "ContactLoader"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Contact directory resource not found: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v1, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1101
    .end local v2           #displayName:Ljava/lang/String;
    .end local v3           #directoryType:Ljava/lang/String;
    .end local v4           #accountType:Ljava/lang/String;
    .end local v5           #accountName:Ljava/lang/String;
    .end local v6           #exportSupport:I
    .end local v10           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v11           #packageName:Ljava/lang/String;
    .end local v12           #pm:Landroid/content/pm/PackageManager;
    .end local v14           #typeResourceId:I
    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private loadGroupMetaData(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 17
    .parameter "result"

    .prologue
    .line 1127
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1128
    .local v13, selection:Ljava/lang/StringBuilder;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1129
    .local v14, selectionArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    #getter for: Lcom/android/contacts/ContactLoader$Result;->mEntities:Ljava/util/ArrayList;
    invoke-static/range {p1 .. p1}, Lcom/android/contacts/ContactLoader$Result;->access$1200(Lcom/android/contacts/ContactLoader$Result;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/Entity;

    .line 1130
    .local v11, entity:Landroid/content/Entity;
    invoke-virtual {v11}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v15

    .line 1133
    .local v15, values:Landroid/content/ContentValues;
    const-string v1, "vnd.sec.contact.agg.account_name"

    invoke-virtual {v15, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1134
    .local v2, accountName:Ljava/lang/String;
    const-string v1, "vnd.sec.contact.agg.account_type"

    invoke-virtual {v15, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1135
    .local v3, accountType:Ljava/lang/String;
    const-string v1, "data_set"

    invoke-virtual {v15, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1136
    .local v4, dataSet:Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 1137
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1138
    const-string v1, " OR "

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1140
    :cond_1
    const-string v1, "(account_name=? AND account_type=?"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1142
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1143
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1145
    if-eqz v4, :cond_2

    .line 1146
    const-string v1, " AND data_set=?"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1147
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1151
    :goto_1
    const-string v1, ")"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1149
    :cond_2
    const-string v1, " AND data_set IS NULL"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1154
    .end local v2           #accountName:Ljava/lang/String;
    .end local v3           #accountType:Ljava/lang/String;
    .end local v4           #dataSet:Ljava/lang/String;
    .end local v11           #entity:Landroid/content/Entity;
    .end local v15           #values:Landroid/content/ContentValues;
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/contacts/ContactLoader$GroupQuery;->COLUMNS:[Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1158
    .local v10, cursor:Landroid/database/Cursor;
    :goto_2
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1159
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1160
    .restart local v2       #accountName:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1161
    .restart local v3       #accountType:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1162
    .restart local v4       #dataSet:Ljava/lang/String;
    const/4 v1, 0x4

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 1163
    .local v5, groupId:J
    const/4 v1, 0x5

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1164
    .local v7, title:Ljava/lang/String;
    const/4 v1, 0x6

    invoke-interface {v10, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v8, 0x0

    .line 1167
    .local v8, defaultGroup:Z
    :goto_3
    const/4 v1, 0x7

    invoke-interface {v10, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v9, 0x0

    .line 1171
    .local v9, favorites:Z
    :goto_4
    new-instance v1, Lcom/android/contacts/GroupMetaData;

    invoke-direct/range {v1 .. v9}, Lcom/android/contacts/GroupMetaData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZZ)V

    move-object/from16 v0, p1

    #calls: Lcom/android/contacts/ContactLoader$Result;->addGroupMetaData(Lcom/android/contacts/GroupMetaData;)V
    invoke-static {v0, v1}, Lcom/android/contacts/ContactLoader$Result;->access$1300(Lcom/android/contacts/ContactLoader$Result;Lcom/android/contacts/GroupMetaData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 1176
    .end local v2           #accountName:Ljava/lang/String;
    .end local v3           #accountType:Ljava/lang/String;
    .end local v4           #dataSet:Ljava/lang/String;
    .end local v5           #groupId:J
    .end local v7           #title:Ljava/lang/String;
    .end local v8           #defaultGroup:Z
    .end local v9           #favorites:Z
    :catchall_0
    move-exception v1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1164
    .restart local v2       #accountName:Ljava/lang/String;
    .restart local v3       #accountType:Ljava/lang/String;
    .restart local v4       #dataSet:Ljava/lang/String;
    .restart local v5       #groupId:J
    .restart local v7       #title:Ljava/lang/String;
    :cond_4
    const/4 v1, 0x6

    :try_start_1
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v8, 0x1

    goto :goto_3

    :cond_5
    const/4 v8, 0x0

    goto :goto_3

    .line 1167
    .restart local v8       #defaultGroup:Z
    :cond_6
    const/4 v1, 0x7

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_7

    const/4 v9, 0x1

    goto :goto_4

    :cond_7
    const/4 v9, 0x0

    goto :goto_4

    .line 1176
    .end local v2           #accountName:Ljava/lang/String;
    .end local v3           #accountType:Ljava/lang/String;
    .end local v4           #dataSet:Ljava/lang/String;
    .end local v5           #groupId:J
    .end local v7           #title:Ljava/lang/String;
    .end local v8           #defaultGroup:Z
    :cond_8
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1178
    return-void
.end method

.method private loadInvitableAccountTypes(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 8
    .parameter "contactData"

    .prologue
    .line 906
    iget-object v6, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    invoke-virtual {v6}, Lcom/android/contacts/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/contacts/model/AccountTypeManager;->getInvitableAccountTypes()Ljava/util/Map;

    move-result-object v0

    .line 908
    .local v0, allInvitables:Ljava/util/Map;,"Ljava/util/Map<Lcom/android/contacts/model/AccountTypeWithDataSet;Lcom/android/contacts/model/AccountType;>;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 925
    :goto_0
    return-void

    .line 912
    :cond_0
    invoke-static {v0}, Lcom/google/common/collect/Maps;->newHashMap(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v3

    .line 915
    .local v3, result:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/contacts/model/AccountTypeWithDataSet;Lcom/android/contacts/model/AccountType;>;"
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Entity;

    .line 916
    .local v1, entity:Landroid/content/Entity;
    invoke-virtual {v1}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v5

    .line 917
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "account_type"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "data_set"

    invoke-virtual {v5, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/contacts/model/AccountTypeWithDataSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountTypeWithDataSet;

    move-result-object v4

    .line 920
    .local v4, type:Lcom/android/contacts/model/AccountTypeWithDataSet;
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 924
    .end local v1           #entity:Landroid/content/Entity;
    .end local v4           #type:Lcom/android/contacts/model/AccountTypeWithDataSet;
    .end local v5           #values:Landroid/content/ContentValues;
    :cond_1
    #getter for: Lcom/android/contacts/ContactLoader$Result;->mInvitableAccountTypes:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/android/contacts/ContactLoader$Result;->access$800(Lcom/android/contacts/ContactLoader$Result;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private loadPhotoBinaryData(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 21
    .parameter "contactData"

    .prologue
    .line 852
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/ContactLoader$Result;->getPhotoUri()Ljava/lang/String;

    move-result-object v15

    .line 853
    .local v15, photoUri:Ljava/lang/String;
    if-eqz v15, :cond_0

    .line 855
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/contacts/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    const-string v20, "r"

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v8

    .line 857
    .local v8, fd:Landroid/content/res/AssetFileDescriptor;
    const/16 v18, 0x4000

    move/from16 v0, v18

    new-array v3, v0, [B

    .line 858
    .local v3, buffer:[B
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v9

    .line 859
    .local v9, fis:Ljava/io/FileInputStream;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 862
    .local v2, baos:Ljava/io/ByteArrayOutputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v9, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v16

    .local v16, size:I
    const/16 v18, -0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    .line 863
    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v2, v3, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 867
    .end local v16           #size:I
    :catchall_0
    move-exception v18

    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 868
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V

    throw v18
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 871
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v3           #buffer:[B
    .end local v8           #fd:Landroid/content/res/AssetFileDescriptor;
    .end local v9           #fis:Ljava/io/FileInputStream;
    :catch_0
    move-exception v18

    .line 877
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/ContactLoader$Result;->getPhotoId()J

    move-result-wide v13

    .line 878
    .local v13, photoId:J
    const-wide/16 v18, 0x0

    cmp-long v18, v13, v18

    if-gtz v18, :cond_3

    .line 898
    .end local v13           #photoId:J
    :cond_1
    :goto_1
    return-void

    .line 865
    .restart local v2       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #buffer:[B
    .restart local v8       #fd:Landroid/content/res/AssetFileDescriptor;
    .restart local v9       #fis:Ljava/io/FileInputStream;
    .restart local v16       #size:I
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    #calls: Lcom/android/contacts/ContactLoader$Result;->setPhotoBinaryData([B)V
    invoke-static {v0, v1}, Lcom/android/contacts/ContactLoader$Result;->access$700(Lcom/android/contacts/ContactLoader$Result;[B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 867
    :try_start_4
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 868
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 883
    .end local v2           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v3           #buffer:[B
    .end local v8           #fd:Landroid/content/res/AssetFileDescriptor;
    .end local v9           #fis:Ljava/io/FileInputStream;
    .end local v16           #size:I
    .restart local v13       #photoId:J
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Entity;

    .line 884
    .local v6, entity:Landroid/content/Entity;
    invoke-virtual {v6}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/Entity$NamedContentValues;

    .line 885
    .local v17, subValue:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v17

    iget-object v7, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 886
    .local v7, entryValues:Landroid/content/ContentValues;
    const-string v18, "_id"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 887
    .local v4, dataId:J
    cmp-long v18, v4, v13

    if-nez v18, :cond_5

    .line 888
    const-string v18, "mimetype"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 890
    .local v12, mimeType:Ljava/lang/String;
    const-string v18, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 893
    const-string v18, "data15"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    #calls: Lcom/android/contacts/ContactLoader$Result;->setPhotoBinaryData([B)V
    invoke-static {v0, v1}, Lcom/android/contacts/ContactLoader$Result;->access$700(Lcom/android/contacts/ContactLoader$Result;[B)V

    goto :goto_2
.end method

.method private loadRawContact(Landroid/database/Cursor;)Landroid/content/ContentValues;
    .locals 4
    .parameter "cursor"

    .prologue
    .line 985
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 987
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "_id"

    const/16 v2, 0xe

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 989
    const/16 v1, 0xf

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 990
    const/16 v1, 0x10

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 991
    const/16 v1, 0x11

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 992
    const/16 v1, 0x12

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 993
    const/16 v1, 0x13

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 994
    const/16 v1, 0x14

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 995
    const/16 v1, 0x15

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 996
    const/16 v1, 0x16

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 997
    const/16 v1, 0x17

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 998
    const/16 v1, 0x18

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 999
    const/16 v1, 0x19

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1000
    const/16 v1, 0x1a

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1001
    const/16 v1, 0xd

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1002
    const/4 v1, 0x7

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1003
    const/16 v1, 0x1b

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1004
    const/16 v1, 0x3f

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->cursorColumnToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;I)V

    .line 1006
    return-object v0
.end method

.method private loadStreamItems(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 19
    .parameter "result"

    .prologue
    .line 1184
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/ContactLoader$Result;->getLookupKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "stream_items"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1189
    .local v7, cursor:Landroid/database/Cursor;
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 1190
    .local v18, streamItemsById:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/android/contacts/util/StreamItemEntry;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1192
    .local v17, streamItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/util/StreamItemEntry;>;"
    :goto_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1193
    new-instance v13, Lcom/android/contacts/util/StreamItemEntry;

    invoke-direct {v13, v7}, Lcom/android/contacts/util/StreamItemEntry;-><init>(Landroid/database/Cursor;)V

    .line 1194
    .local v13, streamItem:Lcom/android/contacts/util/StreamItemEntry;
    invoke-virtual {v13}, Lcom/android/contacts/util/StreamItemEntry;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1198
    .end local v13           #streamItem:Lcom/android/contacts/util/StreamItemEntry;
    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1202
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1203
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1206
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/util/StreamItemEntry;

    .line 1207
    .local v8, entry:Lcom/android/contacts/util/StreamItemEntry;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$StreamItems;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Lcom/android/contacts/util/StreamItemEntry;->getId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "photo"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1214
    .local v11, siCursor:Landroid/database/Cursor;
    :goto_2
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1215
    new-instance v1, Lcom/android/contacts/util/StreamItemPhotoEntry;

    invoke-direct {v1, v11}, Lcom/android/contacts/util/StreamItemPhotoEntry;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v8, v1}, Lcom/android/contacts/util/StreamItemEntry;->addPhoto(Lcom/android/contacts/util/StreamItemPhotoEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 1218
    :catchall_1
    move-exception v1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1222
    .end local v8           #entry:Lcom/android/contacts/util/StreamItemEntry;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #siCursor:Landroid/database/Cursor;
    :cond_2
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v5, v1, [Ljava/lang/String;

    .line 1223
    .local v5, streamItemIdArr:[Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 1224
    .local v16, streamItemPhotoSelection:Ljava/lang/StringBuilder;
    const-string v1, "stream_item_id IN ("

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1225
    const/4 v9, 0x0

    .local v9, i:I
    :goto_3
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v9, v1, :cond_4

    .line 1226
    if-lez v9, :cond_3

    .line 1227
    const-string v1, ","

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1229
    :cond_3
    const-string v1, "?"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1230
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/util/StreamItemEntry;

    invoke-virtual {v1}, Lcom/android/contacts/util/StreamItemEntry;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v9

    .line 1225
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1232
    :cond_4
    const-string v1, ")"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1233
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    invoke-virtual {v1}, Lcom/android/contacts/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$StreamItems;->CONTENT_PHOTO_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "stream_item_id"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1238
    .local v12, sipCursor:Landroid/database/Cursor;
    :goto_4
    :try_start_2
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1239
    const-string v1, "stream_item_id"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 1241
    .local v14, streamItemId:J
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/contacts/util/StreamItemEntry;

    .line 1242
    .restart local v13       #streamItem:Lcom/android/contacts/util/StreamItemEntry;
    new-instance v1, Lcom/android/contacts/util/StreamItemPhotoEntry;

    invoke-direct {v1, v12}, Lcom/android/contacts/util/StreamItemPhotoEntry;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v13, v1}, Lcom/android/contacts/util/StreamItemEntry;->addPhoto(Lcom/android/contacts/util/StreamItemPhotoEntry;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    .line 1245
    .end local v13           #streamItem:Lcom/android/contacts/util/StreamItemEntry;
    .end local v14           #streamItemId:J
    :catchall_2
    move-exception v1

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_5
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1251
    .end local v5           #streamItemIdArr:[Ljava/lang/String;
    .end local v9           #i:I
    .end local v12           #sipCursor:Landroid/database/Cursor;
    .end local v16           #streamItemPhotoSelection:Ljava/lang/StringBuilder;
    :cond_6
    invoke-static/range {v17 .. v17}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1252
    #getter for: Lcom/android/contacts/ContactLoader$Result;->mStreamItems:Ljava/util/ArrayList;
    invoke-static/range {p1 .. p1}, Lcom/android/contacts/ContactLoader$Result;->access$1400(Lcom/android/contacts/ContactLoader$Result;)Ljava/util/ArrayList;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1253
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/contacts/ContactLoader$Result;
    .locals 7
    .parameter "args"

    .prologue
    .line 731
    :try_start_0
    iget-object v4, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 732
    .local v1, resolver:Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    #getter for: Lcom/android/contacts/ContactLoader;->mLookupUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/android/contacts/ContactLoader;->access$000(Lcom/android/contacts/ContactLoader;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/android/contacts/ContactLoader$LoadContactTask;->ensureIsContactUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 733
    .local v3, uriCurrentFormat:Landroid/net/Uri;
    invoke-direct {p0, v1, v3}, Lcom/android/contacts/ContactLoader$LoadContactTask;->loadContactEntity(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v2

    .line 734
    .local v2, result:Lcom/android/contacts/ContactLoader$Result;
    invoke-virtual {v2}, Lcom/android/contacts/ContactLoader$Result;->isNotFound()Z

    move-result v4

    if-nez v4, :cond_2

    .line 735
    invoke-virtual {v2}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 736
    invoke-direct {p0, v2}, Lcom/android/contacts/ContactLoader$LoadContactTask;->loadDirectoryMetaData(Lcom/android/contacts/ContactLoader$Result;)V

    .line 740
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    #getter for: Lcom/android/contacts/ContactLoader;->mLoadStreamItems:Z
    invoke-static {v4}, Lcom/android/contacts/ContactLoader;->access$200(Lcom/android/contacts/ContactLoader;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 741
    invoke-direct {p0, v2}, Lcom/android/contacts/ContactLoader$LoadContactTask;->loadStreamItems(Lcom/android/contacts/ContactLoader$Result;)V

    .line 743
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/contacts/ContactLoader$LoadContactTask;->loadPhotoBinaryData(Lcom/android/contacts/ContactLoader$Result;)V

    .line 744
    invoke-direct {p0, v2}, Lcom/android/contacts/ContactLoader$LoadContactTask;->loadBlackListData(Lcom/android/contacts/ContactLoader$Result;)V

    .line 747
    iget-object v4, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    #getter for: Lcom/android/contacts/ContactLoader;->mLoadInvitableAccountTypes:Z
    invoke-static {v4}, Lcom/android/contacts/ContactLoader;->access$300(Lcom/android/contacts/ContactLoader;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v4

    if-nez v4, :cond_2

    .line 748
    invoke-direct {p0, v2}, Lcom/android/contacts/ContactLoader$LoadContactTask;->loadInvitableAccountTypes(Lcom/android/contacts/ContactLoader$Result;)V

    .line 754
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v2           #result:Lcom/android/contacts/ContactLoader$Result;
    .end local v3           #uriCurrentFormat:Landroid/net/Uri;
    :cond_2
    :goto_1
    return-object v2

    .line 737
    .restart local v1       #resolver:Landroid/content/ContentResolver;
    .restart local v2       #result:Lcom/android/contacts/ContactLoader$Result;
    .restart local v3       #uriCurrentFormat:Landroid/net/Uri;
    :cond_3
    iget-object v4, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    #getter for: Lcom/android/contacts/ContactLoader;->mLoadGroupMetaData:Z
    invoke-static {v4}, Lcom/android/contacts/ContactLoader;->access$100(Lcom/android/contacts/ContactLoader;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 738
    invoke-direct {p0, v2}, Lcom/android/contacts/ContactLoader$LoadContactTask;->loadGroupMetaData(Lcom/android/contacts/ContactLoader$Result;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 752
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v2           #result:Lcom/android/contacts/ContactLoader$Result;
    .end local v3           #uriCurrentFormat:Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 753
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "ContactLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error loading the contact: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    #getter for: Lcom/android/contacts/ContactLoader;->mLookupUri:Landroid/net/Uri;
    invoke-static {v6}, Lcom/android/contacts/ContactLoader;->access$000(Lcom/android/contacts/ContactLoader;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 754
    iget-object v4, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    #getter for: Lcom/android/contacts/ContactLoader;->mRequestedUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/android/contacts/ContactLoader;->access$400(Lcom/android/contacts/ContactLoader;)Landroid/net/Uri;

    move-result-object v4

    #calls: Lcom/android/contacts/ContactLoader$Result;->forError(Landroid/net/Uri;Ljava/lang/Exception;)Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v4, v0}, Lcom/android/contacts/ContactLoader$Result;->access$500(Landroid/net/Uri;Ljava/lang/Exception;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v2

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 726
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->doInBackground([Ljava/lang/Void;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 4
    .parameter "result"

    .prologue
    const/4 v3, 0x1

    .line 1257
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    #calls: Lcom/android/contacts/ContactLoader;->unregisterObserver()V
    invoke-static {v0}, Lcom/android/contacts/ContactLoader;->access$1500(Lcom/android/contacts/ContactLoader;)V

    .line 1260
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    #getter for: Lcom/android/contacts/ContactLoader;->mDestroyed:Z
    invoke-static {v0}, Lcom/android/contacts/ContactLoader;->access$1600(Lcom/android/contacts/ContactLoader;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 1294
    :cond_0
    :goto_0
    return-void

    .line 1264
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    #setter for: Lcom/android/contacts/ContactLoader;->mContact:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v0, p1}, Lcom/android/contacts/ContactLoader;->access$1702(Lcom/android/contacts/ContactLoader;Lcom/android/contacts/ContactLoader$Result;)Lcom/android/contacts/ContactLoader$Result;

    .line 1266
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1267
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getLookupUri()Landroid/net/Uri;

    move-result-object v1

    #setter for: Lcom/android/contacts/ContactLoader;->mLookupUri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/android/contacts/ContactLoader;->access$002(Lcom/android/contacts/ContactLoader;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1269
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1270
    const-string v0, "ContactLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registering content observer for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    #getter for: Lcom/android/contacts/ContactLoader;->mLookupUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/contacts/ContactLoader;->access$000(Lcom/android/contacts/ContactLoader;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    #getter for: Lcom/android/contacts/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;
    invoke-static {v0}, Lcom/android/contacts/ContactLoader;->access$1800(Lcom/android/contacts/ContactLoader;)Landroid/content/Loader$ForceLoadContentObserver;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1272
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    new-instance v1, Landroid/content/Loader$ForceLoadContentObserver;

    iget-object v2, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    invoke-direct {v1, v2}, Landroid/content/Loader$ForceLoadContentObserver;-><init>(Landroid/content/Loader;)V

    #setter for: Lcom/android/contacts/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;
    invoke-static {v0, v1}, Lcom/android/contacts/ContactLoader;->access$1802(Lcom/android/contacts/ContactLoader;Landroid/content/Loader$ForceLoadContentObserver;)Landroid/content/Loader$ForceLoadContentObserver;

    .line 1274
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    #getter for: Lcom/android/contacts/ContactLoader;->mLookupUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/contacts/ContactLoader;->access$000(Lcom/android/contacts/ContactLoader;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    #getter for: Lcom/android/contacts/ContactLoader;->mObserver:Landroid/content/Loader$ForceLoadContentObserver;
    invoke-static {v2}, Lcom/android/contacts/ContactLoader;->access$1800(Lcom/android/contacts/ContactLoader;)Landroid/content/Loader$ForceLoadContentObserver;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1277
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    #getter for: Lcom/android/contacts/ContactLoader;->mObserverBlack:Landroid/content/Loader$ForceLoadContentObserver;
    invoke-static {v0}, Lcom/android/contacts/ContactLoader;->access$1900(Lcom/android/contacts/ContactLoader;)Landroid/content/Loader$ForceLoadContentObserver;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1278
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    new-instance v1, Landroid/content/Loader$ForceLoadContentObserver;

    iget-object v2, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    invoke-direct {v1, v2}, Landroid/content/Loader$ForceLoadContentObserver;-><init>(Landroid/content/Loader;)V

    #setter for: Lcom/android/contacts/ContactLoader;->mObserverBlack:Landroid/content/Loader$ForceLoadContentObserver;
    invoke-static {v0, v1}, Lcom/android/contacts/ContactLoader;->access$1902(Lcom/android/contacts/ContactLoader;Landroid/content/Loader$ForceLoadContentObserver;)Landroid/content/Loader$ForceLoadContentObserver;

    .line 1280
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/contacts/ContactLoader$BlackQuery;->BlACK_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    #getter for: Lcom/android/contacts/ContactLoader;->mObserverBlack:Landroid/content/Loader$ForceLoadContentObserver;
    invoke-static {v2}, Lcom/android/contacts/ContactLoader;->access$1900(Lcom/android/contacts/ContactLoader;)Landroid/content/Loader$ForceLoadContentObserver;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1284
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    #getter for: Lcom/android/contacts/ContactLoader;->mContact:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v0}, Lcom/android/contacts/ContactLoader;->access$1700(Lcom/android/contacts/ContactLoader;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->getPhotoBinaryData()[B

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    #getter for: Lcom/android/contacts/ContactLoader;->mContact:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v0}, Lcom/android/contacts/ContactLoader;->access$1700(Lcom/android/contacts/ContactLoader;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->getPhotoUri()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1285
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    #getter for: Lcom/android/contacts/ContactLoader;->mContact:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v0}, Lcom/android/contacts/ContactLoader;->access$1700(Lcom/android/contacts/ContactLoader;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v0

    #calls: Lcom/android/contacts/ContactLoader$Result;->setLoadingPhoto(Z)V
    invoke-static {v0, v3}, Lcom/android/contacts/ContactLoader$Result;->access$2000(Lcom/android/contacts/ContactLoader$Result;Z)V

    .line 1286
    new-instance v0, Lcom/android/contacts/ContactLoader$AsyncPhotoLoader;

    iget-object v1, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/ContactLoader$AsyncPhotoLoader;-><init>(Lcom/android/contacts/ContactLoader;Lcom/android/contacts/ContactLoader$1;)V

    new-array v1, v3, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    #getter for: Lcom/android/contacts/ContactLoader;->mContact:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v3}, Lcom/android/contacts/ContactLoader;->access$1700(Lcom/android/contacts/ContactLoader;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/ContactLoader$Result;->getPhotoUri()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactLoader$AsyncPhotoLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1290
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    #calls: Lcom/android/contacts/ContactLoader;->postViewNotificationToSyncAdapter()V
    invoke-static {v0}, Lcom/android/contacts/ContactLoader;->access$2200(Lcom/android/contacts/ContactLoader;)V

    .line 1293
    :cond_6
    iget-object v0, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    iget-object v1, p0, Lcom/android/contacts/ContactLoader$LoadContactTask;->this$0:Lcom/android/contacts/ContactLoader;

    #getter for: Lcom/android/contacts/ContactLoader;->mContact:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v1}, Lcom/android/contacts/ContactLoader;->access$1700(Lcom/android/contacts/ContactLoader;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactLoader;->deliverResult(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 726
    check-cast p1, Lcom/android/contacts/ContactLoader$Result;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/ContactLoader$LoadContactTask;->onPostExecute(Lcom/android/contacts/ContactLoader$Result;)V

    return-void
.end method

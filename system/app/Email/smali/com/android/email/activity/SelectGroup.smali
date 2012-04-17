.class public Lcom/android/email/activity/SelectGroup;
.super Landroid/app/Activity;
.source "SelectGroup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/SelectGroup$GroupItemView;,
        Lcom/android/email/activity/SelectGroup$GroupListAdapter;
    }
.end annotation


# instance fields
.field private SYSTEM_GROUP:Ljava/lang/String;

.field private confirmHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mGroupListAdapter:Lcom/android/email/activity/SelectGroup$GroupListAdapter;

.field private mGroupNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mList:Landroid/widget/ListView;

.field private mProgress:I

.field private mSelectedContactId:[J

.field private mSelectedGroupName:Ljava/lang/String;

.field private rpAddressList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rpPersonalList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 133
    const-string v0, "System Group: "

    iput-object v0, p0, Lcom/android/email/activity/SelectGroup;->SYSTEM_GROUP:Ljava/lang/String;

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/SelectGroup;->mSelectedContactId:[J

    .line 169
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/SelectGroup;->mProgress:I

    .line 343
    new-instance v0, Lcom/android/email/activity/SelectGroup$1;

    invoke-direct {v0, p0}, Lcom/android/email/activity/SelectGroup$1;-><init>(Lcom/android/email/activity/SelectGroup;)V

    iput-object v0, p0, Lcom/android/email/activity/SelectGroup;->confirmHandler:Landroid/os/Handler;

    .line 1075
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/SelectGroup;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/email/activity/SelectGroup;->saveToContact(Landroid/app/ProgressDialog;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/SelectGroup;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/email/activity/SelectGroup;->confirmHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/SelectGroup;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/email/activity/SelectGroup;->createGroup(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/email/activity/SelectGroup;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/email/activity/SelectGroup;->isExistGroup(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/SelectGroup;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/email/activity/SelectGroup;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private createGroup(Ljava/lang/String;)V
    .locals 10
    .parameter "title"

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleted=0 AND title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 651
    .local v3, where:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/email/activity/SelectGroup;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "_id"

    aput-object v8, v2, v5

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 659
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 661
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 663
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 665
    .local v7, groupValues:Landroid/content/ContentValues;
    const-string v0, "title"

    invoke-virtual {v7, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    const-string v0, "group_visible"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 677
    invoke-virtual {p0}, Lcom/android/email/activity/SelectGroup;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 679
    iget-object v0, p0, Lcom/android/email/activity/SelectGroup;->mGroupNameList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 681
    iget-object v0, p0, Lcom/android/email/activity/SelectGroup;->mGroupListAdapter:Lcom/android/email/activity/SelectGroup$GroupListAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/SelectGroup$GroupListAdapter;->notifyDataSetChanged()V

    .line 689
    .end local v7           #groupValues:Landroid/content/ContentValues;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 693
    return-void
.end method

.method private getInsertValue(JLjava/lang/String;)Landroid/content/ContentValues;
    .locals 3
    .parameter "contactId"
    .parameter "title"

    .prologue
    .line 743
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 745
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "account_name"

    const-string v2, "vnd.sec.contact.agg.account_name"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    const-string v1, "account_type"

    const-string v2, "vnd.sec.contact.agg.account_type"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    const-string v1, "title"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    const-string v1, "contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 755
    const-string v1, "data1"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 757
    return-object v0
.end method

.method private groupListFromContact()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 233
    invoke-virtual {p0}, Lcom/android/email/activity/SelectGroup;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "title"

    aput-object v5, v2, v3

    const/4 v3, 0x2

    const-string v5, "account_type"

    aput-object v5, v2, v3

    const-string v3, "account_type like \'vnd.sec.contact.phone\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 241
    .local v6, groupCursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/SelectGroup;->mGroupNameList:Ljava/util/ArrayList;

    .line 247
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v7, v0, :cond_1

    .line 251
    const-string v0, "title"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 255
    .local v8, temp:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/email/activity/SelectGroup;->SYSTEM_GROUP:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/email/activity/SelectGroup;->SYSTEM_GROUP:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/SelectGroup;->mGroupNameList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 247
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 269
    .end local v8           #temp:Ljava/lang/String;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 271
    return-void
.end method

.method private insertContact(Ljava/lang/String;Ljava/lang/String;)V
    .locals 20
    .parameter "emailAddr"
    .parameter "emailName"

    .prologue
    .line 827
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 829
    .local v14, mOperationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 831
    .local v15, mStringBuilder:Ljava/lang/StringBuilder;
    const/16 v19, 0x0

    .line 835
    .local v19, result:[Landroid/content/ContentProviderResult;
    const/4 v10, 0x0

    .line 837
    .local v10, i:I
    const/4 v5, 0x0

    .line 841
    .local v5, selectionArgs:[Ljava/lang/String;
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 845
    .local v18, rawContactIdIndex:I
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 857
    .local v7, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v1, "sourceid"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 861
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 867
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 869
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 871
    const-string v1, "raw_contact_id"

    move/from16 v0, v18

    invoke-virtual {v7, v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 873
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 875
    const-string v1, "data2"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 877
    const-string v1, "data1"

    move-object/from16 v0, p1

    invoke-virtual {v7, v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 881
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 885
    :cond_0
    if-eqz p2, :cond_1

    .line 887
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 891
    const-string v1, "raw_contact_id"

    move/from16 v0, v18

    invoke-virtual {v7, v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 895
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/name"

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 899
    const-string v1, "data1"

    move-object/from16 v0, p2

    invoke-virtual {v7, v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 903
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 913
    :cond_1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/SelectGroup;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.android.contacts"

    invoke-virtual {v1, v2, v14}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v19

    .line 915
    aget-object v1, v19, v18

    iget-object v1, v1, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v16

    .line 919
    .local v16, rawContactId:J
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-array v5, v1, [Ljava/lang/String;

    .line 921
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v10
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 941
    .end local v16           #rawContactId:J
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 943
    const-string v1, "_id IN("

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 947
    const/4 v11, 0x0

    .local v11, j:I
    :goto_1
    array-length v1, v5

    if-ge v11, v1, :cond_3

    .line 949
    if-eqz v11, :cond_2

    .line 951
    const/16 v1, 0x2c

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 955
    :cond_2
    const/16 v1, 0x3f

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 947
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 925
    .end local v11           #j:I
    :catch_0
    move-exception v9

    .line 927
    .local v9, e:Landroid/os/RemoteException;
    const-string v1, "insertContact"

    const-string v2, "%s: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v9}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v9}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 929
    .end local v9           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v9

    .line 931
    .local v9, e:Landroid/content/OperationApplicationException;
    const-string v1, "insertContact"

    const-string v2, "%s: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v9}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v9}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 959
    .end local v9           #e:Landroid/content/OperationApplicationException;
    .restart local v11       #j:I
    :cond_3
    const/16 v1, 0x29

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 963
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/SelectGroup;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "contact_id"

    aput-object v6, v3, v4

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 969
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 971
    .local v12, l:I
    array-length v1, v5

    new-array v1, v1, [J

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/email/activity/SelectGroup;->mSelectedContactId:[J

    move v13, v12

    .line 975
    .end local v12           #l:I
    .local v13, l:I
    :goto_2
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 977
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/SelectGroup;->mSelectedContactId:[J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v12, v13, 0x1

    .end local v13           #l:I
    .restart local v12       #l:I
    const/4 v2, 0x0

    :try_start_2
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    aput-wide v2, v1, v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v13, v12

    .end local v12           #l:I
    .restart local v13       #l:I
    goto :goto_2

    .line 985
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 991
    return-void

    .line 985
    :catchall_0
    move-exception v1

    move v12, v13

    .end local v13           #l:I
    .restart local v12       #l:I
    :goto_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    :catchall_1
    move-exception v1

    goto :goto_3
.end method

.method private isExistContact(Ljava/lang/String;)J
    .locals 13
    .parameter "emailData"

    .prologue
    const/4 v4, 0x0

    const/4 v12, 0x0

    .line 765
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 773
    .local v3, where:Ljava/lang/String;
    const-wide/16 v6, -0x1

    .line 775
    .local v6, contactId:J
    invoke-virtual {p0}, Lcom/android/email/activity/SelectGroup;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "raw_contact_id"

    aput-object v5, v2, v12

    const/4 v5, 0x1

    const-string v12, "data1"

    aput-object v12, v2, v5

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 781
    .local v10, cursor:Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 785
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 787
    const-string v0, "raw_contact_id"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 791
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/email/activity/SelectGroup;->mSelectedContactId:[J

    .line 793
    iget-object v0, p0, Lcom/android/email/activity/SelectGroup;->mSelectedContactId:[J

    const/4 v1, 0x0

    aput-wide v6, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 815
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move-wide v8, v6

    .end local v6           #contactId:J
    .local v8, contactId:J
    :goto_0
    return-wide v8

    .end local v8           #contactId:J
    .restart local v6       #contactId:J
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move-wide v8, v6

    .end local v6           #contactId:J
    .restart local v8       #contactId:J
    goto :goto_0

    .line 803
    .end local v8           #contactId:J
    .restart local v6       #contactId:J
    :catch_0
    move-exception v11

    .line 807
    .local v11, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "Email/SelectGroup isExistContact"

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 815
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move-wide v8, v6

    .end local v6           #contactId:J
    .restart local v8       #contactId:J
    goto :goto_0

    .end local v8           #contactId:J
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v6       #contactId:J
    :catchall_0
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private isExistGroup(Ljava/lang/String;)Z
    .locals 9
    .parameter "title"

    .prologue
    const/4 v4, 0x0

    .line 611
    const/4 v7, 0x0

    .line 613
    .local v7, retVal:Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleted=0 AND title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 618
    .local v3, where:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/email/activity/SelectGroup;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "_id"

    aput-object v8, v2, v5

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 626
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 627
    const/4 v7, 0x1

    .line 631
    :goto_0
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 632
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 634
    :cond_0
    return v7

    .line 629
    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private progressDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 403
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 407
    .local v0, progDialog:Landroid/app/ProgressDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 409
    iget-object v1, p0, Lcom/android/email/activity/SelectGroup;->mContext:Landroid/content/Context;

    const v2, 0x7f080504

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 411
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 413
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 415
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 419
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/email/activity/SelectGroup$2;

    invoke-direct {v2, p0, v0}, Lcom/android/email/activity/SelectGroup$2;-><init>(Lcom/android/email/activity/SelectGroup;Landroid/app/ProgressDialog;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 451
    return-void
.end method

.method private saveGroups(Ljava/lang/String;)V
    .locals 7
    .parameter "GroupName"

    .prologue
    .line 701
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 703
    .local v3, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v5, p0, Lcom/android/email/activity/SelectGroup;->mSelectedContactId:[J

    array-length v5, v5

    if-ge v2, v5, :cond_0

    .line 705
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "group_membership"

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 713
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    iget-object v5, p0, Lcom/android/email/activity/SelectGroup;->mSelectedContactId:[J

    aget-wide v5, v5, v2

    invoke-direct {p0, v5, v6, p1}, Lcom/android/email/activity/SelectGroup;->getInsertValue(JLjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v4

    .line 715
    .local v4, values:Landroid/content/ContentValues;
    invoke-virtual {v0, v4}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 717
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 703
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 723
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/SelectGroup;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "com.android.contacts"

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 737
    :goto_1
    return-void

    .line 725
    :catch_0
    move-exception v1

    .line 727
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 729
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 731
    .local v1, e:Landroid/content/OperationApplicationException;
    invoke-virtual {v1}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_1
.end method

.method private saveToContact(Landroid/app/ProgressDialog;)V
    .locals 5
    .parameter "progDialog"

    .prologue
    .line 361
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/email/activity/SelectGroup;->rpAddressList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 363
    iget-object v3, p0, Lcom/android/email/activity/SelectGroup;->rpAddressList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/email/activity/SelectGroup;->rpAddressList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 365
    iget-object v3, p0, Lcom/android/email/activity/SelectGroup;->rpAddressList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/email/activity/SelectGroup;->isExistContact(Ljava/lang/String;)J

    move-result-wide v1

    .local v1, temp:J
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    .line 367
    iget-object v3, p0, Lcom/android/email/activity/SelectGroup;->rpAddressList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/email/activity/SelectGroup;->rpPersonalList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/email/activity/SelectGroup;->insertContact(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    :cond_0
    iget-object v3, p0, Lcom/android/email/activity/SelectGroup;->mSelectedGroupName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/email/activity/SelectGroup;->saveGroups(Ljava/lang/String;)V

    .line 381
    if-eqz p1, :cond_1

    .line 383
    iget v3, p0, Lcom/android/email/activity/SelectGroup;->mProgress:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/email/activity/SelectGroup;->mProgress:I

    .line 385
    iget v3, p0, Lcom/android/email/activity/SelectGroup;->mProgress:I

    mul-int/lit8 v3, v3, 0x64

    iget-object v4, p0, Lcom/android/email/activity/SelectGroup;->rpAddressList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    div-int/2addr v3, v4

    invoke-virtual {p1, v3}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 361
    .end local v1           #temp:J
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 397
    :cond_2
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 175
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 177
    const v1, 0x7f040085

    invoke-virtual {p0, v1}, Lcom/android/email/activity/SelectGroup;->setContentView(I)V

    .line 181
    iput-object p0, p0, Lcom/android/email/activity/SelectGroup;->mContext:Landroid/content/Context;

    .line 183
    const v1, 0x7f08006d

    invoke-virtual {p0, v1}, Lcom/android/email/activity/SelectGroup;->setTitle(I)V

    .line 187
    invoke-direct {p0}, Lcom/android/email/activity/SelectGroup;->groupListFromContact()V

    .line 191
    new-instance v1, Lcom/android/email/activity/SelectGroup$GroupListAdapter;

    const v2, 0x7f04005b

    iget-object v3, p0, Lcom/android/email/activity/SelectGroup;->mGroupNameList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, p0, v2, v3}, Lcom/android/email/activity/SelectGroup$GroupListAdapter;-><init>(Lcom/android/email/activity/SelectGroup;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/email/activity/SelectGroup;->mGroupListAdapter:Lcom/android/email/activity/SelectGroup$GroupListAdapter;

    .line 195
    const v1, 0x7f1001dd

    invoke-virtual {p0, v1}, Lcom/android/email/activity/SelectGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/email/activity/SelectGroup;->mList:Landroid/widget/ListView;

    .line 197
    iget-object v1, p0, Lcom/android/email/activity/SelectGroup;->mList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/email/activity/SelectGroup;->mGroupListAdapter:Lcom/android/email/activity/SelectGroup$GroupListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 201
    iget-object v1, p0, Lcom/android/email/activity/SelectGroup;->mList:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 203
    iget-object v1, p0, Lcom/android/email/activity/SelectGroup;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 219
    invoke-virtual {p0}, Lcom/android/email/activity/SelectGroup;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 221
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "rpPersonalList"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/SelectGroup;->rpPersonalList:Ljava/util/ArrayList;

    .line 223
    const-string v1, "rpAddressList"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/SelectGroup;->rpAddressList:Ljava/util/ArrayList;

    .line 227
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 457
    const v0, 0x7f08030f

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 459
    const v0, 0x7f080042

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 461
    return v2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "arg1"
    .parameter "pos"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 283
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/email/activity/SelectGroup;->mList:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/email/activity/SelectGroup;->mGroupNameList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/activity/SelectGroup;->mSelectedGroupName:Ljava/lang/String;

    .line 327
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v7, -0x1

    const/16 v2, 0xa

    const/4 v5, 0x0

    .line 469
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 471
    .local v1, EdText:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 473
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 477
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 603
    :goto_0
    return v5

    .line 481
    :pswitch_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 483
    .local v0, alertDialog:Landroid/app/AlertDialog;
    iget-object v3, p0, Lcom/android/email/activity/SelectGroup;->mContext:Landroid/content/Context;

    const v4, 0x7f08006f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 487
    const/4 v3, 0x5

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 491
    const v2, 0x7f080042

    invoke-virtual {p0, v2}, Lcom/android/email/activity/SelectGroup;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/email/activity/SelectGroup$3;

    invoke-direct {v3, p0, v1}, Lcom/android/email/activity/SelectGroup$3;-><init>(Lcom/android/email/activity/SelectGroup;Landroid/widget/EditText;)V

    invoke-virtual {v0, v7, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 515
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 517
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 521
    new-instance v6, Lcom/android/email/activity/SelectGroup$4;

    invoke-direct {v6, p0, v0}, Lcom/android/email/activity/SelectGroup$4;-><init>(Lcom/android/email/activity/SelectGroup;Landroid/app/AlertDialog;)V

    .line 575
    .local v6, watcher:Landroid/text/TextWatcher;
    invoke-virtual {v1, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    .line 585
    .end local v0           #alertDialog:Landroid/app/AlertDialog;
    .end local v6           #watcher:Landroid/text/TextWatcher;
    :pswitch_1
    iget-object v3, p0, Lcom/android/email/activity/SelectGroup;->rpAddressList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v2, :cond_0

    .line 587
    invoke-direct {p0}, Lcom/android/email/activity/SelectGroup;->progressDialog()V

    goto :goto_0

    .line 591
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/email/activity/SelectGroup;->saveToContact(Landroid/app/ProgressDialog;)V

    .line 593
    invoke-virtual {p0}, Lcom/android/email/activity/SelectGroup;->onBackPressed()V

    goto :goto_0

    .line 477
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

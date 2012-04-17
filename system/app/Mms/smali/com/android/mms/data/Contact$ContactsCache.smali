.class public Lcom/android/mms/data/Contact$ContactsCache;
.super Ljava/lang/Object;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/data/Contact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactsCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/data/Contact$ContactsCache$TaskStack;
    }
.end annotation


# static fields
.field private static final CALLER_ID_PROJECTION:[Ljava/lang/String;

.field private static final EMAIL_PROJECTION:[Ljava/lang/String;

.field private static final EMAIL_WITH_PRESENCE_URI:Landroid/net/Uri;

.field private static final PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

.field private static sInstance:Lcom/android/mms/data/Contact$ContactsCache;

.field static sStaticKeyBuffer:Ljava/nio/CharBuffer;


# instance fields
.field private final mContactsHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/data/Contact;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mTaskQueue:Lcom/android/mms/data/Contact$ContactsCache$TaskStack;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 568
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    .line 569
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "data1"

    aput-object v1, v0, v4

    const-string v1, "data3"

    aput-object v1, v0, v5

    const-string v1, "display_name"

    aput-object v1, v0, v6

    const-string v1, "contact_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contact_status"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data4"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    .line 588
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->EMAIL_WITH_PRESENCE_URI:Landroid/net/Uri;

    .line 592
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "data4"

    aput-object v1, v0, v3

    const-string v1, "contact_presence"

    aput-object v1, v0, v4

    const-string v1, "contact_id"

    aput-object v1, v0, v5

    const-string v1, "display_name"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->EMAIL_PROJECTION:[Ljava/lang/String;

    .line 1242
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->sStaticKeyBuffer:Ljava/nio/CharBuffer;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 605
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 545
    new-instance v0, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;

    invoke-direct {v0}, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mTaskQueue:Lcom/android/mms/data/Contact$ContactsCache$TaskStack;

    .line 603
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    .line 606
    iput-object p1, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    .line 607
    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/data/Contact$ContactsCache;Lcom/android/mms/data/Contact;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 543
    invoke-direct {p0, p1, p2}, Lcom/android/mms/data/Contact$ContactsCache;->updateContact(Lcom/android/mms/data/Contact;Z)V

    return-void
.end method

.method private checkContactProviderAvailible()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 887
    const/4 v7, 0x0

    .line 891
    .local v7, status:I
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$ProviderStatus;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "status"

    aput-object v4, v2, v8

    const-string v4, "data1"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 897
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 898
    const-string v0, "Mms/ContactsCache"

    const-string v1, "checkContactProviderAvailible getContentResolver is NULL cursor!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v8

    .line 925
    :goto_0
    return v0

    .line 906
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 907
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 910
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 912
    packed-switch v7, :pswitch_data_0

    .line 920
    const-string v0, "Mms/ContactsCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Contact DB busy!!!. checkContactQueryAvailible : status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v8

    .line 923
    goto :goto_0

    .line 910
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :pswitch_0
    move v0, v9

    .line 925
    goto :goto_0

    .line 912
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private contactChanged(Lcom/android/mms/data/Contact;Lcom/android/mms/data/Contact;)Z
    .locals 11
    .parameter "orig"
    .parameter "newContactData"

    .prologue
    const/4 v6, 0x1

    .line 724
    #getter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$400(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/android/mms/data/Contact;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v7}, Lcom/android/mms/data/Contact;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 725
    .local v4, oldName:Ljava/lang/String;
    #getter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$400(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/android/mms/data/Contact;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v7}, Lcom/android/mms/data/Contact;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 727
    .local v1, newName:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->isNumberModified()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 729
    const-string v7, "Mms/ContactsCache"

    const-string v8, "org number modified"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    :goto_0
    return v6

    .line 732
    :cond_0
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 733
    const-string v7, "Mms/ContactsCache"

    const-string v8, "name changed"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 738
    :cond_1
    #getter for: Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$600(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/android/mms/data/Contact;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v7}, Lcom/android/mms/data/Contact;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 739
    .local v3, oldLabel:Ljava/lang/String;
    #getter for: Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$600(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/android/mms/data/Contact;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v7}, Lcom/android/mms/data/Contact;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 740
    .local v0, newLabel:Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 741
    const-string v7, "Mms/ContactsCache"

    const-string v8, "label changed"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 746
    :cond_2
    #getter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$700(Lcom/android/mms/data/Contact;)J

    move-result-wide v7

    #getter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$700(Lcom/android/mms/data/Contact;)J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-eqz v7, :cond_3

    .line 747
    const-string v7, "Mms/ContactsCache"

    const-string v8, "person id changed"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 750
    :cond_3
    #getter for: Lcom/android/mms/data/Contact;->mPresenceResId:I
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$800(Lcom/android/mms/data/Contact;)I

    move-result v7

    #getter for: Lcom/android/mms/data/Contact;->mPresenceResId:I
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$800(Lcom/android/mms/data/Contact;)I

    move-result v8

    if-eq v7, v8, :cond_4

    .line 751
    const-string v7, "Mms/ContactsCache"

    const-string v8, "presence changed"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 754
    :cond_4
    #getter for: Lcom/android/mms/data/Contact;->mAvatarData:[B
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$900(Lcom/android/mms/data/Contact;)[B

    move-result-object v7

    #getter for: Lcom/android/mms/data/Contact;->mAvatarData:[B
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$900(Lcom/android/mms/data/Contact;)[B

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-nez v7, :cond_5

    .line 755
    const-string v7, "Mms/ContactsCache"

    const-string v8, "avatar changed"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 765
    :cond_5
    #getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1000(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/android/mms/data/Contact;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v7}, Lcom/android/mms/data/Contact;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 766
    .local v5, oldNumber:Ljava/lang/String;
    #getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$1000(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/android/mms/data/Contact;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v7}, Lcom/android/mms/data/Contact;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 767
    .local v2, newNumber:Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 768
    const-string v7, "Mms/ContactsCache"

    const-string v8, "name changed"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 773
    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method private fillPhoneTypeContact(Lcom/android/mms/data/Contact;Landroid/database/Cursor;)V
    .locals 3
    .parameter "entry"
    .parameter "cursor"

    .prologue
    .line 1044
    monitor-enter p1

    .line 1045
    const/4 v1, 0x2

    :try_start_0
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/android/mms/data/Contact;->access$602(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1046
    const/4 v1, 0x3

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/android/mms/data/Contact;->access$402(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1047
    const/4 v1, 0x4

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    #setter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {p1, v1, v2}, Lcom/android/mms/data/Contact;->access$702(Lcom/android/mms/data/Contact;J)J

    .line 1048
    const/4 v1, 0x5

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/mms/data/Contact$ContactsCache;->getStatusIconResourceId(I)I

    move-result v1

    #setter for: Lcom/android/mms/data/Contact;->mPresenceResId:I
    invoke-static {p1, v1}, Lcom/android/mms/data/Contact;->access$802(Lcom/android/mms/data/Contact;I)I

    .line 1050
    const/4 v1, 0x6

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/mms/data/Contact;->mPresenceText:Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/android/mms/data/Contact;->access$1102(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1051
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1052
    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->loadAvatarData(Lcom/android/mms/data/Contact;)[B

    move-result-object v0

    .line 1053
    .local v0, data:[B
    monitor-enter p1

    .line 1054
    :try_start_1
    #setter for: Lcom/android/mms/data/Contact;->mAvatarData:[B
    invoke-static {p1, v0}, Lcom/android/mms/data/Contact;->access$902(Lcom/android/mms/data/Contact;[B)[B

    .line 1055
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1056
    return-void

    .line 1051
    .end local v0           #data:[B
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1055
    .restart local v0       #data:[B
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private getContactInfoForEmailAddress(Ljava/lang/String;)Lcom/android/mms/data/Contact;
    .locals 13
    .parameter "email"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v12, 0x0

    .line 1165
    const-string v0, "Mms/ContactsCache"

    const-string v1, "getContactInfoForEmailAddress"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    new-instance v9, Lcom/android/mms/data/Contact;

    invoke-direct {v9, p1, v6}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;Lcom/android/mms/data/Contact$1;)V

    .line 1167
    .local v9, entry:Lcom/android/mms/data/Contact;
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/data/Contact$ContactsCache;->EMAIL_WITH_PRESENCE_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/data/Contact$ContactsCache;->EMAIL_PROJECTION:[Ljava/lang/String;

    const-string v4, "UPPER(data1)=UPPER(?) AND mimetype=\'vnd.android.cursor.item/email_v2\'"

    new-array v5, v5, [Ljava/lang/String;

    aput-object p1, v5, v12

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1173
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_4

    .line 1175
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1176
    const/4 v10, 0x0

    .line 1177
    .local v10, found:Z
    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1178
    const/4 v0, 0x1

    :try_start_1
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/data/Contact$ContactsCache;->getStatusIconResourceId(I)I

    move-result v0

    #setter for: Lcom/android/mms/data/Contact;->mPresenceResId:I
    invoke-static {v9, v0}, Lcom/android/mms/data/Contact;->access$802(Lcom/android/mms/data/Contact;I)I

    .line 1180
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    #setter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {v9, v0, v1}, Lcom/android/mms/data/Contact;->access$702(Lcom/android/mms/data/Contact;J)J

    .line 1181
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1182
    .local v11, name:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1183
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1186
    :cond_1
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1187
    #setter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {v9, v11}, Lcom/android/mms/data/Contact;->access$402(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1188
    const/4 v10, 0x1

    .line 1190
    :cond_2
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1191
    if-eqz v10, :cond_0

    .line 1192
    :try_start_2
    invoke-direct {p0, v9}, Lcom/android/mms/data/Contact$ContactsCache;->loadAvatarData(Lcom/android/mms/data/Contact;)[B

    move-result-object v8

    .line 1193
    .local v8, data:[B
    monitor-enter v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1194
    :try_start_3
    #setter for: Lcom/android/mms/data/Contact;->mAvatarData:[B
    invoke-static {v9, v8}, Lcom/android/mms/data/Contact;->access$902(Lcom/android/mms/data/Contact;[B)[B

    .line 1195
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1200
    .end local v8           #data:[B
    .end local v10           #found:Z
    .end local v11           #name:Ljava/lang/String;
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1203
    :cond_4
    return-object v9

    .line 1190
    .restart local v10       #found:Z
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1200
    .end local v10           #found:Z
    :catchall_1
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1195
    .restart local v8       #data:[B
    .restart local v10       #found:Z
    .restart local v11       #name:Ljava/lang/String;
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method

.method private getContactInfoForPhoneNumber(Ljava/lang/String;)Lcom/android/mms/data/Contact;
    .locals 19
    .parameter "number"

    .prologue
    .line 969
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 974
    const/16 v2, 0x3b

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_0

    .line 975
    const/4 v2, 0x0

    const/16 v3, 0x3b

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 977
    :cond_0
    new-instance v10, Lcom/android/mms/data/Contact;

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-direct {v10, v0, v2}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;Lcom/android/mms/data/Contact$1;)V

    .line 979
    .local v10, entry:Lcom/android/mms/data/Contact;
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 980
    .local v14, normalizedNumber:Ljava/lang/String;
    invoke-static {v14}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 982
    .local v11, minMatch:Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/mms/data/Conversation;->getTempThreadIdStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 985
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    .line 986
    .local v16, numberLen:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/MmsApp;->getCurrentCountryIso()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 993
    .local v15, numberE164:Ljava/lang/String;
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v18

    .line 994
    .local v18, util:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    const/16 v17, 0x0

    .line 996
    .local v17, pn:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/MmsApp;->getCurrentCountryIso()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 1001
    :goto_0
    const/4 v12, 0x0

    .line 1002
    .local v12, nationalNumber:Ljava/lang/String;
    const/4 v13, 0x0

    .line 1003
    .local v13, nationalNumberLen:Ljava/lang/String;
    if-eqz v17, :cond_1

    .line 1004
    invoke-virtual/range {v17 .. v17}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    .line 1005
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    .line 1015
    :cond_1
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1016
    :cond_2
    const-string v5, " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM  (SELECT data_id, normalized_number, length(normalized_number) as len  FROM phone_lookup  WHERE min_match = ?) AS lookup  WHERE  (lookup.len <= ? AND  substr(?, ? - lookup.len + 1) = lookup.normalized_number))"

    .line 1017
    .local v5, selection:Ljava/lang/String;
    const/4 v2, 0x4

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v11, v6, v2

    const/4 v2, 0x1

    aput-object v16, v6, v2

    const/4 v2, 0x2

    aput-object v14, v6, v2

    const/4 v2, 0x3

    aput-object v16, v6, v2

    .line 1024
    .local v6, args:[Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/mms/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/mms/data/Contact$ContactsCache;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1027
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_5

    .line 1028
    const-string v2, "Mms/ContactsCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryContactInfoByNumber("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") returned NULL cursor!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " contact uri used "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/mms/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    .end local v5           #selection:Ljava/lang/String;
    .end local v6           #args:[Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v12           #nationalNumber:Ljava/lang/String;
    .end local v13           #nationalNumberLen:Ljava/lang/String;
    .end local v15           #numberE164:Ljava/lang/String;
    .end local v16           #numberLen:Ljava/lang/String;
    .end local v17           #pn:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .end local v18           #util:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    :cond_3
    :goto_2
    return-object v10

    .line 997
    .restart local v15       #numberE164:Ljava/lang/String;
    .restart local v16       #numberLen:Ljava/lang/String;
    .restart local v17       #pn:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .restart local v18       #util:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    :catch_0
    move-exception v9

    .line 998
    .local v9, e:Lcom/android/i18n/phonenumbers/NumberParseException;
    invoke-virtual {v9}, Lcom/android/i18n/phonenumbers/NumberParseException;->printStackTrace()V

    goto :goto_0

    .line 1020
    .end local v9           #e:Lcom/android/i18n/phonenumbers/NumberParseException;
    .restart local v12       #nationalNumber:Ljava/lang/String;
    .restart local v13       #nationalNumberLen:Ljava/lang/String;
    :cond_4
    const-string v5, " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM  (SELECT data_id, normalized_number, length(normalized_number) as len  FROM phone_lookup  WHERE min_match = ?) AS lookup  WHERE lookup.normalized_number = ? OR (lookup.len <= ? AND  substr(?, ? - lookup.len + 1) = lookup.normalized_number)  OR ( lookup.len > ? AND substr(lookup.normalized_number, lookup.len+1 - ?)= ?))"

    .line 1021
    .restart local v5       #selection:Ljava/lang/String;
    const/16 v2, 0x8

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v11, v6, v2

    const/4 v2, 0x1

    aput-object v15, v6, v2

    const/4 v2, 0x2

    aput-object v16, v6, v2

    const/4 v2, 0x3

    aput-object v14, v6, v2

    const/4 v2, 0x4

    aput-object v16, v6, v2

    const/4 v2, 0x5

    aput-object v13, v6, v2

    const/4 v2, 0x6

    aput-object v13, v6, v2

    const/4 v2, 0x7

    aput-object v12, v6, v2

    .restart local v6       #args:[Ljava/lang/String;
    goto :goto_1

    .line 1034
    .restart local v8       #cursor:Landroid/database/Cursor;
    :cond_5
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1035
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v8}, Lcom/android/mms/data/Contact$ContactsCache;->fillPhoneTypeContact(Lcom/android/mms/data/Contact;Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1038
    :cond_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/mms/data/Contact$ContactsCache;
    .locals 1
    .parameter "context"

    .prologue
    .line 609
    sget-object v0, Lcom/android/mms/data/Contact$ContactsCache;->sInstance:Lcom/android/mms/data/Contact$ContactsCache;

    if-nez v0, :cond_0

    .line 610
    new-instance v0, Lcom/android/mms/data/Contact$ContactsCache;

    invoke-direct {v0, p0}, Lcom/android/mms/data/Contact$ContactsCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->sInstance:Lcom/android/mms/data/Contact$ContactsCache;

    .line 612
    :cond_0
    sget-object v0, Lcom/android/mms/data/Contact$ContactsCache;->sInstance:Lcom/android/mms/data/Contact$ContactsCache;

    return-object v0
.end method

.method private getStatusIconResourceId(I)I
    .locals 1
    .parameter "status"

    .prologue
    .line 1155
    if-eqz p1, :cond_0

    .line 1156
    invoke-static {p1}, Landroid/provider/ContactsContract$StatusUpdates;->getPresenceIconResourceId(I)I

    move-result v0

    .line 1158
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isAlpha(Ljava/lang/String;)Z
    .locals 3
    .parameter "string"

    .prologue
    .line 1231
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1232
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1233
    .local v0, c:C
    const/16 v2, 0x41

    if-lt v0, v2, :cond_0

    const/16 v2, 0x5a

    if-le v0, v2, :cond_1

    :cond_0
    const/16 v2, 0x61

    if-lt v0, v2, :cond_2

    const/16 v2, 0x7a

    if-gt v0, v2, :cond_2

    .line 1234
    :cond_1
    const/4 v2, 0x1

    .line 1237
    .end local v0           #c:C
    :goto_1
    return v2

    .line 1231
    .restart local v0       #c:C
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1237
    .end local v0           #c:C
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private key(Ljava/lang/String;Ljava/nio/CharBuffer;)Ljava/lang/String;
    .locals 4
    .parameter "phoneNumber"
    .parameter "keyBuffer"

    .prologue
    .line 1209
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 1210
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->mark()Ljava/nio/Buffer;

    .line 1211
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1212
    .local v1, position:I
    const/4 v2, 0x0

    .line 1213
    .local v2, resultCount:I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 1214
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1215
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1216
    invoke-virtual {p2, v0}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 1217
    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 1222
    .end local v0           #c:C
    :cond_1
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->reset()Ljava/nio/Buffer;

    .line 1223
    if-lez v2, :cond_2

    .line 1224
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1227
    .end local p1
    :cond_2
    return-object p1
.end method

.method private loadAvatarData(Lcom/android/mms/data/Contact;)[B
    .locals 9
    .parameter "entry"

    .prologue
    .line 1118
    const/4 v2, 0x0

    .line 1121
    .local v2, data:[B
    #getter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$700(Lcom/android/mms/data/Contact;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->hasAvatarData()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 1122
    :cond_0
    const/4 v5, 0x0

    .line 1151
    :goto_0
    return-object v5

    .line 1124
    :cond_1
    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    #getter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$700(Lcom/android/mms/data/Contact;)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1126
    .local v1, contactUri:Landroid/net/Uri;
    iget-object v5, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v1}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 1130
    .local v0, avatarDataStream:Ljava/io/InputStream;
    if-eqz v0, :cond_2

    .line 1131
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v3

    .line 1132
    .local v3, dataLength:I
    new-array v2, v3, [B

    .line 1133
    const/4 v5, 0x0

    array-length v6, v2

    invoke-virtual {v0, v2, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 1135
    .local v4, readLength:I
    if-le v3, v4, :cond_2

    .line 1136
    const-string v5, "Mms/ContactsCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "avatar stream reading failed,dataLength="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",readLength="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1138
    const/4 v2, 0x0

    .line 1145
    .end local v3           #dataLength:I
    .end local v4           #readLength:I
    :cond_2
    if-eqz v0, :cond_3

    .line 1146
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_3
    :goto_1
    move-object v5, v2

    .line 1151
    goto :goto_0

    .line 1141
    :catch_0
    move-exception v5

    .line 1145
    if-eqz v0, :cond_3

    .line 1146
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1148
    :catch_1
    move-exception v5

    goto :goto_1

    .line 1144
    :catchall_0
    move-exception v5

    .line 1145
    if-eqz v0, :cond_4

    .line 1146
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1149
    :cond_4
    :goto_2
    throw v5

    .line 1148
    :catch_2
    move-exception v5

    goto :goto_1

    :catch_3
    move-exception v6

    goto :goto_2
.end method

.method private updateContact(Lcom/android/mms/data/Contact;Z)V
    .locals 7
    .parameter "c"
    .parameter "isIdBase"

    .prologue
    .line 776
    if-nez p1, :cond_0

    .line 871
    :goto_0
    return-void

    .line 779
    :cond_0
    #getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1000(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->isNumberCanAddToContact(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 785
    monitor-enter p1

    .line 786
    const/4 v4, 0x0

    :try_start_0
    #setter for: Lcom/android/mms/data/Contact;->mQueryPending:Z
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$102(Lcom/android/mms/data/Contact;Z)Z

    .line 787
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 788
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 791
    :cond_1
    const/4 v0, 0x0

    .line 792
    .local v0, entry:Lcom/android/mms/data/Contact;
    if-eqz p2, :cond_2

    .line 793
    #getter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$700(Lcom/android/mms/data/Contact;)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfo(J)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 796
    :goto_1
    monitor-enter p1

    .line 797
    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/android/mms/data/Contact$ContactsCache;->contactChanged(Lcom/android/mms/data/Contact;Lcom/android/mms/data/Contact;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 798
    #getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1000(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$1002(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 799
    #getter for: Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$600(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$602(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 800
    #getter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$700(Lcom/android/mms/data/Contact;)J

    move-result-wide v4

    #setter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {p1, v4, v5}, Lcom/android/mms/data/Contact;->access$702(Lcom/android/mms/data/Contact;J)J

    .line 801
    #getter for: Lcom/android/mms/data/Contact;->mPresenceResId:I
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$800(Lcom/android/mms/data/Contact;)I

    move-result v4

    #setter for: Lcom/android/mms/data/Contact;->mPresenceResId:I
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$802(Lcom/android/mms/data/Contact;I)I

    .line 802
    #getter for: Lcom/android/mms/data/Contact;->mPresenceText:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1100(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/mms/data/Contact;->mPresenceText:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$1102(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 803
    #getter for: Lcom/android/mms/data/Contact;->mAvatarData:[B
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$900(Lcom/android/mms/data/Contact;)[B

    move-result-object v4

    #setter for: Lcom/android/mms/data/Contact;->mAvatarData:[B
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$902(Lcom/android/mms/data/Contact;[B)[B

    .line 808
    #getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1000(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->isLocalNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 809
    iget-object v4, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    const v5, 0x7f09011f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$402(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 814
    :goto_2
    #calls: Lcom/android/mms/data/Contact;->notSynchronizedUpdateNameAndNumber()V
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1200(Lcom/android/mms/data/Contact;)V

    .line 856
    invoke-static {}, Lcom/android/mms/data/Contact;->access$1300()Ljava/util/HashSet;

    move-result-object v5

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 857
    :try_start_2
    invoke-static {}, Lcom/android/mms/data/Contact;->access$1300()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 859
    .local v2, iterator:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/mms/data/Contact$UpdateListener;>;"
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 860
    :try_start_3
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/data/Contact$UpdateListener;

    .line 861
    .local v3, l:Lcom/android/mms/data/Contact$UpdateListener;
    const-string v4, "Mms/ContactsCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updating "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    invoke-interface {v3, p1}, Lcom/android/mms/data/Contact$UpdateListener;->onUpdate(Lcom/android/mms/data/Contact;)V

    goto :goto_3

    .line 870
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #iterator:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/mms/data/Contact$UpdateListener;>;"
    .end local v3           #l:Lcom/android/mms/data/Contact$UpdateListener;
    :catchall_1
    move-exception v4

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .line 795
    :cond_2
    #getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1000(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfo(Ljava/lang/String;)Lcom/android/mms/data/Contact;

    move-result-object v0

    goto/16 :goto_1

    .line 812
    :cond_3
    :try_start_4
    #getter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$400(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$402(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 859
    :catchall_2
    move-exception v4

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v4

    .line 865
    :cond_4
    monitor-enter p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 866
    const/4 v4, 0x0

    :try_start_7
    #setter for: Lcom/android/mms/data/Contact;->mQueryPending:Z
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$102(Lcom/android/mms/data/Contact;Z)Z

    .line 867
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 868
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 869
    :try_start_8
    invoke-static {p1}, Lcom/android/mms/data/RecipientIdCache;->updateNumber(Lcom/android/mms/data/Contact;)V

    .line 870
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_0

    .line 868
    :catchall_3
    move-exception v4

    :try_start_9
    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/android/mms/data/Contact;
    .locals 7
    .parameter "numberOrEmail"

    .prologue
    .line 1245
    monitor-enter p0

    .line 1248
    :try_start_0
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p1}, Lcom/android/mms/data/Contact$ContactsCache;->isAlpha(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const/4 v3, 0x1

    .line 1252
    .local v3, isNotRegularPhoneNumber:Z
    :goto_0
    if-eqz v3, :cond_2

    move-object v4, p1

    .line 1255
    .local v4, key:Ljava/lang/String;
    :goto_1
    iget-object v6, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1256
    .local v1, candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    if-eqz v1, :cond_5

    .line 1257
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1258
    .local v5, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v5, :cond_6

    .line 1259
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 1260
    .local v0, c:Lcom/android/mms/data/Contact;
    if-eqz v3, :cond_3

    .line 1261
    #getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1000(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1262
    monitor-exit p0

    .line 1278
    .end local v2           #i:I
    .end local v5           #length:I
    :goto_3
    return-object v0

    .line 1248
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v1           #candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    .end local v3           #isNotRegularPhoneNumber:Z
    .end local v4           #key:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1252
    .restart local v3       #isNotRegularPhoneNumber:Z
    :cond_2
    sget-object v6, Lcom/android/mms/data/Contact$ContactsCache;->sStaticKeyBuffer:Ljava/nio/CharBuffer;

    invoke-direct {p0, p1, v6}, Lcom/android/mms/data/Contact$ContactsCache;->key(Ljava/lang/String;Ljava/nio/CharBuffer;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 1265
    .restart local v0       #c:Lcom/android/mms/data/Contact;
    .restart local v1       #candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    .restart local v2       #i:I
    .restart local v4       #key:Ljava/lang/String;
    .restart local v5       #length:I
    :cond_3
    #getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1000(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1267
    monitor-exit p0

    goto :goto_3

    .line 1279
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v1           #candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    .end local v2           #i:I
    .end local v3           #isNotRegularPhoneNumber:Z
    .end local v4           #key:Ljava/lang/String;
    .end local v5           #length:I
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1258
    .restart local v0       #c:Lcom/android/mms/data/Contact;
    .restart local v1       #candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    .restart local v2       #i:I
    .restart local v3       #isNotRegularPhoneNumber:Z
    .restart local v4       #key:Ljava/lang/String;
    .restart local v5       #length:I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1272
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v2           #i:I
    .end local v5           #length:I
    :cond_5
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1274
    .restart local v1       #candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    iget-object v6, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1276
    :cond_6
    new-instance v0, Lcom/android/mms/data/Contact;

    const/4 v6, 0x0

    invoke-direct {v0, p1, v6}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;Lcom/android/mms/data/Contact$1;)V

    .line 1277
    .restart local v0       #c:Lcom/android/mms/data/Contact;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1278
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method public get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;
    .locals 5
    .parameter "number"
    .parameter "canBlock"

    .prologue
    .line 665
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 666
    const-string p1, ""

    .line 675
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->get(Ljava/lang/String;)Lcom/android/mms/data/Contact;

    move-result-object v1

    .line 676
    .local v1, contact:Lcom/android/mms/data/Contact;
    const/4 v2, 0x0

    .line 677
    .local v2, r:Ljava/lang/Runnable;
    monitor-enter v1

    .line 680
    :goto_0
    if-eqz p2, :cond_1

    :try_start_0
    #getter for: Lcom/android/mms/data/Contact;->mQueryPending:Z
    invoke-static {v1}, Lcom/android/mms/data/Contact;->access$100(Lcom/android/mms/data/Contact;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 682
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 683
    :catch_0
    move-exception v4

    goto :goto_0

    .line 691
    :cond_1
    :try_start_2
    #getter for: Lcom/android/mms/data/Contact;->mIsStale:Z
    invoke-static {v1}, Lcom/android/mms/data/Contact;->access$200(Lcom/android/mms/data/Contact;)Z

    move-result v4

    if-eqz v4, :cond_2

    #getter for: Lcom/android/mms/data/Contact;->mQueryPending:Z
    invoke-static {v1}, Lcom/android/mms/data/Contact;->access$100(Lcom/android/mms/data/Contact;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 692
    const/4 v4, 0x0

    #setter for: Lcom/android/mms/data/Contact;->mIsStale:Z
    invoke-static {v1, v4}, Lcom/android/mms/data/Contact;->access$202(Lcom/android/mms/data/Contact;Z)Z

    .line 693
    move-object v0, v1

    .line 694
    .local v0, c:Lcom/android/mms/data/Contact;
    new-instance v3, Lcom/android/mms/data/Contact$ContactsCache$1;

    invoke-direct {v3, p0, v0}, Lcom/android/mms/data/Contact$ContactsCache$1;-><init>(Lcom/android/mms/data/Contact$ContactsCache;Lcom/android/mms/data/Contact;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 706
    .end local v2           #r:Ljava/lang/Runnable;
    .local v3, r:Ljava/lang/Runnable;
    const/4 v4, 0x1

    :try_start_3
    #setter for: Lcom/android/mms/data/Contact;->mQueryPending:Z
    invoke-static {v1, v4}, Lcom/android/mms/data/Contact;->access$102(Lcom/android/mms/data/Contact;Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v2, v3

    .line 708
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v3           #r:Ljava/lang/Runnable;
    .restart local v2       #r:Ljava/lang/Runnable;
    :cond_2
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 711
    if-eqz v2, :cond_3

    .line 712
    if-eqz p2, :cond_4

    .line 713
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 718
    :cond_3
    :goto_1
    return-object v1

    .line 708
    :catchall_0
    move-exception v4

    :goto_2
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v4

    .line 715
    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/mms/data/Contact$ContactsCache;->pushTask(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 708
    .end local v2           #r:Ljava/lang/Runnable;
    .restart local v0       #c:Lcom/android/mms/data/Contact;
    .restart local v3       #r:Ljava/lang/Runnable;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #r:Ljava/lang/Runnable;
    .restart local v2       #r:Ljava/lang/Runnable;
    goto :goto_2
.end method

.method public getContactInfo(J)Lcom/android/mms/data/Contact;
    .locals 3
    .parameter "id"

    .prologue
    .line 946
    new-instance v0, Lcom/android/mms/data/Contact;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/Long;Lcom/android/mms/data/Contact$1;)V

    .line 947
    .local v0, entry:Lcom/android/mms/data/Contact;
    invoke-direct {p0}, Lcom/android/mms/data/Contact$ContactsCache;->checkContactProviderAvailible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 950
    .end local v0           #entry:Lcom/android/mms/data/Contact;
    :goto_0
    return-object v0

    .restart local v0       #entry:Lcom/android/mms/data/Contact;
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/data/Contact$ContactsCache;->queryContactInfoById(J)Lcom/android/mms/data/Contact;

    move-result-object v0

    goto :goto_0
.end method

.method public getContactInfo(Ljava/lang/String;)Lcom/android/mms/data/Contact;
    .locals 2
    .parameter "numberOrEmail"

    .prologue
    .line 934
    new-instance v0, Lcom/android/mms/data/Contact;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;Lcom/android/mms/data/Contact$1;)V

    .line 935
    .local v0, entry:Lcom/android/mms/data/Contact;
    invoke-direct {p0}, Lcom/android/mms/data/Contact$ContactsCache;->checkContactProviderAvailible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 941
    .end local v0           #entry:Lcom/android/mms/data/Contact;
    :goto_0
    return-object v0

    .line 938
    .restart local v0       #entry:Lcom/android/mms/data/Contact;
    :cond_0
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 939
    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfoForEmailAddress(Ljava/lang/String;)Lcom/android/mms/data/Contact;

    move-result-object v0

    goto :goto_0

    .line 941
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfoForPhoneNumber(Ljava/lang/String;)Lcom/android/mms/data/Contact;

    move-result-object v0

    goto :goto_0
.end method

.method invalidate()V
    .locals 6

    .prologue
    .line 1282
    const-string v4, "Mms/ContactsCache"

    const-string v5, "invalidate()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    monitor-enter p0

    .line 1287
    :try_start_0
    iget-object v4, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1288
    .local v0, alc:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    .line 1289
    .local v1, c:Lcom/android/mms/data/Contact;
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1290
    const/4 v4, 0x1

    :try_start_1
    #setter for: Lcom/android/mms/data/Contact;->mIsStale:Z
    invoke-static {v1, v4}, Lcom/android/mms/data/Contact;->access$202(Lcom/android/mms/data/Contact;Z)Z

    .line 1291
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4

    .line 1294
    .end local v0           #alc:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    .end local v1           #c:Lcom/android/mms/data/Contact;
    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    :cond_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1295
    const-string v4, "Mms/ContactsCache"

    const-string v5, "invalidate()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    return-void
.end method

.method public pushTask(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 662
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mTaskQueue:Lcom/android/mms/data/Contact$ContactsCache$TaskStack;

    invoke-virtual {v0, p1}, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;->push(Ljava/lang/Runnable;)V

    .line 663
    return-void
.end method

.method public queryContactInfoById(J)Lcom/android/mms/data/Contact;
    .locals 8
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 1070
    new-instance v7, Lcom/android/mms/data/Contact;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v7, v0, v3}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/Long;Lcom/android/mms/data/Contact$1;)V

    .line 1071
    .local v7, entry:Lcom/android/mms/data/Contact;
    sget-object v0, Lcom/android/mms/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1072
    .local v1, Uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/mms/data/Contact$ContactsCache;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1075
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 1076
    const-string v0, "Mms/ContactsCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryContactInfoById("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") returned NULL cursor!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " contact uri used "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    :goto_0
    return-object v7

    .line 1082
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1083
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    #setter for: Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;
    invoke-static {v7, v0}, Lcom/android/mms/data/Contact;->access$602(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1084
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    #setter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {v7, v0}, Lcom/android/mms/data/Contact;->access$402(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1088
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    #setter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {v7, v0}, Lcom/android/mms/data/Contact;->access$1002(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1089
    #getter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/mms/data/Contact;->access$400(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v0

    #getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/mms/data/Contact;->access$1000(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/data/Contact;->formatNameAndNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    #setter for: Lcom/android/mms/data/Contact;->mNameAndNumber:Ljava/lang/String;
    invoke-static {v7, v0}, Lcom/android/mms/data/Contact;->access$1602(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1091
    const/4 v0, 0x5

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/data/Contact$ContactsCache;->getStatusIconResourceId(I)I

    move-result v0

    #setter for: Lcom/android/mms/data/Contact;->mPresenceResId:I
    invoke-static {v7, v0}, Lcom/android/mms/data/Contact;->access$802(Lcom/android/mms/data/Contact;I)I

    .line 1093
    const/4 v0, 0x6

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    #setter for: Lcom/android/mms/data/Contact;->mPresenceText:Ljava/lang/String;
    invoke-static {v7, v0}, Lcom/android/mms/data/Contact;->access$1102(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1095
    invoke-direct {p0, v7}, Lcom/android/mms/data/Contact$ContactsCache;->loadAvatarData(Lcom/android/mms/data/Contact;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1098
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

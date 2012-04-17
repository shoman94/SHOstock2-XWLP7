.class public Lcom/android/email/ContactInfoCache;
.super Ljava/lang/Object;
.source "ContactInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/ContactInfoCache$CacheEntry;
    }
.end annotation


# static fields
.field private static final CALLER_ID_PROJECTION:[Ljava/lang/String;

.field private static final EMAIL_PROJECTION:[Ljava/lang/String;

.field private static final EMAIL_WITH_PRESENCE_URI:Landroid/net/Uri;

.field private static final PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

.field private static sInstance:Lcom/android/email/ContactInfoCache;


# instance fields
.field private final mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/email/ContactInfoCache$CacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mContactInfoSelectionArgs:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 116
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/email/ContactInfoCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    .line 118
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "data1"

    aput-object v1, v0, v3

    const-string v1, "data3"

    aput-object v1, v0, v4

    const-string v1, "display_name"

    aput-object v1, v0, v5

    const-string v1, "contact_id"

    aput-object v1, v0, v6

    const-string v1, "contact_presence"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "contact_status"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/ContactInfoCache;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    .line 148
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/email/ContactInfoCache;->EMAIL_WITH_PRESENCE_URI:Landroid/net/Uri;

    .line 154
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "data4"

    aput-object v1, v0, v3

    const-string v1, "contact_presence"

    aput-object v1, v0, v4

    const-string v1, "contact_id"

    aput-object v1, v0, v5

    const-string v1, "display_name"

    aput-object v1, v0, v6

    const-string v1, "_id"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/email/ContactInfoCache;->EMAIL_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 297
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 182
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/email/ContactInfoCache;->mContactInfoSelectionArgs:[Ljava/lang/String;

    .line 186
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/ContactInfoCache;->mCache:Ljava/util/HashMap;

    .line 299
    iput-object p1, p0, Lcom/android/email/ContactInfoCache;->mContext:Landroid/content/Context;

    .line 301
    return-void
.end method

.method public static getInstance()Lcom/android/email/ContactInfoCache;
    .locals 1

    .prologue
    .line 359
    sget-object v0, Lcom/android/email/ContactInfoCache;->sInstance:Lcom/android/email/ContactInfoCache;

    return-object v0
.end method

.method private getPresenceIconResourceId(I)I
    .locals 1
    .parameter "presence"

    .prologue
    .line 781
    if-eqz p1, :cond_0

    .line 783
    invoke-static {p1}, Landroid/provider/ContactsContract$Presence;->getPresenceIconResourceId(I)I

    move-result v0

    .line 787
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 349
    new-instance v0, Lcom/android/email/ContactInfoCache;

    invoke-direct {v0, p0}, Lcom/android/email/ContactInfoCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/email/ContactInfoCache;->sInstance:Lcom/android/email/ContactInfoCache;

    .line 351
    return-void
.end method

.method private loadAvatar(Lcom/android/email/ContactInfoCache$CacheEntry;Landroid/database/Cursor;)V
    .locals 10
    .parameter "entry"
    .parameter "cursor"

    .prologue
    .line 507
    iget-wide v6, p1, Lcom/android/email/ContactInfoCache$CacheEntry;->person_id:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    iget-object v6, p1, Lcom/android/email/ContactInfoCache$CacheEntry;->mAvatar:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_1

    .line 564
    :cond_0
    :goto_0
    return-void

    .line 513
    :cond_1
    sget-object v6, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v7, p1, Lcom/android/email/ContactInfoCache$CacheEntry;->person_id:J

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 515
    .local v3, contactUri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/email/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v3}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 523
    .local v0, avatarDataStream:Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 532
    :try_start_0
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 536
    .local v1, b:Landroid/graphics/Bitmap;
    const/16 v6, 0x5a

    const/16 v7, 0x5a

    const/4 v8, 0x0

    invoke-static {v1, v6, v7, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 546
    .end local v1           #b:Landroid/graphics/Bitmap;
    .local v5, rb:Landroid/graphics/Bitmap;
    :goto_1
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/android/email/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v2, v6, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 550
    .local v2, bd:Landroid/graphics/drawable/BitmapDrawable;
    iput-object v2, p1, Lcom/android/email/ContactInfoCache$CacheEntry;->mAvatar:Landroid/graphics/drawable/BitmapDrawable;

    .line 554
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 556
    :catch_0
    move-exception v4

    .line 558
    .local v4, e:Ljava/io/IOException;
    const/4 v6, 0x0

    iput-object v6, p1, Lcom/android/email/ContactInfoCache$CacheEntry;->mAvatar:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0

    .line 538
    .end local v2           #bd:Landroid/graphics/drawable/BitmapDrawable;
    .end local v4           #e:Ljava/io/IOException;
    .end local v5           #rb:Landroid/graphics/Bitmap;
    :catch_1
    move-exception v4

    .line 540
    .local v4, e:Ljava/lang/OutOfMemoryError;
    const-string v6, "Email/cache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OutOfMemoryError"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const/4 v5, 0x0

    .restart local v5       #rb:Landroid/graphics/Bitmap;
    goto :goto_1
.end method

.method private queryEmailDisplayName(Ljava/lang/String;)Lcom/android/email/ContactInfoCache$CacheEntry;
    .locals 10
    .parameter "email"

    .prologue
    const/4 v1, 0x0

    .line 797
    new-instance v8, Lcom/android/email/ContactInfoCache$CacheEntry;

    invoke-direct {v8, p0}, Lcom/android/email/ContactInfoCache$CacheEntry;-><init>(Lcom/android/email/ContactInfoCache;)V

    .line 799
    .local v8, entry:Lcom/android/email/ContactInfoCache$CacheEntry;
    iget-object v0, p0, Lcom/android/email/ContactInfoCache;->mContactInfoSelectionArgs:[Ljava/lang/String;

    aput-object p1, v0, v1

    .line 801
    iget-object v0, p0, Lcom/android/email/ContactInfoCache;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/email/ContactInfoCache;->EMAIL_WITH_PRESENCE_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/email/ContactInfoCache;->EMAIL_PROJECTION:[Ljava/lang/String;

    const-string v4, "data1=? AND mimetype=\'vnd.android.cursor.item/email_v2\'"

    iget-object v5, p0, Lcom/android/email/ContactInfoCache;->mContactInfoSelectionArgs:[Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 813
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_3

    .line 817
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 819
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/email/ContactInfoCache;->getPresenceIconResourceId(I)I

    move-result v0

    iput v0, v8, Lcom/android/email/ContactInfoCache$CacheEntry;->presenceResId:I

    .line 823
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/android/email/ContactInfoCache$CacheEntry;->person_id:J

    .line 825
    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/android/email/ContactInfoCache$CacheEntry;->data_id:J

    .line 827
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 829
    .local v9, name:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 831
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 835
    :cond_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 837
    iput-object v9, v8, Lcom/android/email/ContactInfoCache$CacheEntry;->name:Ljava/lang/String;

    .line 839
    invoke-direct {p0, v8, v7}, Lcom/android/email/ContactInfoCache;->loadAvatar(Lcom/android/email/ContactInfoCache$CacheEntry;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 849
    .end local v9           #name:Ljava/lang/String;
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 855
    :cond_3
    return-object v8

    .line 849
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public getContactInfo(Ljava/lang/String;Z)Lcom/android/email/ContactInfoCache$CacheEntry;
    .locals 1
    .parameter "numberOrEmail"
    .parameter "allowQuery"

    .prologue
    .line 369
    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    invoke-virtual {p0, p1, p2}, Lcom/android/email/ContactInfoCache;->getContactInfoForEmailAddress(Ljava/lang/String;Z)Lcom/android/email/ContactInfoCache$CacheEntry;

    move-result-object v0

    .line 377
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContactInfoForEmailAddress(Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/email/ContactInfoCache$CacheEntry;
    .locals 8
    .parameter "email"
    .parameter "dataID"
    .parameter "allowQuery"

    .prologue
    .line 706
    if-nez p2, :cond_0

    .line 708
    invoke-virtual {p0, p1, p3}, Lcom/android/email/ContactInfoCache;->getContactInfoForEmailAddress(Ljava/lang/String;Z)Lcom/android/email/ContactInfoCache$CacheEntry;

    move-result-object v1

    .line 759
    :goto_0
    return-object v1

    .line 714
    :cond_0
    const-wide/16 v2, 0x0

    .line 718
    .local v2, id:J
    :try_start_0
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 726
    :goto_1
    iget-object v5, p0, Lcom/android/email/ContactInfoCache;->mCache:Ljava/util/HashMap;

    monitor-enter v5

    .line 728
    :try_start_1
    iget-object v4, p0, Lcom/android/email/ContactInfoCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 730
    iget-object v4, p0, Lcom/android/email/ContactInfoCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/ContactInfoCache$CacheEntry;

    .line 732
    .local v1, entry:Lcom/android/email/ContactInfoCache$CacheEntry;
    if-eqz p3, :cond_1

    invoke-virtual {v1}, Lcom/android/email/ContactInfoCache$CacheEntry;->isStale()Z

    move-result v4

    if-nez v4, :cond_4

    .line 734
    :cond_1
    if-eqz p2, :cond_2

    iget-wide v6, v1, Lcom/android/email/ContactInfoCache$CacheEntry;->data_id:J

    cmp-long v4, v2, v6

    if-nez v4, :cond_4

    .line 736
    :cond_2
    monitor-exit v5

    goto :goto_0

    .line 751
    .end local v1           #entry:Lcom/android/email/ContactInfoCache$CacheEntry;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 720
    :catch_0
    move-exception v0

    .line 722
    .local v0, e:Ljava/lang/NumberFormatException;
    const-wide/16 v2, 0x0

    goto :goto_1

    .line 745
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_3
    if-nez p3, :cond_4

    .line 747
    const/4 v1, 0x0

    :try_start_2
    monitor-exit v5

    goto :goto_0

    .line 751
    :cond_4
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 753
    invoke-virtual {p0, v2, v3}, Lcom/android/email/ContactInfoCache;->queryEmailDisplayNameByDataId(J)Lcom/android/email/ContactInfoCache$CacheEntry;

    move-result-object v1

    .line 755
    .restart local v1       #entry:Lcom/android/email/ContactInfoCache$CacheEntry;
    iget-object v5, p0, Lcom/android/email/ContactInfoCache;->mCache:Ljava/util/HashMap;

    monitor-enter v5

    .line 757
    :try_start_3
    iget-object v4, p0, Lcom/android/email/ContactInfoCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    monitor-exit v5

    goto :goto_0

    .line 761
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4
.end method

.method public getContactInfoForEmailAddress(Ljava/lang/String;Z)Lcom/android/email/ContactInfoCache$CacheEntry;
    .locals 3
    .parameter "email"
    .parameter "allowQuery"

    .prologue
    .line 660
    iget-object v2, p0, Lcom/android/email/ContactInfoCache;->mCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 662
    :try_start_0
    iget-object v1, p0, Lcom/android/email/ContactInfoCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 664
    iget-object v1, p0, Lcom/android/email/ContactInfoCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/ContactInfoCache$CacheEntry;

    .line 666
    .local v0, entry:Lcom/android/email/ContactInfoCache$CacheEntry;
    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lcom/android/email/ContactInfoCache$CacheEntry;->isStale()Z

    move-result v1

    if-nez v1, :cond_2

    .line 668
    :cond_0
    monitor-exit v2

    .line 686
    .end local v0           #entry:Lcom/android/email/ContactInfoCache$CacheEntry;
    :goto_0
    return-object v0

    .line 672
    :cond_1
    if-nez p2, :cond_2

    .line 674
    const/4 v0, 0x0

    monitor-exit v2

    goto :goto_0

    .line 678
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 680
    invoke-direct {p0, p1}, Lcom/android/email/ContactInfoCache;->queryEmailDisplayName(Ljava/lang/String;)Lcom/android/email/ContactInfoCache$CacheEntry;

    move-result-object v0

    .line 682
    .restart local v0       #entry:Lcom/android/email/ContactInfoCache$CacheEntry;
    iget-object v2, p0, Lcom/android/email/ContactInfoCache;->mCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 684
    :try_start_2
    iget-object v1, p0, Lcom/android/email/ContactInfoCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    monitor-exit v2

    goto :goto_0

    .line 688
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public invalidateContact(Ljava/lang/String;)V
    .locals 3
    .parameter "emailOrNumber"

    .prologue
    .line 329
    iget-object v2, p0, Lcom/android/email/ContactInfoCache;->mCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 331
    :try_start_0
    iget-object v1, p0, Lcom/android/email/ContactInfoCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/ContactInfoCache$CacheEntry;

    .line 333
    .local v0, entry:Lcom/android/email/ContactInfoCache$CacheEntry;
    if-eqz v0, :cond_0

    .line 335
    const/4 v1, 0x1

    #setter for: Lcom/android/email/ContactInfoCache$CacheEntry;->isStale:Z
    invoke-static {v0, v1}, Lcom/android/email/ContactInfoCache$CacheEntry;->access$002(Lcom/android/email/ContactInfoCache$CacheEntry;Z)Z

    .line 339
    :cond_0
    monitor-exit v2

    .line 341
    return-void

    .line 339
    .end local v0           #entry:Lcom/android/email/ContactInfoCache$CacheEntry;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public queryContactInfoByEmail(Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .parameter "email"

    .prologue
    .line 601
    const-wide/16 v14, 0x0

    .line 602
    .local v14, id:J
    const/16 v16, 0x0

    .line 603
    .local v16, number:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    .line 604
    .local v5, mContactInfoSelectionArgs:[Ljava/lang/String;
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 605
    .local v2, PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;
    const-string v12, "data1=? AND mimetype=\'vnd.android.cursor.item/email_v2\'"

    .line 608
    .local v12, EMAIL_SELECTION:Ljava/lang/String;
    const/4 v1, 0x0

    aput-object p1, v5, v1

    .line 610
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/email/ContactInfoCache;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    const-string v4, "data1=? AND mimetype=\'vnd.android.cursor.item/email_v2\'"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 613
    .local v13, cursor:Landroid/database/Cursor;
    if-nez v13, :cond_0

    .line 615
    const/4 v1, 0x0

    .line 646
    :goto_0
    return-object v1

    .line 619
    :cond_0
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 620
    const/4 v1, 0x3

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v14

    .line 623
    :cond_1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 627
    sget-object v7, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 628
    .local v7, uri:Landroid/net/Uri;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contact_id= \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 630
    .local v9, Phone_SELECTION:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v8, Lcom/android/email/ContactInfoCache;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 633
    if-nez v13, :cond_2

    .line 635
    const/4 v1, 0x0

    goto :goto_0

    .line 623
    .end local v7           #uri:Landroid/net/Uri;
    .end local v9           #Phone_SELECTION:Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v1

    .line 639
    .restart local v7       #uri:Landroid/net/Uri;
    .restart local v9       #Phone_SELECTION:Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 640
    const/4 v1, 0x0

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v16

    .line 643
    :cond_3
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    move-object/from16 v1, v16

    .line 646
    goto :goto_0

    .line 643
    :catchall_1
    move-exception v1

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public queryEmailDisplayNameByDataId(J)Lcom/android/email/ContactInfoCache$CacheEntry;
    .locals 9
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 861
    new-instance v7, Lcom/android/email/ContactInfoCache$CacheEntry;

    invoke-direct {v7, p0}, Lcom/android/email/ContactInfoCache$CacheEntry;-><init>(Lcom/android/email/ContactInfoCache;)V

    .line 863
    .local v7, entry:Lcom/android/email/ContactInfoCache$CacheEntry;
    sget-object v0, Lcom/android/email/ContactInfoCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 865
    .local v1, Uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/email/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/email/ContactInfoCache;->EMAIL_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 877
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 881
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 883
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/email/ContactInfoCache;->getPresenceIconResourceId(I)I

    move-result v0

    iput v0, v7, Lcom/android/email/ContactInfoCache$CacheEntry;->presenceResId:I

    .line 887
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v7, Lcom/android/email/ContactInfoCache$CacheEntry;->person_id:J

    .line 889
    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v7, Lcom/android/email/ContactInfoCache$CacheEntry;->data_id:J

    .line 891
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 893
    .local v8, name:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 895
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 899
    :cond_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 901
    iput-object v8, v7, Lcom/android/email/ContactInfoCache$CacheEntry;->name:Ljava/lang/String;

    .line 903
    invoke-direct {p0, v7, v6}, Lcom/android/email/ContactInfoCache;->loadAvatar(Lcom/android/email/ContactInfoCache$CacheEntry;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 913
    .end local v8           #name:Ljava/lang/String;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 919
    :cond_3
    return-object v7

    .line 913
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

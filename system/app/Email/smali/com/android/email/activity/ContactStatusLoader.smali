.class public Lcom/android/email/activity/ContactStatusLoader;
.super Landroid/content/AsyncTaskLoader;
.source "ContactStatusLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/ContactStatusLoader$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Lcom/android/email/activity/ContactStatusLoader$Result;",
        ">;"
    }
.end annotation


# static fields
.field static final PHOTO_PROJECTION:[Ljava/lang/String;

.field static final PROJECTION_PHOTO_ID_PRESENCE:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEmailAddress:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "photo_id"

    aput-object v1, v0, v2

    const-string v1, "contact_presence"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/email/activity/ContactStatusLoader;->PROJECTION_PHOTO_ID_PRESENCE:[Ljava/lang/String;

    .line 52
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "data15"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/email/activity/ContactStatusLoader;->PHOTO_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "emailAddress"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 89
    iput-object p1, p0, Lcom/android/email/activity/ContactStatusLoader;->mContext:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lcom/android/email/activity/ContactStatusLoader;->mEmailAddress:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public static load(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/activity/ContactStatusLoader$Result;
    .locals 21
    .parameter "context"
    .parameter "emailAddress"

    .prologue
    .line 104
    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 105
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/email/activity/ContactStatusLoader;->PROJECTION_PHOTO_ID_PRESENCE:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 107
    .local v12, c:Landroid/database/Cursor;
    if-nez v12, :cond_0

    .line 108
    sget-object v2, Lcom/android/email/activity/ContactStatusLoader$Result;->UNKNOWN:Lcom/android/email/activity/ContactStatusLoader$Result;

    .line 142
    :goto_0
    return-object v2

    .line 113
    :cond_0
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    .line 114
    sget-object v2, Lcom/android/email/activity/ContactStatusLoader$Result;->UNKNOWN:Lcom/android/email/activity/ContactStatusLoader$Result;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 116
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 117
    .local v17, photoId:J
    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v19

    .line 119
    .local v19, presenceStatus:I
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 123
    invoke-static/range {v19 .. v19}, Landroid/provider/ContactsContract$StatusUpdates;->getPresenceIconResourceId(I)I

    move-result v20

    .line 126
    .local v20, presenceStatusResId:I
    const/4 v15, 0x0

    .line 127
    .local v15, photo:Landroid/graphics/Bitmap;
    const-wide/16 v4, -0x1

    cmp-long v2, v17, v4

    if-eqz v2, :cond_2

    .line 128
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v17

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lcom/android/email/activity/ContactStatusLoader;->PHOTO_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v11}, Lcom/android/emailcommon/utility/Utility;->getFirstRowBlob(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I[B)[B

    move-result-object v16

    .line 131
    .local v16, photoData:[B
    if-eqz v16, :cond_2

    .line 133
    const/4 v2, 0x0

    :try_start_2
    move-object/from16 v0, v16

    array-length v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v2, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v15

    .line 141
    .end local v16           #photoData:[B
    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/provider/ContactsContract$Data;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v14

    .line 142
    .local v14, lookupUri:Landroid/net/Uri;
    new-instance v2, Lcom/android/email/activity/ContactStatusLoader$Result;

    move/from16 v0, v20

    invoke-direct {v2, v15, v0, v14}, Lcom/android/email/activity/ContactStatusLoader$Result;-><init>(Landroid/graphics/Bitmap;ILandroid/net/Uri;)V

    goto :goto_0

    .line 119
    .end local v14           #lookupUri:Landroid/net/Uri;
    .end local v15           #photo:Landroid/graphics/Bitmap;
    .end local v17           #photoId:J
    .end local v19           #presenceStatus:I
    .end local v20           #presenceStatusResId:I
    :catchall_0
    move-exception v2

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v2

    .line 134
    .restart local v15       #photo:Landroid/graphics/Bitmap;
    .restart local v16       #photoData:[B
    .restart local v17       #photoId:J
    .restart local v19       #presenceStatus:I
    .restart local v20       #presenceStatusResId:I
    :catch_0
    move-exception v13

    .line 135
    .local v13, e:Ljava/lang/OutOfMemoryError;
    const-string v2, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Decoding bitmap failed with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public loadInBackground()Lcom/android/email/activity/ContactStatusLoader$Result;
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/email/activity/ContactStatusLoader;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/activity/ContactStatusLoader;->mEmailAddress:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/email/activity/ContactStatusLoader;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/activity/ContactStatusLoader$Result;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/android/email/activity/ContactStatusLoader;->loadInBackground()Lcom/android/email/activity/ContactStatusLoader$Result;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 0

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/android/email/activity/ContactStatusLoader;->stopLoading()V

    .line 159
    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/android/email/activity/ContactStatusLoader;->cancelLoad()Z

    .line 148
    invoke-virtual {p0}, Lcom/android/email/activity/ContactStatusLoader;->forceLoad()V

    .line 149
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/android/email/activity/ContactStatusLoader;->cancelLoad()Z

    .line 154
    return-void
.end method

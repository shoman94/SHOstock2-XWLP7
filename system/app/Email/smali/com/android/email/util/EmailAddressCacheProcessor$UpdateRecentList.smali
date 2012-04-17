.class Lcom/android/email/util/EmailAddressCacheProcessor$UpdateRecentList;
.super Ljava/lang/Object;
.source "EmailAddressCacheProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/util/EmailAddressCacheProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateRecentList"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 177
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/util/EmailAddressCacheProcessor$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/android/email/util/EmailAddressCacheProcessor$UpdateRecentList;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 180
    const/16 v13, 0x13

    invoke-static {v13}, Landroid/os/Process;->setThreadPriority(I)V

    .line 181
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v9, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 183
    .local v3, date:Ljava/util/Date;
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    .line 184
    .local v11, timestamp:J
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 185
    .local v2, cv:Landroid/content/ContentValues;
    invoke-static {}, Lcom/android/email/util/EmailAddressCacheProcessor;->access$100()Ljava/util/HashMap;

    move-result-object v14

    monitor-enter v14

    .line 186
    :try_start_0
    invoke-static {}, Lcom/android/email/util/EmailAddressCacheProcessor;->access$100()Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 187
    .local v6, itr:Ljava/util/Iterator;
    const-string v13, "EmailAddressCacheProcessor"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Size of cache  - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Lcom/android/email/util/EmailAddressCacheProcessor;->access$100()Ljava/util/HashMap;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 189
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 190
    .local v7, key:Ljava/lang/String;
    invoke-static {}, Lcom/android/email/util/EmailAddressCacheProcessor;->access$100()Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;

    .line 191
    .local v1, cacheAddress:Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;
    iget-object v13, v1, Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;->mEmailAddress:Ljava/lang/String;

    invoke-static {v13}, Lcom/android/emailcommon/mail/Address;->unpackFirst(Ljava/lang/String;)Lcom/android/emailcommon/mail/Address;

    move-result-object v10

    .line 192
    .local v10, sender:Lcom/android/emailcommon/mail/Address;
    if-nez v10, :cond_1

    .line 193
    const-string v13, "EmailAddressCacheProcessor"

    const-string v15, "UpdateEmailCacheTask | Received Sender null"

    invoke-static {v13, v15}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 248
    .end local v1           #cacheAddress:Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;
    .end local v6           #itr:Ljava/util/Iterator;
    .end local v7           #key:Ljava/lang/String;
    .end local v10           #sender:Lcom/android/emailcommon/mail/Address;
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    .line 196
    .restart local v1       #cacheAddress:Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;
    .restart local v6       #itr:Ljava/util/Iterator;
    .restart local v7       #key:Ljava/lang/String;
    .restart local v10       #sender:Lcom/android/emailcommon/mail/Address;
    :cond_1
    :try_start_1
    invoke-virtual {v10}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 197
    .local v5, email:Ljava/lang/String;
    if-nez v5, :cond_2

    .line 198
    const-string v13, "EmailAddressCacheProcessor"

    const-string v15, "UpdateEmailCacheTask | Received null email address"

    invoke-static {v13, v15}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 201
    :cond_2
    invoke-virtual {v10}, Lcom/android/emailcommon/mail/Address;->getPersonal()Ljava/lang/String;

    move-result-object v8

    .line 202
    .local v8, name:Ljava/lang/String;
    if-nez v8, :cond_3

    .line 203
    const-string v13, "EmailAddressCacheProcessor"

    const-string v15, "UpdateEmailCacheTask | Received null Sender Name"

    invoke-static {v13, v15}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    move-object v8, v5

    .line 208
    :cond_3
    const-string v13, "accountAddress"

    invoke-virtual {v2, v13, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v13, "accountName"

    invoke-virtual {v2, v13, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v13, "accountSource"

    iget v15, v1, Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;->mSourceType:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v2, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 211
    const-string v13, "operationType"

    iget v15, v1, Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;->mOperationType:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v2, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 212
    const-string v13, "timeStamp"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v2, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 213
    const-string v13, "usageCount"

    iget v15, v1, Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;->mUsageCount:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v2, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 214
    sget-object v13, Lcom/android/emailcommon/provider/EmailContent$EmailAddressCache;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v13}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 216
    .local v0, b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v0, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v13

    const/16 v15, 0xa

    if-lt v13, v15, :cond_0

    .line 224
    :try_start_2
    sget-object v13, Lcom/android/email/util/EmailAddressCacheProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v15, "com.android.email.provider"

    invoke-virtual {v13, v15, v9}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 232
    :goto_1
    :try_start_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 226
    :catch_0
    move-exception v4

    .line 227
    .local v4, e:Ljava/lang/Exception;
    const-string v13, "EmailAddressCacheProcessor"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "UpdateEmailCacheTask | exception "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 235
    .end local v0           #b:Landroid/content/ContentProviderOperation$Builder;
    .end local v1           #cacheAddress:Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;
    .end local v4           #e:Ljava/lang/Exception;
    .end local v5           #email:Ljava/lang/String;
    .end local v7           #key:Ljava/lang/String;
    .end local v8           #name:Ljava/lang/String;
    .end local v10           #sender:Lcom/android/emailcommon/mail/Address;
    :cond_4
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v13

    if-nez v13, :cond_5

    .line 237
    :try_start_4
    sget-object v13, Lcom/android/email/util/EmailAddressCacheProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v15, "com.android.email.provider"

    invoke-virtual {v13, v15, v9}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 245
    :goto_2
    :try_start_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 247
    :cond_5
    invoke-static {}, Lcom/android/email/util/EmailAddressCacheProcessor;->access$100()Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/HashMap;->clear()V

    .line 248
    monitor-exit v14

    .line 249
    return-void

    .line 239
    :catch_1
    move-exception v4

    .line 240
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v13, "EmailAddressCacheProcessor"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "UpdateEmailCacheTask | exception "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

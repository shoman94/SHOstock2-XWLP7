.class public Lcom/android/email/util/EmailAddressCacheProcessor;
.super Ljava/lang/Object;
.source "EmailAddressCacheProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/util/EmailAddressCacheProcessor$1;,
        Lcom/android/email/util/EmailAddressCacheProcessor$UpdateRecentList;,
        Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;
    }
.end annotation


# static fields
.field private static mCacheAddressInfoArrayList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static mContext:Landroid/content/Context;

.field public static newEntryBcc:[Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;

.field public static newEntryCc:[Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;

.field public static newEntryTo:[Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    sput-object v0, Lcom/android/email/util/EmailAddressCacheProcessor;->newEntryTo:[Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;

    .line 28
    sput-object v0, Lcom/android/email/util/EmailAddressCacheProcessor;->newEntryCc:[Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;

    .line 29
    sput-object v0, Lcom/android/email/util/EmailAddressCacheProcessor;->newEntryBcc:[Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/email/util/EmailAddressCacheProcessor;->mCacheAddressInfoArrayList:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 177
    return-void
.end method

.method static synthetic access$100()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/android/email/util/EmailAddressCacheProcessor;->mCacheAddressInfoArrayList:Ljava/util/HashMap;

    return-object v0
.end method

.method public static addFromAddressToCache(Ljava/lang/String;)V
    .locals 2
    .parameter "address"

    .prologue
    .line 72
    const/4 v0, 0x2

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lcom/android/email/util/EmailAddressCacheProcessor;->populateMCacheAddressInfoArrayList(Ljava/lang/String;II)V

    .line 74
    return-void
.end method

.method public static commitCacheInfo(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 170
    sput-object p0, Lcom/android/email/util/EmailAddressCacheProcessor;->mContext:Landroid/content/Context;

    .line 171
    new-instance v0, Lcom/android/email/util/EmailAddressCacheProcessor$UpdateRecentList;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/email/util/EmailAddressCacheProcessor$UpdateRecentList;-><init>(Lcom/android/email/util/EmailAddressCacheProcessor$1;)V

    .line 172
    .local v0, cacheBuilderThread:Lcom/android/email/util/EmailAddressCacheProcessor$UpdateRecentList;
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "UpdateRecentList"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 173
    .local v1, thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 175
    return-void
.end method

.method public static insertAllContacts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 12
    .parameter "toAddresses"
    .parameter "ccAddresses"
    .parameter "bccAddresses"
    .parameter "context"
    .parameter "account"

    .prologue
    .line 116
    sput-object p3, Lcom/android/email/util/EmailAddressCacheProcessor;->mContext:Landroid/content/Context;

    .line 118
    invoke-static {p0}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v8

    .line 119
    .local v8, toAddressArray:[Lcom/android/emailcommon/mail/Address;
    invoke-static {p1}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v2

    .line 120
    .local v2, ccAddressArray:[Lcom/android/emailcommon/mail/Address;
    invoke-static {p2}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    .line 121
    .local v0, bccAddressArray:[Lcom/android/emailcommon/mail/Address;
    invoke-virtual/range {p4 .. p4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 122
    .local v4, senderAddress:Ljava/lang/String;
    const-string v9, "@"

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 123
    .local v6, temp:[Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v5, v6, v9

    .line 124
    .local v5, senderAddressDomain:Ljava/lang/String;
    array-length v9, v8

    new-array v9, v9, [Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;

    sput-object v9, Lcom/android/email/util/EmailAddressCacheProcessor;->newEntryTo:[Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;

    .line 125
    array-length v9, v2

    new-array v9, v9, [Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;

    sput-object v9, Lcom/android/email/util/EmailAddressCacheProcessor;->newEntryCc:[Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;

    .line 126
    array-length v9, v0

    new-array v9, v9, [Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;

    sput-object v9, Lcom/android/email/util/EmailAddressCacheProcessor;->newEntryBcc:[Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;

    .line 128
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v9, v8

    if-ge v3, v9, :cond_1

    .line 129
    aget-object v9, v8, v3

    invoke-virtual {v9}, Lcom/android/emailcommon/mail/Address;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_0

    .line 130
    aget-object v9, v8, v3

    invoke-virtual {v9}, Lcom/android/emailcommon/mail/Address;->pack()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/android/email/util/EmailAddressCacheProcessor;->populateMCacheAddressInfoArrayList(Ljava/lang/String;II)V

    .line 128
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 133
    :cond_0
    aget-object v9, v8, v3

    invoke-virtual {v9}, Lcom/android/emailcommon/mail/Address;->pack()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/android/email/util/EmailAddressCacheProcessor;->populateMCacheAddressInfoArrayList(Ljava/lang/String;II)V

    goto :goto_1

    .line 137
    :cond_1
    const/4 v3, 0x0

    :goto_2
    array-length v9, v2

    if-ge v3, v9, :cond_3

    .line 140
    aget-object v9, v2, v3

    invoke-virtual {v9}, Lcom/android/emailcommon/mail/Address;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_2

    .line 141
    aget-object v9, v2, v3

    invoke-virtual {v9}, Lcom/android/emailcommon/mail/Address;->pack()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Lcom/android/email/util/EmailAddressCacheProcessor;->populateMCacheAddressInfoArrayList(Ljava/lang/String;II)V

    .line 137
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 144
    :cond_2
    aget-object v9, v2, v3

    invoke-virtual {v9}, Lcom/android/emailcommon/mail/Address;->pack()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Lcom/android/email/util/EmailAddressCacheProcessor;->populateMCacheAddressInfoArrayList(Ljava/lang/String;II)V

    goto :goto_3

    .line 148
    :cond_3
    const/4 v3, 0x0

    :goto_4
    array-length v9, v0

    if-ge v3, v9, :cond_5

    .line 151
    aget-object v9, v0, v3

    invoke-virtual {v9}, Lcom/android/emailcommon/mail/Address;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_4

    .line 152
    aget-object v9, v0, v3

    invoke-virtual {v9}, Lcom/android/emailcommon/mail/Address;->pack()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-static {v9, v10, v11}, Lcom/android/email/util/EmailAddressCacheProcessor;->populateMCacheAddressInfoArrayList(Ljava/lang/String;II)V

    .line 148
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 155
    :cond_4
    aget-object v9, v0, v3

    invoke-virtual {v9}, Lcom/android/emailcommon/mail/Address;->pack()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    const/4 v11, 0x2

    invoke-static {v9, v10, v11}, Lcom/android/email/util/EmailAddressCacheProcessor;->populateMCacheAddressInfoArrayList(Ljava/lang/String;II)V

    goto :goto_5

    .line 159
    :cond_5
    new-instance v1, Lcom/android/email/util/EmailAddressCacheProcessor$UpdateRecentList;

    const/4 v9, 0x0

    invoke-direct {v1, v9}, Lcom/android/email/util/EmailAddressCacheProcessor$UpdateRecentList;-><init>(Lcom/android/email/util/EmailAddressCacheProcessor$1;)V

    .line 160
    .local v1, cacheBuilderThread:Lcom/android/email/util/EmailAddressCacheProcessor$UpdateRecentList;
    new-instance v7, Ljava/lang/Thread;

    const-string v9, "UpdateRecentList"

    invoke-direct {v7, v1, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 161
    .local v7, thread:Ljava/lang/Thread;
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 162
    return-void
.end method

.method public static populateMCacheAddressInfoArrayList(Ljava/lang/String;II)V
    .locals 7
    .parameter "address"
    .parameter "sourceType"
    .parameter "opType"

    .prologue
    .line 79
    invoke-static {p0}, Lcom/android/emailcommon/mail/Address;->unpackFirst(Ljava/lang/String;)Lcom/android/emailcommon/mail/Address;

    move-result-object v4

    .line 80
    .local v4, sender:Lcom/android/emailcommon/mail/Address;
    if-nez v4, :cond_0

    .line 81
    const-string v5, "EmailAddressCacheProcessor"

    const-string v6, "populateMCacheAddressInfoArrayList sender null"

    invoke-static {v5, v6}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-virtual {v4}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, email:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 86
    const-string v5, "EmailAddressCacheProcessor"

    const-string v6, "populateMCacheAddressInfoArrayList received null email address"

    invoke-static {v5, v6}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_1
    sget-object v6, Lcom/android/email/util/EmailAddressCacheProcessor;->mCacheAddressInfoArrayList:Ljava/util/HashMap;

    monitor-enter v6

    .line 90
    const/4 v1, 0x0

    .line 91
    .local v1, addinfor:Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;
    :try_start_0
    sget-object v5, Lcom/android/email/util/EmailAddressCacheProcessor;->mCacheAddressInfoArrayList:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 92
    sget-object v5, Lcom/android/email/util/EmailAddressCacheProcessor;->mCacheAddressInfoArrayList:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;

    move-object v1, v0

    .line 93
    iget v5, v1, Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;->mUsageCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v1, Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;->mUsageCount:I

    .line 97
    :goto_1
    sget-object v5, Lcom/android/email/util/EmailAddressCacheProcessor;->mCacheAddressInfoArrayList:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 95
    :cond_2
    :try_start_1
    new-instance v2, Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;

    const/4 v5, 0x1

    invoke-direct {v2, p0, p1, p2, v5}, Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;-><init>(Ljava/lang/String;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1           #addinfor:Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;
    .local v2, addinfor:Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;
    move-object v1, v2

    .end local v2           #addinfor:Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;
    .restart local v1       #addinfor:Lcom/android/email/util/EmailAddressCacheProcessor$CacheAddressInfo;
    goto :goto_1
.end method

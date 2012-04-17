.class public Lcom/sec/android/provider/logsprovider/LogsProvider;
.super Landroid/content/ContentProvider;
.source "LogsProvider.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final SNS_GET_MSG_RECEIVERS:Landroid/net/Uri;

.field private static final SNS_GET_THREADMSG_RECEIVERS:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String;

.field private static final sDurationProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sIdSearchProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLogsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSevenAccountType:[Ljava/lang/String;

.field private static final sSnsAccountType:[Ljava/lang/String;

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mCallLogInsertionHelper:Lcom/sec/android/provider/logsprovider/CallLogInsertionHelper;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mDbHelper:Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;

.field private mLogInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mUseStrictPhoneNumberComparation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 62
    const-class v0, Lcom/sec/android/provider/logsprovider/LogsProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    .line 64
    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->DBG:Z

    .line 76
    const-string v0, "com.sec.android.app.provider.sns/message/message/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->SNS_GET_MSG_RECEIVERS:Landroid/net/Uri;

    .line 79
    const-string v0, "com.sec.android.app.provider.sns/thread_message/message/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->SNS_GET_THREADMSG_RECEIVERS:Landroid/net/Uri;

    .line 333
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v3, -0x1

    invoke-direct {v0, v3}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 335
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "historys"

    invoke-virtual {v0, v3, v4, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 336
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "historys/#"

    invoke-virtual {v0, v3, v4, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 337
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "historys/filter"

    invoke-virtual {v0, v3, v4, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 339
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "call"

    const/16 v5, 0x14

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 340
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "allcalls"

    const/16 v5, 0x16

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 341
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "call/#"

    invoke-virtual {v0, v3, v4, v8}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 342
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "call/frequent"

    const/16 v5, 0xf

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 343
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "call/del"

    const/16 v5, 0x1a

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 344
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "call/search_log"

    const/16 v5, 0x1f

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 346
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "sms"

    const/16 v5, 0x9

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 347
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "mms"

    const/4 v5, 0x7

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 348
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "email"

    const/16 v5, 0xb

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 349
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "email_seven"

    const/16 v5, 0x13

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 350
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "video_call"

    const/16 v5, 0xd

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 351
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "voip"

    const/16 v5, 0xe

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 353
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "chaton_voip"

    const/16 v5, 0x24

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 354
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "chaton_vt"

    const/16 v5, 0x25

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 356
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "sns"

    const/16 v5, 0x15

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 357
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "im"

    const/16 v5, 0x17

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 358
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "sns_msg_receiver_map"

    const/16 v5, 0x20

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 360
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "search_log"

    const/16 v5, 0x21

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 361
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "msg/receiver/#/*"

    const/16 v5, 0x19

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 362
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "duration"

    const/16 v5, 0x22

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 363
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v3, "logs"

    const-string v4, "addcall"

    const/16 v5, 0x23

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 370
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    .line 371
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "_id"

    const-string v4, "_id"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "number"

    const-string v4, "number"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "address"

    const-string v4, "address"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "date"

    const-string v4, "date"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "duration"

    const-string v4, "duration"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "type"

    const-string v4, "type"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "new"

    const-string v4, "new"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "name"

    const-string v4, "name"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "name_reversed"

    const-string v4, "name_reversed"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "numbertype"

    const-string v4, "numbertype"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "numberlabel"

    const-string v4, "numberlabel"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "voicemail_uri"

    const-string v4, "voicemail_uri"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "is_read"

    const-string v4, "is_read"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "countryiso"

    const-string v4, "countryiso"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "geocoded_location"

    const-string v4, "geocoded_location"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "lookup_uri"

    const-string v4, "lookup_uri"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "matched_number"

    const-string v4, "matched_number"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "normalized_number"

    const-string v4, "normalized_number"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "photo_id"

    const-string v4, "photo_id"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "formatted_number"

    const-string v4, "formatted_number"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "messageid"

    const-string v4, "messageid"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "logtype"

    const-string v4, "logtype"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "frequent"

    const-string v4, "frequent"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "contactid"

    const-string v4, "contactid"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "raw_contact_id"

    const-string v4, "raw_contact_id"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "m_subject"

    const-string v4, "m_subject"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "m_content"

    const-string v4, "m_content"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "sns_tid"

    const-string v4, "sns_tid"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "sp_type"

    const-string v4, "sp_type"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "sns_pkey"

    const-string v4, "sns_pkey"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "account_name"

    const-string v4, "account_name"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "account_id"

    const-string v4, "account_id"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "sns_receiver_count"

    const-string v4, "sns_receiver_count"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "cnap_name"

    const-string v4, "cnap_name"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "cdnip_number"

    const-string v4, "cdnip_number"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "service_type"

    const-string v4, "service_type"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "country_code"

    const-string v4, "country_code"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "cityid"

    const-string v4, "cityid"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "_data"

    const-string v4, "_data"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "has_content"

    const-string v4, "has_content"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "mime_type"

    const-string v4, "mime_type"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "source_data"

    const-string v4, "source_data"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "source_package"

    const-string v4, "source_package"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v3, "state"

    const-string v4, "state"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    .line 422
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "_id"

    const-string v4, "logs._id AS _id"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "number"

    const-string v4, "number"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "address"

    const-string v4, "address"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "date"

    const-string v4, "date"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "duration"

    const-string v4, "duration"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "type"

    const-string v4, "type"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "new"

    const-string v4, "new"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "name"

    const-string v4, "name"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "name_reversed"

    const-string v4, "name_reversed"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "numbertype"

    const-string v4, "numbertype"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "numberlabel"

    const-string v4, "numberlabel"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "voicemail_uri"

    const-string v4, "voicemail_uri"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "is_read"

    const-string v4, "is_read"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "countryiso"

    const-string v4, "countryiso"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "geocoded_location"

    const-string v4, "geocoded_location"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "lookup_uri"

    const-string v4, "lookup_uri"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "matched_number"

    const-string v4, "matched_number"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "normalized_number"

    const-string v4, "normalized_number"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "photo_id"

    const-string v4, "photo_id"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "formatted_number"

    const-string v4, "formatted_number"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "messageid"

    const-string v4, "logs.messageid AS messageid"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "logtype"

    const-string v4, "logtype"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "frequent"

    const-string v4, "frequent"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "contactid"

    const-string v4, "contactid"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "raw_contact_id"

    const-string v4, "raw_contact_id"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "m_subject"

    const-string v4, "m_subject"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "m_content"

    const-string v4, "m_content"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "sns_tid"

    const-string v4, "sns_tid"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "sp_type"

    const-string v4, "sp_type"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "receiver_id"

    const-string v4, "receiver_id"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "receiver_name"

    const-string v4, "receiver_name"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "account_name"

    const-string v4, "account_name"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v3, "account_id"

    const-string v4, "account_id"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    .line 462
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "_id"

    const-string v4, "_id"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "last_voice"

    const-string v4, "last_voice"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "last_video"

    const-string v4, "last_video"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "last_voip"

    const-string v4, "last_voip"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "last_chaton_voip"

    const-string v4, "last_chaton_voip"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "last_chaton_vt"

    const-string v4, "last_chaton_vt"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "dial_voice"

    const-string v4, "dial_voice"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "dial_video"

    const-string v4, "dial_video"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "dial_voip"

    const-string v4, "dial_voip"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "dial_chaton_voip"

    const-string v4, "dial_chaton_voip"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "dial_chaton_vt"

    const-string v4, "dial_chaton_vt"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "rece_voice"

    const-string v4, "rece_voice"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "rece_video"

    const-string v4, "rece_video"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "rece_voip"

    const-string v4, "rece_voip"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "rece_chaton_voip"

    const-string v4, "rece_chaton_voip"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "rece_chaton_vt"

    const-string v4, "rece_chaton_vt"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "all_voice"

    const-string v4, "all_voice"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "all_video"

    const-string v4, "all_video"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "all_voip"

    const-string v4, "all_voip"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "all_chaton_voip"

    const-string v4, "all_chaton_voip"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "all_chaton_vt"

    const-string v4, "all_chaton_vt"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v3, "reset_date"

    const-string v4, "reset_date"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "com.sec.android.app.snsaccountfacebook.account_type"

    aput-object v3, v0, v2

    const-string v3, "com.sec.android.app.snsaccountmyspace.account_type"

    aput-object v3, v0, v1

    const-string v3, "com.sec.android.app.snsaccounttwitter.account_type"

    aput-object v3, v0, v6

    const-string v3, "com.sec.android.app.snsaccountkaixin.account_type"

    aput-object v3, v0, v7

    const-string v3, "com.sec.android.app.snsaccountrenren.account_type"

    aput-object v3, v0, v8

    const/4 v3, 0x5

    const-string v4, "com.sec.android.app.snsaccountqzone.account_type"

    aput-object v4, v0, v3

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sSnsAccountType:[Ljava/lang/String;

    .line 545
    new-array v0, v7, [Ljava/lang/String;

    const-string v3, "com.seven.Z7.msn"

    aput-object v3, v0, v2

    const-string v2, "com.seven.Z7.yahoo"

    aput-object v2, v0, v1

    const-string v1, "com.seven.Z7"

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sSevenAccountType:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 64
    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 82
    return-void
.end method

.method public static concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 1673
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1680
    .end local p1
    :goto_0
    return-object p1

    .line 1676
    .restart local p1
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p1, p0

    .line 1677
    goto :goto_0

    .line 1680
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static updateFrequentContacts(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 14
    .parameter "cr"
    .parameter "values"
    .parameter "number"

    .prologue
    .line 1686
    const-wide/16 v7, 0x0

    .line 1687
    .local v7, ciPerson_id:J
    const/4 v6, 0x0

    .line 1688
    .local v6, ciNormalizedNumber:Ljava/lang/String;
    const/4 v9, 0x0

    .line 1689
    .local v9, ciPhoneNumber:Ljava/lang/String;
    const-string v0, "ci_person_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1690
    const-string v0, "ci_person_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 1691
    const-string v0, "ci_person_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1693
    :cond_0
    const-string v0, "ci_normalizedNumber"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1694
    const-string v0, "ci_normalizedNumber"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1695
    const-string v0, "ci_normalizedNumber"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1697
    :cond_1
    const-string v0, "ci_phoneNumber"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1698
    const-string v0, "ci_phoneNumber"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1699
    const-string v0, "ci_phoneNumber"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1701
    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-lez v0, :cond_4

    .line 1710
    if-eqz v6, :cond_5

    .line 1711
    move-object v12, v6

    .line 1712
    .local v12, normalizedPhoneNumber:Ljava/lang/String;
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v3, "contact_id =? AND data4 =?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x1

    aput-object v12, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1726
    .end local v12           #normalizedPhoneNumber:Ljava/lang/String;
    .local v10, cursor:Landroid/database/Cursor;
    :goto_0
    if-eqz v10, :cond_4

    .line 1728
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1729
    sget-object v0, Landroid/provider/ContactsContract$DataUsageFeedback;->FEEDBACK_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "type"

    const-string v2, "call"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    .line 1734
    .local v11, feedbackUri:Landroid/net/Uri;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v11, v0, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1737
    .end local v11           #feedbackUri:Landroid/net/Uri;
    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1741
    .end local v10           #cursor:Landroid/database/Cursor;
    :cond_4
    return-object p1

    .line 1718
    :cond_5
    if-eqz v9, :cond_6

    move-object v13, v9

    .line 1719
    .local v13, phoneNumber:Ljava/lang/String;
    :goto_1
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v3, "contact_id =? AND data1 =?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x1

    aput-object v13, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .restart local v10       #cursor:Landroid/database/Cursor;
    goto :goto_0

    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v13           #phoneNumber:Ljava/lang/String;
    :cond_6
    move-object/from16 v13, p2

    .line 1718
    goto :goto_1

    .line 1737
    .restart local v10       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static updateLogInfoWithIM(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v11, 0x0

    .line 1899
    const-string v0, "content://com.android.contacts/data/email_im/lookup/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "contact_id"

    aput-object v0, v2, v11

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1906
    if-eqz v10, :cond_10

    .line 1907
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_d

    .line 1908
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1909
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1910
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1912
    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->CONTACT_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1913
    if-eqz v0, :cond_9

    .line 1914
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 1915
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1916
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1917
    const-string v2, "name"

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1918
    const-string v1, "contactid"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1919
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    new-array v6, v8, [Ljava/lang/String;

    const-string v1, "raw_contact_id"

    aput-object v1, v6, v11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data1=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v4, p0

    move-object v8, v3

    move-object v9, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1922
    if-eqz v1, :cond_1

    .line 1923
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1924
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1925
    const-string v2, "raw_contact_id"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1927
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1929
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1930
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1988
    :cond_2
    :goto_0
    return-object p1

    .line 1933
    :cond_3
    const-string v1, "contactid"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1934
    const-string v1, "name"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1935
    const-string v1, "name"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1937
    :cond_4
    const-string v1, "numberlabel"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1938
    const-string v1, "numberlabel"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1940
    :cond_5
    const-string v1, "numbertype"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1941
    const-string v1, "numbertype"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1943
    :cond_6
    const-string v1, "raw_contact_id"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1944
    const-string v1, "raw_contact_id"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1947
    :cond_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1975
    :cond_8
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1949
    :cond_9
    const-string v0, "contactid"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1950
    const-string v0, "name"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1951
    const-string v0, "name"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1953
    :cond_a
    const-string v0, "numberlabel"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1954
    const-string v0, "numberlabel"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1956
    :cond_b
    const-string v0, "numbertype"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1957
    const-string v0, "numbertype"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1959
    :cond_c
    const-string v0, "raw_contact_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1960
    const-string v0, "raw_contact_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_1

    .line 1964
    :cond_d
    const-string v0, "contactid"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1965
    const-string v0, "name"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1966
    const-string v0, "name"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1968
    :cond_e
    const-string v0, "numberlabel"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1969
    const-string v0, "numberlabel"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1971
    :cond_f
    const-string v0, "numbertype"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1972
    const-string v0, "numbertype"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_1

    .line 1978
    :cond_10
    const-string v0, "contactid"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1979
    const-string v0, "name"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1980
    const-string v0, "name"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1982
    :cond_11
    const-string v0, "numberlabel"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1983
    const-string v0, "numberlabel"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1985
    :cond_12
    const-string v0, "numbertype"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1986
    const-string v0, "numbertype"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static updateLogInfoWithNumber(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 12
    .parameter "cr"
    .parameter "value"
    .parameter "number"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 1747
    const/4 v7, 0x0

    .line 1749
    .local v7, phonesCursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1756
    :goto_0
    if-eqz v7, :cond_4

    .line 1757
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 1758
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1759
    const-string v0, "contactid"

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1760
    const-string v0, "name"

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1761
    const-string v0, "numberlabel"

    const/4 v1, 0x3

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1762
    const-string v0, "numbertype"

    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1764
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v11, [Ljava/lang/String;

    const-string v0, "raw_contact_id"

    aput-object v0, v2, v9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data1=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v4, v10

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1767
    .local v8, rawCursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 1768
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1769
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1770
    const-string v0, "raw_contact_id"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1772
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1780
    .end local v8           #rawCursor:Landroid/database/Cursor;
    :cond_1
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1787
    :cond_2
    :goto_2
    return-object p1

    .line 1751
    :catch_0
    move-exception v6

    .line 1752
    .local v6, e:Ljava/lang/Exception;
    const/4 v7, 0x0

    .line 1753
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLogInfoWithNumber -> phonesCursor Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1775
    .end local v6           #e:Ljava/lang/Exception;
    :cond_3
    const-string v0, "contactid"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1776
    const-string v0, "raw_contact_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1777
    const-string v0, "raw_contact_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_1

    .line 1783
    :cond_4
    const-string v0, "contactid"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1784
    const-string v0, "raw_contact_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1785
    const-string v0, "raw_contact_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static updateLogInfoWithNumberAndEmail(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 21
    .parameter "cr"
    .parameter "value"
    .parameter "number"

    .prologue
    .line 1794
    const/16 v19, 0x0

    .line 1796
    .local v19, phonesCursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    .line 1803
    :goto_0
    if-eqz v19, :cond_4

    .line 1804
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 1805
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1806
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 1807
    .local v13, id:J
    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1808
    .local v17, name:Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 1809
    .local v18, numberType:I
    const/4 v2, 0x3

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1811
    .local v15, label:Ljava/lang/String;
    const-string v2, "contactid"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1812
    const-string v2, "name"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1813
    const-string v2, "numberlabel"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1814
    const-string v2, "numbertype"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1815
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "raw_contact_id"

    aput-object v5, v4, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data1=\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 1818
    .local v20, rawCursor:Landroid/database/Cursor;
    if-eqz v20, :cond_1

    .line 1819
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1820
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1821
    const-string v2, "raw_contact_id"

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1823
    :cond_0
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1825
    :cond_1
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 1893
    .end local v13           #id:J
    .end local v15           #label:Ljava/lang/String;
    .end local v17           #name:Ljava/lang/String;
    .end local v18           #numberType:I
    .end local v20           #rawCursor:Landroid/database/Cursor;
    :cond_2
    :goto_1
    return-object p1

    .line 1798
    :catch_0
    move-exception v11

    .line 1799
    .local v11, e:Ljava/lang/Exception;
    const/16 v19, 0x0

    .line 1800
    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateLogInfoWithNumberAndEmail -> phonesCursor Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1828
    .end local v11           #e:Ljava/lang/Exception;
    :cond_3
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 1831
    :cond_4
    const/4 v12, 0x0

    .line 1833
    .local v12, emailCursor:Landroid/database/Cursor;
    :try_start_1
    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->EMAIL_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v12

    .line 1840
    :goto_2
    if-eqz v12, :cond_c

    .line 1841
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_b

    .line 1842
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1843
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 1844
    .restart local v13       #id:J
    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1845
    .local v16, lookupkey:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-static {v13, v14, v0}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1846
    .local v3, uri:Landroid/net/Uri;
    sget-object v4, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->CONTACT_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1847
    .local v10, c2:Landroid/database/Cursor;
    if-eqz v10, :cond_a

    .line 1848
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_7

    .line 1849
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1850
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1851
    .restart local v17       #name:Ljava/lang/String;
    const-string v2, "name"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1852
    const-string v2, "contactid"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1854
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "raw_contact_id"

    aput-object v4, v6, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data1=\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 1857
    .restart local v20       #rawCursor:Landroid/database/Cursor;
    if-eqz v20, :cond_6

    .line 1858
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_5

    .line 1859
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1860
    const-string v2, "raw_contact_id"

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1862
    :cond_5
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1864
    :cond_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1865
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 1835
    .end local v3           #uri:Landroid/net/Uri;
    .end local v10           #c2:Landroid/database/Cursor;
    .end local v13           #id:J
    .end local v16           #lookupkey:Ljava/lang/String;
    .end local v17           #name:Ljava/lang/String;
    .end local v20           #rawCursor:Landroid/database/Cursor;
    :catch_1
    move-exception v11

    .line 1836
    .restart local v11       #e:Ljava/lang/Exception;
    const/4 v12, 0x0

    .line 1837
    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateLogInfoWithNumberAndEmail -> emailCursor Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1868
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v10       #c2:Landroid/database/Cursor;
    .restart local v13       #id:J
    .restart local v16       #lookupkey:Ljava/lang/String;
    :cond_7
    const-string v2, "contactid"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1869
    const-string v2, "raw_contact_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1870
    const-string v2, "raw_contact_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1873
    :cond_8
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1886
    .end local v3           #uri:Landroid/net/Uri;
    .end local v10           #c2:Landroid/database/Cursor;
    .end local v13           #id:J
    .end local v16           #lookupkey:Ljava/lang/String;
    :cond_9
    :goto_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 1875
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v10       #c2:Landroid/database/Cursor;
    .restart local v13       #id:J
    .restart local v16       #lookupkey:Ljava/lang/String;
    :cond_a
    const-string v2, "contactid"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1876
    const-string v2, "raw_contact_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1877
    const-string v2, "raw_contact_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_3

    .line 1881
    .end local v3           #uri:Landroid/net/Uri;
    .end local v10           #c2:Landroid/database/Cursor;
    .end local v13           #id:J
    .end local v16           #lookupkey:Ljava/lang/String;
    :cond_b
    const-string v2, "contactid"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1882
    const-string v2, "raw_contact_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1883
    const-string v2, "raw_contact_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_3

    .line 1889
    :cond_c
    const-string v2, "contactid"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1890
    const-string v2, "raw_contact_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1891
    const-string v2, "raw_contact_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 11
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 1307
    iget-object v7, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDbHelper:Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;

    invoke-virtual {v7}, Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1308
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v7, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v7, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 1310
    .local v3, matchedUriId:I
    const/4 v4, 0x0

    .line 1311
    .local v4, nValue_length:I
    array-length v4, p2

    .line 1312
    sparse-switch v3, :sswitch_data_0

    .line 1428
    const/4 v7, -0x1

    :goto_0
    return v7

    .line 1314
    :sswitch_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1316
    const-wide/16 v5, 0x0

    .line 1317
    .local v5, rowId:J
    :try_start_0
    array-length v7, p2

    const/16 v8, 0x1f4

    if-le v7, v8, :cond_0

    .line 1318
    const/16 v4, 0x1f4

    .line 1319
    :cond_0
    const/4 v1, 0x0

    .local v1, index:I
    :goto_1
    if-ge v1, v4, :cond_d

    .line 1320
    aget-object v7, p2, v1

    const-string v8, "logtype"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1321
    .local v2, logType:I
    aget-object v7, p2, v1

    const-string v8, "logtype"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1322
    sget-object v7, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v8, "pleses insert \'logtype\'"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1323
    const/4 v7, -0x1

    .line 1394
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 1325
    :cond_1
    const/16 v7, 0x64

    if-eq v2, v7, :cond_2

    const/16 v7, 0x6e

    if-eq v2, v7, :cond_2

    const/16 v7, 0x190

    if-eq v2, v7, :cond_2

    const/16 v7, 0x258

    if-eq v2, v7, :cond_2

    const/16 v7, 0xc8

    if-eq v2, v7, :cond_2

    const/16 v7, 0x12c

    if-eq v2, v7, :cond_2

    const/16 v7, 0x2bc

    if-eq v2, v7, :cond_2

    const/16 v7, 0x1f4

    if-eq v2, v7, :cond_2

    const/16 v7, 0x320

    if-eq v2, v7, :cond_2

    const/16 v7, 0x384

    if-eq v2, v7, :cond_2

    const/16 v7, 0x3e8

    if-eq v2, v7, :cond_2

    .line 1338
    :try_start_1
    sget-object v7, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v8, "wrong \'logtype\'"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1339
    const/4 v7, -0x1

    .line 1394
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 1342
    :cond_2
    const/16 v7, 0x64

    if-eq v2, v7, :cond_3

    const/16 v7, 0x6e

    if-eq v2, v7, :cond_3

    const/16 v7, 0x1f4

    if-eq v2, v7, :cond_3

    const/16 v7, 0x320

    if-eq v2, v7, :cond_3

    const/16 v7, 0x384

    if-eq v2, v7, :cond_3

    const/16 v7, 0x3e8

    if-ne v2, v7, :cond_6

    .line 1355
    :cond_3
    :try_start_2
    aget-object v7, p2, v1

    const-string v8, "duration"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1356
    sget-object v7, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v8, "pleses insert \'duration\'"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1357
    const/4 v7, -0x1

    .line 1394
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 1359
    :cond_4
    :try_start_3
    aget-object v7, p2, v1

    const-string v8, "new"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1360
    aget-object v7, p2, v1

    const-string v8, "new"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1362
    :cond_5
    aget-object v7, p2, v1

    const-string v8, "frequent"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1363
    iget-object v7, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    aget-object v8, p2, v1

    aget-object v9, p2, v1

    const-string v10, "number"

    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/sec/android/provider/logsprovider/LogsProvider;->updateLogInfoWithNumber(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 1390
    :goto_2
    const-string v7, "logs"

    const/4 v8, 0x0

    aget-object v9, p2, v1

    invoke-virtual {v0, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 1319
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 1365
    :cond_6
    const/16 v7, 0x190

    if-eq v2, v7, :cond_7

    const/16 v7, 0xc8

    if-eq v2, v7, :cond_7

    const/16 v7, 0x12c

    if-eq v2, v7, :cond_7

    const/16 v7, 0x258

    if-eq v2, v7, :cond_7

    const/16 v7, 0x2bc

    if-ne v2, v7, :cond_c

    .line 1368
    :cond_7
    aget-object v7, p2, v1

    const-string v8, "messageid"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 1369
    sget-object v7, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v8, "pleses insert \'messageid\'"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1370
    const/4 v7, -0x1

    .line 1394
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 1372
    :cond_8
    :try_start_4
    aget-object v7, p2, v1

    const-string v8, "sp_type"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 1373
    sget-object v7, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v8, "insert \'sp_type\'"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1374
    const/4 v7, -0x1

    .line 1394
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 1376
    :cond_9
    const/16 v7, 0x190

    if-ne v2, v7, :cond_b

    .line 1377
    :try_start_5
    aget-object v7, p2, v1

    const-string v8, "new"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 1378
    aget-object v7, p2, v1

    const-string v8, "new"

    const-string v9, "1"

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    :cond_a
    :goto_3
    aget-object v7, p2, v1

    const-string v8, "duration"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1384
    iget-object v7, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    aget-object v8, p2, v1

    aget-object v9, p2, v1

    const-string v10, "number"

    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/sec/android/provider/logsprovider/LogsProvider;->updateLogInfoWithNumberAndEmail(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 1394
    .end local v1           #index:I
    .end local v2           #logType:I
    :catchall_0
    move-exception v7

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v7

    .line 1381
    .restart local v1       #index:I
    .restart local v2       #logType:I
    :cond_b
    :try_start_6
    aget-object v7, p2, v1

    const-string v8, "new"

    const-string v9, "1"

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1387
    :cond_c
    sget-object v7, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v8, "wrong \'logtype\'"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1392
    .end local v2           #logType:I
    :cond_d
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1394
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1396
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyChange()V

    .line 1397
    array-length v7, p2

    goto/16 :goto_0

    .line 1399
    .end local v1           #index:I
    .end local v5           #rowId:J
    :sswitch_1
    array-length v7, p2

    const/16 v8, 0xbb8

    if-le v7, v8, :cond_e

    .line 1400
    const/16 v4, 0xbb8

    .line 1401
    :cond_e
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1403
    const-wide/16 v5, 0x0

    .line 1404
    .restart local v5       #rowId:J
    const/4 v1, 0x0

    .restart local v1       #index:I
    :goto_4
    if-ge v1, v4, :cond_f

    .line 1405
    :try_start_7
    const-string v7, "logs"

    const/4 v8, 0x0

    aget-object v9, p2, v1

    invoke-virtual {v0, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 1404
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1407
    :cond_f
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1409
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1411
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyChange()V

    .line 1412
    array-length v7, p2

    goto/16 :goto_0

    .line 1409
    :catchall_1
    move-exception v7

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v7

    .line 1414
    .end local v1           #index:I
    .end local v5           #rowId:J
    :sswitch_2
    array-length v7, p2

    const/16 v8, 0xbb8

    if-le v7, v8, :cond_10

    .line 1415
    const/16 v4, 0xbb8

    .line 1416
    :cond_10
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1418
    const-wide/16 v5, 0x0

    .line 1419
    .restart local v5       #rowId:J
    const/4 v1, 0x0

    .restart local v1       #index:I
    :goto_5
    if-ge v1, v4, :cond_11

    .line 1420
    :try_start_8
    const-string v7, "sns_msg_receiver_map"

    const/4 v8, 0x0

    aget-object v9, p2, v1

    invoke-virtual {v0, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 1419
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1422
    :cond_11
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1424
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1426
    array-length v7, p2

    goto/16 :goto_0

    .line 1424
    :catchall_2
    move-exception v7

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v7

    .line 1312
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x15 -> :sswitch_1
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method protected createCallLogInsertionHelper(Landroid/content/Context;)Lcom/sec/android/provider/logsprovider/CallLogInsertionHelper;
    .locals 1
    .parameter "context"

    .prologue
    .line 527
    invoke-static {p1}, Lcom/sec/android/provider/logsprovider/DefaultCallLogInsertionHelper;->getInstance(Landroid/content/Context;)Lcom/sec/android/provider/logsprovider/DefaultCallLogInsertionHelper;

    move-result-object v0

    return-object v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 15
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 1502
    iget-object v12, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDbHelper:Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;

    invoke-virtual {v12}, Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1503
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v12, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    .line 1504
    .local v5, match:I
    const/4 v3, 0x0

    .line 1505
    .local v3, count:I
    const-wide/16 v6, 0x0

    .line 1506
    .local v6, t:J
    const-wide/16 v8, 0x0

    .line 1507
    .local v8, t2:J
    const-string v2, " (logtype=500 OR logtype=800 OR logtype=100 OR logtype=110 OR logtype=900 OR logtype=1000 OR (logs.logtype=200 AND number NOT IN (SELECT number FROM logs WHERE number LIKE \'%@%\')) OR logtype=300)"

    .line 1515
    .local v2, addedSelection:Ljava/lang/String;
    sparse-switch v5, :sswitch_data_0

    .line 1654
    new-instance v12, Ljava/lang/UnsupportedOperationException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot delete that URL: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1517
    :sswitch_0
    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/sec/android/provider/logsprovider/LogsProvider;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1518
    .local v10, where:Ljava/lang/String;
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1520
    :try_start_0
    const-string v12, "logs"

    move-object/from16 v0, p3

    invoke-virtual {v4, v12, v10, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 1521
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1523
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1656
    .end local v10           #where:Ljava/lang/String;
    :goto_0
    if-lez v3, :cond_0

    .line 1657
    sparse-switch v5, :sswitch_data_1

    .line 1667
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyChange()V

    .line 1669
    :cond_0
    return v3

    .line 1523
    .restart local v10       #where:Ljava/lang/String;
    :catchall_0
    move-exception v12

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v12

    .line 1528
    .end local v10           #where:Ljava/lang/String;
    :sswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1529
    if-eqz p2, :cond_1

    .line 1530
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " AND"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1534
    :goto_2
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1536
    :try_start_1
    const-string v12, "logs"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v12, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 1537
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1539
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1541
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v8, v12, v6

    .line 1542
    sget-object v12, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "delete time : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1532
    :cond_1
    move-object/from16 p2, v2

    goto :goto_2

    .line 1539
    :catchall_1
    move-exception v12

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v12

    .line 1547
    :sswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1548
    if-eqz p2, :cond_2

    .line 1549
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " AND"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1553
    :goto_3
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1555
    :try_start_2
    const-string v12, "logs"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v12, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 1556
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1558
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1560
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v8, v12, v6

    .line 1561
    sget-object v12, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "delete time : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1551
    :cond_2
    move-object/from16 p2, v2

    goto :goto_3

    .line 1558
    :catchall_2
    move-exception v12

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v12

    .line 1565
    :sswitch_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1566
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1568
    :try_start_3
    sget-object v12, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "delete : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    const-string v12, "logs"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v12, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 1570
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1572
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1574
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v8, v12, v6

    .line 1575
    sget-object v12, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "delete time : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1572
    :catchall_3
    move-exception v12

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v12

    .line 1579
    :sswitch_4
    const-string v11, " (logtype=400)"

    .line 1580
    .local v11, where3:Ljava/lang/String;
    if-eqz p2, :cond_3

    .line 1581
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " AND"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1585
    :goto_4
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1587
    :try_start_4
    const-string v12, "logs"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v12, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 1588
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 1590
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 1583
    :cond_3
    move-object/from16 p2, v11

    goto :goto_4

    .line 1590
    :catchall_4
    move-exception v12

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v12

    .line 1595
    .end local v11           #where3:Ljava/lang/String;
    :sswitch_5
    const-string v11, " (logtype=410)"

    .line 1596
    .restart local v11       #where3:Ljava/lang/String;
    if-eqz p2, :cond_4

    .line 1597
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " AND"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1601
    :goto_5
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1603
    :try_start_5
    const-string v12, "logs"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v12, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 1604
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 1606
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 1599
    :cond_4
    move-object/from16 p2, v11

    goto :goto_5

    .line 1606
    :catchall_5
    move-exception v12

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v12

    .line 1611
    .end local v11           #where3:Ljava/lang/String;
    :sswitch_6
    const-string v11, " (logtype=600)"

    .line 1612
    .restart local v11       #where3:Ljava/lang/String;
    if-eqz p2, :cond_5

    .line 1613
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " AND"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1617
    :goto_6
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1619
    :try_start_6
    const-string v12, "logs"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v12, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 1620
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 1622
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 1615
    :cond_5
    move-object/from16 p2, v11

    goto :goto_6

    .line 1622
    :catchall_6
    move-exception v12

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v12

    .line 1627
    .end local v11           #where3:Ljava/lang/String;
    :sswitch_7
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1629
    :try_start_7
    const-string v12, "sns_msg_receiver_map"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v12, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 1630
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 1632
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    :catchall_7
    move-exception v12

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v12

    .line 1637
    :sswitch_8
    const-string v10, " (logtype=700)"

    .line 1638
    .restart local v10       #where:Ljava/lang/String;
    if-eqz p2, :cond_6

    .line 1639
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " AND"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1643
    :goto_7
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1645
    :try_start_8
    sget-object v12, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "delete : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    const-string v12, "logs"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v12, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 1647
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 1649
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 1641
    :cond_6
    move-object/from16 p2, v10

    goto :goto_7

    .line 1649
    :catchall_8
    move-exception v12

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v12

    .line 1663
    .end local v10           #where:Ljava/lang/String;
    :sswitch_9
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyAllCallsChange()V

    .line 1664
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyCallChange()V

    goto/16 :goto_1

    .line 1515
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0xb -> :sswitch_4
        0x13 -> :sswitch_5
        0x14 -> :sswitch_0
        0x15 -> :sswitch_6
        0x16 -> :sswitch_1
        0x17 -> :sswitch_8
        0x1a -> :sswitch_2
        0x20 -> :sswitch_7
    .end sparse-switch

    .line 1657
    :sswitch_data_1
    .sparse-switch
        0x7 -> :sswitch_9
        0x9 -> :sswitch_9
        0x14 -> :sswitch_9
        0x16 -> :sswitch_9
        0x1a -> :sswitch_9
    .end sparse-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .parameter "uri"

    .prologue
    .line 914
    sget-object v1, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 915
    .local v0, match:I
    packed-switch v0, :pswitch_data_0

    .line 919
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 917
    :pswitch_0
    const-string v1, "vnd.android.cursor.item/calls"

    return-object v1

    .line 915
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 13
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 925
    iget-object v9, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mLogInserter:Landroid/database/DatabaseUtils$InsertHelper;

    if-nez v9, :cond_0

    .line 926
    iget-object v9, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDbHelper:Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;

    invoke-virtual {v9}, Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 927
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v9, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v10, "logs"

    invoke-direct {v9, v3, v10}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v9, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mLogInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 930
    .end local v3           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v9, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    .line 931
    .local v5, match:I
    const-wide/16 v7, 0x0

    .line 932
    .local v7, rowId:J
    const-string v9, "type"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 933
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'type\' data"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    const/4 v9, 0x0

    .line 1302
    :goto_0
    return-object v9

    .line 937
    :cond_1
    sparse-switch v5, :sswitch_data_0

    .line 1198
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "wrong uri"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    const/4 v9, 0x0

    goto :goto_0

    .line 939
    :sswitch_0
    const-string v9, "number"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 940
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'number\' data"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    const/4 v9, 0x0

    goto :goto_0

    .line 943
    :cond_2
    const-string v9, "duration"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 944
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'duration\' data"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    const/4 v9, 0x0

    goto :goto_0

    .line 947
    :cond_3
    const-string v9, "new"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 948
    const-string v9, "new"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 950
    :cond_4
    const-string v9, "logtype"

    const/16 v10, 0x1f4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 951
    const-string v9, "frequent"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1202
    :goto_1
    sparse-switch v5, :sswitch_data_1

    .line 1225
    :goto_2
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 1226
    .local v2, copiedValues:Landroid/content/ContentValues;
    iget-object v9, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mCallLogInsertionHelper:Lcom/sec/android/provider/logsprovider/CallLogInsertionHelper;

    invoke-interface {v9, v2}, Lcom/sec/android/provider/logsprovider/CallLogInsertionHelper;->addComputedValues(Landroid/content/ContentValues;)V

    .line 1227
    iget-object v9, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mLogInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v9, v2}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v7

    .line 1229
    const/4 v0, 0x0

    .line 1230
    .local v0, IsOnlyCalls:Z
    sparse-switch v5, :sswitch_data_2

    .line 1247
    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyChange()V

    .line 1249
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-lez v9, :cond_35

    .line 1251
    sget-boolean v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->DBG:Z

    if-eqz v9, :cond_5

    .line 1252
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "insert data - logtype : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "logtype"

    invoke-virtual {p2, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " number : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "number"

    invoke-virtual {p2, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " contactid : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "contactid"

    invoke-virtual {p2, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " name : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "name"

    invoke-virtual {p2, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " messageid : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "messageid"

    invoke-virtual {p2, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    :cond_5
    sparse-switch v5, :sswitch_data_3

    .line 1298
    :goto_4
    invoke-static {p1, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    goto/16 :goto_0

    .line 956
    .end local v0           #IsOnlyCalls:Z
    .end local v2           #copiedValues:Landroid/content/ContentValues;
    :sswitch_1
    const-string v9, "number"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 957
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'number\' data"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 960
    :cond_6
    const-string v9, "duration"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 961
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'duration\' data"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 964
    :cond_7
    const-string v9, "new"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 965
    const-string v9, "new"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 967
    :cond_8
    const-string v9, "logtype"

    const/16 v10, 0x320

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 968
    const-string v9, "frequent"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 973
    :sswitch_2
    const-string v9, "number"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 974
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'number\' data"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 977
    :cond_9
    const-string v9, "duration"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 978
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'duration\' data"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 981
    :cond_a
    const-string v9, "new"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 982
    const-string v9, "new"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 984
    :cond_b
    const-string v9, "logtype"

    const/16 v10, 0x384

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 985
    const-string v9, "frequent"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 990
    :sswitch_3
    const-string v9, "number"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 991
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'number\' data"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 994
    :cond_c
    const-string v9, "duration"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_d

    .line 995
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'duration\' data"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 998
    :cond_d
    const-string v9, "new"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_e

    .line 999
    const-string v9, "new"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1001
    :cond_e
    const-string v9, "logtype"

    const/16 v10, 0x3e8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1002
    const-string v9, "frequent"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 1007
    :sswitch_4
    const-string v9, "number"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_f

    .line 1008
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'number\' data"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1011
    :cond_f
    const-string v9, "duration"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_10

    .line 1012
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'duration\' data"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1015
    :cond_10
    const-string v9, "new"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_11

    .line 1016
    const-string v9, "new"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1018
    :cond_11
    const-string v9, "logtype"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_12

    .line 1019
    const-string v9, "logtype"

    const/16 v10, 0x64

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1021
    :cond_12
    const-string v9, "frequent"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 1024
    :sswitch_5
    const-string v9, "number"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_13

    .line 1025
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'number\' data"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1028
    :cond_13
    const-string v9, "messageid"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_14

    .line 1029
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'messageid\'"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1032
    :cond_14
    const-string v9, "logtype"

    const/16 v10, 0x12c

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1033
    const-string v9, "duration"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1034
    const-string v9, "new"

    const-string v10, "1"

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1037
    :sswitch_6
    const-string v9, "number"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_15

    .line 1038
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'number\' data"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1041
    :cond_15
    const-string v9, "messageid"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_16

    .line 1042
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'messageid\'"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1045
    :cond_16
    const-string v9, "logtype"

    const/16 v10, 0xc8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1046
    const-string v9, "duration"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1047
    const-string v9, "new"

    const-string v10, "1"

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1050
    :sswitch_7
    const-string v9, "address"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_17

    .line 1051
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'address\' data"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1054
    :cond_17
    const-string v9, "address"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1055
    .local v1, ad:Ljava/lang/String;
    const-string v9, "number"

    invoke-virtual {p2, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    const-string v9, "messageid"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_18

    .line 1058
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'messageid\'"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1061
    :cond_18
    const-string v9, "sp_type"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_19

    .line 1062
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'sp_type\'"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1065
    :cond_19
    const-string v9, "logtype"

    const/16 v10, 0x2bc

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1066
    const-string v9, "duration"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1067
    const-string v9, "new"

    const-string v10, "1"

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1070
    .end local v1           #ad:Ljava/lang/String;
    :sswitch_8
    const-string v9, "number"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1a

    .line 1071
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'number\' data"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1074
    :cond_1a
    const-string v9, "messageid"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1b

    .line 1075
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'messageid\'"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1078
    :cond_1b
    const-string v9, "new"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1c

    .line 1079
    const-string v9, "new"

    const-string v10, "1"

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    :cond_1c
    const-string v9, "logtype"

    const/16 v10, 0x190

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1082
    const-string v9, "duration"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 1085
    :sswitch_9
    const-string v9, "address"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1d

    .line 1086
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'address\' data"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1089
    :cond_1d
    const-string v9, "address"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1090
    .restart local v1       #ad:Ljava/lang/String;
    const-string v9, "number"

    invoke-virtual {p2, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    const-string v9, "messageid"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1e

    .line 1094
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'messageid\'"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1097
    :cond_1e
    const-string v9, "account_name"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1f

    .line 1098
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'account_name\'"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1101
    :cond_1f
    const-string v9, "sp_type"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_20

    .line 1102
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'sp_type\'"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1105
    :cond_20
    const-string v9, "new"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_21

    .line 1106
    const-string v9, "new"

    const-string v10, "1"

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    :cond_21
    const-string v9, "logtype"

    const/16 v10, 0x19a

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1109
    const-string v9, "duration"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 1112
    .end local v1           #ad:Ljava/lang/String;
    :sswitch_a
    const-string v9, "number"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_22

    .line 1113
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'number\' data"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1116
    :cond_22
    const-string v9, "messageid"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_23

    .line 1117
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'messageid\'"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1120
    :cond_23
    const-string v9, "sp_type"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_24

    .line 1121
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'sp_type\'"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1124
    :cond_24
    const-string v9, "contactid"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_25

    .line 1125
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1127
    :cond_25
    const-string v9, "logtype"

    const/16 v10, 0x258

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1128
    const-string v9, "duration"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1129
    const-string v9, "new"

    const-string v10, "1"

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1132
    :sswitch_b
    const-string v9, "logtype"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1133
    .local v4, logType:I
    const-string v9, "logtype"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_26

    .line 1134
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'logtype\'"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1137
    :cond_26
    const/16 v9, 0x64

    if-eq v4, v9, :cond_27

    const/16 v9, 0x6e

    if-eq v4, v9, :cond_27

    const/16 v9, 0x190

    if-eq v4, v9, :cond_27

    const/16 v9, 0x258

    if-eq v4, v9, :cond_27

    const/16 v9, 0xc8

    if-eq v4, v9, :cond_27

    const/16 v9, 0x12c

    if-eq v4, v9, :cond_27

    const/16 v9, 0x2bc

    if-eq v4, v9, :cond_27

    const/16 v9, 0x1f4

    if-eq v4, v9, :cond_27

    .line 1144
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "wrong \'logtype\'"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1148
    :cond_27
    const/16 v9, 0x64

    if-eq v4, v9, :cond_28

    const/16 v9, 0x6e

    if-eq v4, v9, :cond_28

    const/16 v9, 0x1f4

    if-ne v4, v9, :cond_2b

    .line 1150
    :cond_28
    const-string v9, "duration"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_29

    .line 1151
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'duration\'"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1154
    :cond_29
    const-string v9, "new"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2a

    .line 1155
    const-string v9, "new"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1157
    :cond_2a
    const-string v9, "frequent"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 1159
    :cond_2b
    const/16 v9, 0x190

    if-eq v4, v9, :cond_2c

    const/16 v9, 0xc8

    if-eq v4, v9, :cond_2c

    const/16 v9, 0x12c

    if-eq v4, v9, :cond_2c

    const/16 v9, 0x258

    if-eq v4, v9, :cond_2c

    const/16 v9, 0x2bc

    if-ne v4, v9, :cond_31

    .line 1162
    :cond_2c
    const-string v9, "messageid"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2d

    .line 1163
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'messageid\'"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1166
    :cond_2d
    const-string v9, "sp_type"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2e

    .line 1167
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "insert \'sp_type\'"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1170
    :cond_2e
    const/16 v9, 0x190

    if-ne v4, v9, :cond_30

    .line 1171
    const-string v9, "new"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2f

    .line 1172
    const-string v9, "new"

    const-string v10, "1"

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    :cond_2f
    :goto_5
    const-string v9, "duration"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 1175
    :cond_30
    const-string v9, "new"

    const-string v10, "1"

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1179
    :cond_31
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "wrong \'logtype\'"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1183
    .end local v4           #logType:I
    :sswitch_c
    const-string v9, "number"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_32

    .line 1184
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'number\' data"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1187
    :cond_32
    const-string v9, "duration"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_33

    .line 1188
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "pleses insert \'duration\' data"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1191
    :cond_33
    const-string v9, "new"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_34

    .line 1192
    const-string v9, "new"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1194
    :cond_34
    const-string v9, "frequent"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 1208
    :sswitch_d
    const-string v9, "number"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1209
    .local v6, number:Ljava/lang/String;
    iget-object v9, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v9, p2, v6}, Lcom/sec/android/provider/logsprovider/LogsProvider;->updateFrequentContacts(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 1210
    iget-object v9, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v9, p2, v6}, Lcom/sec/android/provider/logsprovider/LogsProvider;->updateLogInfoWithNumber(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;

    goto/16 :goto_2

    .line 1216
    .end local v6           #number:Ljava/lang/String;
    :sswitch_e
    iget-object v9, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "number"

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, p2, v10}, Lcom/sec/android/provider/logsprovider/LogsProvider;->updateLogInfoWithNumberAndEmail(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;

    goto/16 :goto_2

    .line 1220
    :sswitch_f
    iget-object v9, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "number"

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, p2, v10}, Lcom/sec/android/provider/logsprovider/LogsProvider;->updateLogInfoWithIM(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;

    goto/16 :goto_2

    .line 1237
    .restart local v0       #IsOnlyCalls:Z
    .restart local v2       #copiedValues:Landroid/content/ContentValues;
    :sswitch_10
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyAllCallsChange()V

    .line 1238
    const/4 v0, 0x0

    .line 1239
    goto/16 :goto_3

    .line 1241
    :sswitch_11
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyAllCallsChange()V

    .line 1242
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyCallChange()V

    .line 1243
    const/4 v0, 0x1

    goto/16 :goto_3

    .line 1265
    :sswitch_12
    iget-object v9, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v10, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->CONTENT_URI:Landroid/net/Uri;

    const-string v11, "_id in (select _id from logs where logtype=100 OR logtype=500 OR logtype=800 OR logtype=900 OR logtype=1000 ORDER BY date DESC limit -1 offset 500)"

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1275
    :sswitch_13
    iget-object v9, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v10, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->CONTENT_URI:Landroid/net/Uri;

    const-string v11, "_id in (select _id from logs where logtype=300 OR logtype=200 ORDER BY date DESC limit -1 offset 500)"

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1281
    :sswitch_14
    iget-object v9, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v10, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->CONTENT_URI:Landroid/net/Uri;

    const-string v11, "_id in (select _id from logs where logtype=700 ORDER BY date DESC limit -1 offset 500)"

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1287
    :sswitch_15
    iget-object v9, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v10, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->CONTENT_URI:Landroid/net/Uri;

    const-string v11, "_id in (select _id from logs where logtype=400 OR logtype=410 ORDER BY date DESC limit -1 offset 500)"

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1293
    :sswitch_16
    iget-object v9, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v10, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->CONTENT_URI:Landroid/net/Uri;

    const-string v11, "_id in (select _id from logs where logtype=600 ORDER BY date DESC limit -1 offset 3000)"

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1300
    :cond_35
    sget-object v9, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v10, "insert falled. check input data"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 937
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_b
        0x7 -> :sswitch_6
        0x9 -> :sswitch_5
        0xb -> :sswitch_8
        0xd -> :sswitch_0
        0xe -> :sswitch_1
        0x13 -> :sswitch_9
        0x14 -> :sswitch_4
        0x15 -> :sswitch_a
        0x17 -> :sswitch_7
        0x23 -> :sswitch_c
        0x24 -> :sswitch_2
        0x25 -> :sswitch_3
    .end sparse-switch

    .line 1202
    :sswitch_data_1
    .sparse-switch
        0x7 -> :sswitch_e
        0x9 -> :sswitch_e
        0xb -> :sswitch_e
        0xd -> :sswitch_d
        0xe -> :sswitch_d
        0x13 -> :sswitch_e
        0x14 -> :sswitch_d
        0x17 -> :sswitch_f
        0x24 -> :sswitch_d
        0x25 -> :sswitch_d
    .end sparse-switch

    .line 1230
    :sswitch_data_2
    .sparse-switch
        0x7 -> :sswitch_10
        0x9 -> :sswitch_10
        0xd -> :sswitch_10
        0xe -> :sswitch_10
        0x14 -> :sswitch_11
        0x24 -> :sswitch_10
        0x25 -> :sswitch_10
    .end sparse-switch

    .line 1258
    :sswitch_data_3
    .sparse-switch
        0x7 -> :sswitch_13
        0x9 -> :sswitch_13
        0xb -> :sswitch_15
        0xd -> :sswitch_12
        0xe -> :sswitch_12
        0x13 -> :sswitch_15
        0x14 -> :sswitch_12
        0x15 -> :sswitch_16
        0x17 -> :sswitch_14
        0x23 -> :sswitch_12
        0x24 -> :sswitch_12
        0x25 -> :sswitch_12
    .end sparse-switch
.end method

.method protected notifyAllCallsChange()V
    .locals 4

    .prologue
    .line 2001
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://logs/allcalls"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 2003
    return-void
.end method

.method protected notifyCallChange()V
    .locals 4

    .prologue
    .line 1997
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1998
    return-void
.end method

.method protected notifyChange()V
    .locals 4

    .prologue
    .line 1993
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1994
    return-void
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 23
    .parameter "arg0"

    .prologue
    .line 555
    const/4 v14, 0x0

    .line 556
    .local v14, accountsOnMgr:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v15

    .line 558
    .local v15, am:Landroid/accounts/AccountManager;
    if-nez v15, :cond_1

    .line 647
    :cond_0
    :goto_0
    return-void

    .line 561
    :cond_1
    const/16 v22, 0x0

    .local v22, spType:I
    :goto_1
    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsProvider;->sSnsAccountType:[Ljava/lang/String;

    array-length v2, v2

    move/from16 v0, v22

    if-ge v0, v2, :cond_3

    .line 562
    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsProvider;->sSnsAccountType:[Ljava/lang/String;

    aget-object v2, v2, v22

    invoke-virtual {v15, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v10

    .line 563
    .local v10, accountSNS:[Landroid/accounts/Account;
    array-length v2, v10

    if-nez v2, :cond_2

    .line 564
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 565
    .local v21, sb:Ljava/lang/StringBuilder;
    const-string v2, "logtype=600"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND sp_type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 569
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "logs"

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 570
    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAccountsUpdated: Delete SNS log : spType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 561
    .end local v21           #sb:Ljava/lang/StringBuilder;
    :cond_2
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 573
    .restart local v21       #sb:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 578
    .end local v10           #accountSNS:[Landroid/accounts/Account;
    .end local v21           #sb:Ljava/lang/StringBuilder;
    :cond_3
    const/16 v22, 0x0

    :goto_2
    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsProvider;->sSevenAccountType:[Ljava/lang/String;

    array-length v2, v2

    move/from16 v0, v22

    if-ge v0, v2, :cond_5

    .line 579
    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsProvider;->sSevenAccountType:[Ljava/lang/String;

    aget-object v2, v2, v22

    invoke-virtual {v15, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v11

    .line 580
    .local v11, accountSeven:[Landroid/accounts/Account;
    if-eqz v11, :cond_4

    .line 581
    array-length v2, v11

    add-int/2addr v14, v2

    .line 578
    :cond_4
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    .line 584
    .end local v11           #accountSeven:[Landroid/accounts/Account;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDbHelper:Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 585
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/16 v17, 0x0

    .line 586
    .local v17, c:Landroid/database/Cursor;
    const-string v2, "logs"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "logtype"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "account_name"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "sp_type"

    aput-object v5, v3, v4

    const-string v4, "logtype=410 AND sp_type != 4 AND sp_type != 3 AND sp_type !=  0"

    const/4 v5, 0x0

    const-string v6, "account_name"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 598
    const/4 v13, -0x1

    .line 599
    .local v13, accountsOnLogs:I
    if-eqz v17, :cond_0

    .line 600
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v13

    .line 604
    if-eq v13, v14, :cond_b

    if-lez v13, :cond_b

    .line 605
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    .line 607
    const/16 v18, 0x0

    .local v18, i:I
    move/from16 v19, v18

    .end local v18           #i:I
    .local v19, i:I
    :goto_3
    add-int/lit8 v18, v19, 0x1

    .end local v19           #i:I
    .restart local v18       #i:I
    move/from16 v0, v19

    if-ge v0, v13, :cond_b

    .line 608
    const/16 v16, 0x0

    .line 609
    .local v16, bExist:Z
    const/4 v12, 0x0

    .line 610
    .local v12, accounts:Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 612
    if-nez v12, :cond_7

    .line 607
    :cond_6
    :goto_4
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move/from16 v19, v18

    .end local v18           #i:I
    .restart local v19       #i:I
    goto :goto_3

    .line 615
    .end local v19           #i:I
    .restart local v18       #i:I
    :cond_7
    const/16 v22, 0x0

    :goto_5
    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsProvider;->sSevenAccountType:[Ljava/lang/String;

    array-length v2, v2

    move/from16 v0, v22

    if-ge v0, v2, :cond_a

    .line 616
    if-nez v16, :cond_8

    .line 617
    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsProvider;->sSevenAccountType:[Ljava/lang/String;

    aget-object v2, v2, v22

    invoke-virtual {v15, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v11

    .line 618
    .restart local v11       #accountSeven:[Landroid/accounts/Account;
    if-eqz v11, :cond_8

    .line 619
    array-length v2, v11

    if-lez v2, :cond_8

    .line 621
    const/16 v20, 0x0

    .local v20, index:I
    :goto_6
    array-length v2, v11

    move/from16 v0, v20

    if-ge v0, v2, :cond_8

    .line 622
    aget-object v2, v11, v20

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsProvider;->sSevenAccountType:[Ljava/lang/String;

    aget-object v2, v2, v22

    aget-object v3, v11, v20

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 625
    const/16 v16, 0x1

    .line 626
    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is existed on AccountManager and sp_type is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/android/provider/logsprovider/LogsProvider;->sSevenAccountType:[Ljava/lang/String;

    aget-object v4, v4, v22

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    .end local v11           #accountSeven:[Landroid/accounts/Account;
    .end local v20           #index:I
    :cond_8
    add-int/lit8 v22, v22, 0x1

    goto :goto_5

    .line 621
    .restart local v11       #accountSeven:[Landroid/accounts/Account;
    .restart local v20       #index:I
    :cond_9
    add-int/lit8 v20, v20, 0x1

    goto :goto_6

    .line 637
    .end local v11           #accountSeven:[Landroid/accounts/Account;
    .end local v20           #index:I
    :cond_a
    if-nez v16, :cond_6

    .line 640
    const-string v2, "content://logs/email_seven"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "account_name=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/android/provider/logsprovider/LogsProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 642
    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delete from Logs account_name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 646
    .end local v12           #accounts:Ljava/lang/String;
    .end local v16           #bExist:Z
    .end local v18           #i:I
    :cond_b
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public onCreate()Z
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 506
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v1, "LogsProvider.onCreate start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContext:Landroid/content/Context;

    .line 510
    new-instance v0, Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;

    iget-object v1, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDbHelper:Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;

    .line 511
    iget-object v0, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mUseStrictPhoneNumberComparation:Z

    .line 513
    iget-object v0, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->createCallLogInsertionHelper(Landroid/content/Context;)Lcom/sec/android/provider/logsprovider/CallLogInsertionHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mCallLogInsertionHelper:Lcom/sec/android/provider/logsprovider/CallLogInsertionHelper;

    .line 515
    iget-object v0, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDbHelper:Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 516
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    iget-object v1, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "logs"

    invoke-direct {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mLogInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 517
    iget-object v0, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    .line 518
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 519
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v1, "LogsProvider.onCreate finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->verifyAccounts()V

    .line 523
    const/4 v0, 0x1

    return v0
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 651
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v1, "LOWMEMORY"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    invoke-super {p0}, Landroid/content/ContentProvider;->onLowMemory()V

    .line 653
    return-void
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 26
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 658
    new-instance v10, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v10}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 659
    .local v10, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setStrict(Z)V

    .line 660
    new-instance v23, Lcom/sec/android/provider/logsprovider/util/SelectionBuilder;

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/sec/android/provider/logsprovider/util/SelectionBuilder;-><init>(Ljava/lang/String;)V

    .line 662
    .local v23, selectionBuilder:Lcom/sec/android/provider/logsprovider/util/SelectionBuilder;
    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v21

    .line 664
    .local v21, match:I
    packed-switch v21, :pswitch_data_0

    .line 698
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 701
    :pswitch_1
    const/4 v9, 0x0

    .line 702
    .local v9, groupby:Ljava/lang/String;
    const-string v2, "logs"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 703
    packed-switch v21, :pswitch_data_1

    .line 869
    :pswitch_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 706
    :pswitch_3
    const-string v9, "number"

    .line 708
    :pswitch_4
    const-string v2, "logs.logtype=100"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 709
    const-string v2, " OR logs.logtype=110"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 717
    const-string v2, " OR logs.logtype=500"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 718
    const-string v2, " OR logs.logtype=800"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 719
    const-string v2, " OR logs.logtype=900"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 720
    const-string v2, " OR logs.logtype=1000"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 721
    const-string v2, " OR (logs.logtype=200 AND number NOT IN (SELECT number FROM logs WHERE number LIKE \'%@%\'))"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 723
    const-string v2, " OR logs.logtype=300"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 872
    :goto_0
    :pswitch_5
    const/16 v2, 0x21

    move/from16 v0, v21

    if-ne v0, v2, :cond_4

    .line 873
    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 882
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDbHelper:Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 884
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez p5, :cond_0

    .line 885
    const-string p5, "date DESC"

    .line 888
    :cond_0
    const/16 v19, 0x0

    .line 889
    .local v19, c:Landroid/database/Cursor;
    const/16 v2, 0xf

    move/from16 v0, v21

    if-ne v0, v2, :cond_6

    .line 890
    const-string v5, "logs"

    const/4 v2, 0x5

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v7, "1 as _id"

    aput-object v7, v6, v2

    const/4 v2, 0x1

    const-string v7, "name"

    aput-object v7, v6, v2

    const/4 v2, 0x2

    const-string v7, "number"

    aput-object v7, v6, v2

    const/4 v2, 0x3

    const-string v7, "COUNT(number)AS count"

    aput-object v7, v6, v2

    const/4 v2, 0x4

    const-string v7, "contactid"

    aput-object v7, v6, v2

    const-string v7, "type=2 AND frequent=1"

    const/4 v8, 0x0

    const/4 v10, 0x0

    const-string v11, "count desc"

    .end local v10           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v12, "12"

    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 906
    :goto_2
    if-eqz v19, :cond_1

    .line 907
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v5, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v19

    invoke-interface {v0, v2, v5}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 909
    .end local v4           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v19           #c:Landroid/database/Cursor;
    :cond_1
    :goto_3
    return-object v19

    .line 729
    .restart local v10       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    :pswitch_6
    const-string v2, "logs left outer join sns_msg_receiver_map on logs.sns_pkey=sns_msg_receiver_map.message_id"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 731
    const-string v9, "logs._id"

    .line 732
    goto :goto_0

    .line 736
    :pswitch_7
    const-string v2, "(logs.logtype=100"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 737
    const-string v2, " OR logs.logtype=110"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 745
    const-string v2, " OR logs.logtype=500"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 746
    const-string v2, " OR logs.logtype=800"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 747
    const-string v2, " OR logs.logtype=300"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 748
    const-string v2, " OR (logs.logtype=200 AND number NOT IN (SELECT number FROM logs WHERE number LIKE \'%@%\')))"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 750
    const-string v2, " AND logs._id="

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 751
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v5, 0x1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 755
    :pswitch_8
    const-string v9, "number"

    .line 756
    goto/16 :goto_0

    .line 759
    :pswitch_9
    const-string v2, "logs.logtype=300"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 763
    :pswitch_a
    const-string v2, "logs.logtype=200"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 767
    :pswitch_b
    const-string v2, "logs.logtype=400 OR logs.logtype=410"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 772
    :pswitch_c
    const-string v2, "logs.logtype=410"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 776
    :pswitch_d
    const-string v2, "logs.logtype=500"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 780
    :pswitch_e
    const-string v2, "logs.logtype=800"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 784
    :pswitch_f
    const-string v2, "logs.logtype=900"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 788
    :pswitch_10
    const-string v2, "logs.logtype=1000"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 792
    :pswitch_11
    const-string v2, "logs.logtype=600"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 796
    :pswitch_12
    const-string v2, "logs.logtype=700"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 820
    :pswitch_13
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v5, 0x2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 821
    .local v22, phoneNumber:Ljava/lang/String;
    const-string v2, "PHONE_NUMBERS_EQUAL(number, "

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 822
    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    .line 823
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mUseStrictPhoneNumberComparation:Z

    if-eqz v2, :cond_2

    const-string v2, ", 1)"

    :goto_4
    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 824
    const-string v2, " and (logtype=100 OR logtype=500)"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 823
    :cond_2
    const-string v2, ", 0)"

    goto :goto_4

    .line 828
    .end local v22           #phoneNumber:Ljava/lang/String;
    :pswitch_14
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v5, 0x2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 829
    .local v24, sp:I
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v5, 0x3

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 830
    .local v20, id:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/receiver"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 831
    .local v25, uriPath:Ljava/lang/String;
    const/4 v3, 0x0

    .line 832
    .local v3, msgReceiver:Landroid/net/Uri;
    if-eqz v24, :cond_3

    .line 833
    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsProvider;->SNS_GET_MSG_RECEIVERS:Landroid/net/Uri;

    move-object/from16 v0, v25

    invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 837
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    goto/16 :goto_3

    .line 835
    :cond_3
    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsProvider;->SNS_GET_THREADMSG_RECEIVERS:Landroid/net/Uri;

    move-object/from16 v0, v25

    invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_5

    .line 860
    .end local v3           #msgReceiver:Landroid/net/Uri;
    .end local v20           #id:Ljava/lang/String;
    .end local v24           #sp:I
    .end local v25           #uriPath:Ljava/lang/String;
    :pswitch_15
    const-string v2, "logs._id="

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 861
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v5, 0x1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 865
    :pswitch_16
    const-string v2, "duration_table"

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 875
    :cond_4
    const/16 v2, 0x22

    move/from16 v0, v21

    if-ne v0, v2, :cond_5

    .line 876
    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto/16 :goto_1

    .line 878
    :cond_5
    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto/16 :goto_1

    .line 900
    .restart local v4       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v19       #c:Landroid/database/Cursor;
    :cond_6
    const/16 v2, 0x22

    move/from16 v0, v21

    if-ne v0, v2, :cond_7

    .line 901
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v11, v4

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    invoke-virtual/range {v10 .. v18}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    goto/16 :goto_2

    .line 903
    :cond_7
    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object v11, v4

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object v15, v9

    move-object/from16 v17, p5

    invoke-virtual/range {v10 .. v18}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    goto/16 :goto_2

    .line 664
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 703
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_15
        :pswitch_13
        :pswitch_7
        :pswitch_2
        :pswitch_2
        :pswitch_a
        :pswitch_2
        :pswitch_9
        :pswitch_2
        :pswitch_b
        :pswitch_2
        :pswitch_d
        :pswitch_e
        :pswitch_8
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_c
        :pswitch_4
        :pswitch_11
        :pswitch_2
        :pswitch_12
        :pswitch_2
        :pswitch_14
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_16
        :pswitch_2
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 1434
    iget-object v5, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDbHelper:Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;

    invoke-virtual {v5}, Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1436
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v5, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 1437
    .local v3, matchedUriId:I
    sparse-switch v3, :sswitch_data_0

    .line 1458
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot update URL: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1451
    :sswitch_0
    move-object v4, p3

    .line 1460
    .local v4, where:Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    .line 1462
    .local v1, count:I
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1465
    const/16 v5, 0x22

    if-ne v3, v5, :cond_1

    .line 1466
    :try_start_0
    const-string v5, "duration_table"

    invoke-virtual {v2, v5, p2, v4, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1472
    :goto_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1474
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1477
    const/4 v0, 0x0

    .line 1478
    .local v0, IsOnlyCalls:Z
    if-lez v1, :cond_0

    .line 1479
    sparse-switch v3, :sswitch_data_1

    .line 1493
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyChange()V

    .line 1495
    :cond_0
    return v1

    .line 1454
    .end local v0           #IsOnlyCalls:Z
    .end local v1           #count:I
    .end local v4           #where:Ljava/lang/String;
    :sswitch_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p3, v5}, Lcom/sec/android/provider/logsprovider/LogsProvider;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1456
    .restart local v4       #where:Ljava/lang/String;
    goto :goto_0

    .line 1469
    .restart local v1       #count:I
    :cond_1
    :try_start_1
    const-string v5, "logs"

    invoke-virtual {v2, v5, p2, v4, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_1

    .line 1474
    :catchall_0
    move-exception v5

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 1483
    .restart local v0       #IsOnlyCalls:Z
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyAllCallsChange()V

    .line 1484
    const/4 v0, 0x0

    .line 1485
    goto :goto_2

    .line 1487
    :sswitch_3
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyAllCallsChange()V

    .line 1488
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyCallChange()V

    .line 1489
    const/4 v0, 0x1

    goto :goto_2

    .line 1437
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_1
        0x7 -> :sswitch_0
        0x9 -> :sswitch_0
        0xb -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_0
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x17 -> :sswitch_0
        0x22 -> :sswitch_0
        0x24 -> :sswitch_0
        0x25 -> :sswitch_0
    .end sparse-switch

    .line 1479
    :sswitch_data_1
    .sparse-switch
        0x7 -> :sswitch_2
        0x9 -> :sswitch_2
        0xd -> :sswitch_2
        0x14 -> :sswitch_3
    .end sparse-switch
.end method

.method protected verifyAccounts()V
    .locals 3

    .prologue
    .line 531
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 532
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->onAccountsUpdated([Landroid/accounts/Account;)V

    .line 533
    return-void
.end method

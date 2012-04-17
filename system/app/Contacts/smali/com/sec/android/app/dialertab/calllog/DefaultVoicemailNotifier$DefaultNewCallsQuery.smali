.class final Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$DefaultNewCallsQuery;
.super Ljava/lang/Object;
.source "DefaultVoicemailNotifier.java"

# interfaces
.implements Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NewCallsQuery;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultNewCallsQuery"
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 226
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "voicemail_uri"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$DefaultNewCallsQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0
    .parameter "contentResolver"

    .prologue
    .line 235
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$DefaultNewCallsQuery;->mContentResolver:Landroid/content/ContentResolver;

    .line 237
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/ContentResolver;Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$DefaultNewCallsQuery;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method

.method private createNewCallsFromCursor(Landroid/database/Cursor;)Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NewCall;
    .locals 6
    .parameter "cursor"

    .prologue
    .line 259
    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 260
    .local v2, voicemailUriString:Ljava/lang/String;
    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 262
    .local v0, callsUri:Landroid/net/Uri;
    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 263
    .local v1, voicemailUri:Landroid/net/Uri;
    :goto_0
    new-instance v3, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NewCall;

    const/4 v4, 0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v1, v4}, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NewCall;-><init>(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V

    return-object v3

    .line 262
    .end local v1           #voicemailUri:Landroid/net/Uri;
    :cond_0
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public query()[Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NewCall;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 241
    const-string v0, "%s = 1 AND %s = ?"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "new"

    aput-object v2, v1, v5

    const-string v2, "type"

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, selection:Ljava/lang/String;
    new-array v4, v8, [Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 243
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 245
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$DefaultNewCallsQuery;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$DefaultNewCallsQuery;->PROJECTION:[Ljava/lang/String;

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 247
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v7, v0, [Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NewCall;

    .line 248
    .local v7, newCalls:[Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NewCall;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    invoke-interface {v6}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    invoke-direct {p0, v6}, Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$DefaultNewCallsQuery;->createNewCallsFromCursor(Landroid/database/Cursor;)Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NewCall;

    move-result-object v1

    aput-object v1, v7, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 253
    .end local v7           #newCalls:[Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NewCall;
    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    throw v0

    .restart local v7       #newCalls:[Lcom/sec/android/app/dialertab/calllog/DefaultVoicemailNotifier$NewCall;
    :cond_0
    invoke-static {v6}, Lcom/android/common/io/MoreCloseables;->closeQuietly(Landroid/database/Cursor;)V

    return-object v7
.end method

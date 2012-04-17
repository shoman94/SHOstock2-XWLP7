.class final Lcom/sec/android/app/dialertab/calllog/IntentProvider$5;
.super Lcom/sec/android/app/dialertab/calllog/IntentProvider;
.source "IntentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/IntentProvider;->getCallDetailIntentProvider(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;IJILjava/lang/String;)Lcom/sec/android/app/dialertab/calllog/IntentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$adapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

.field final synthetic val$groupSize:I

.field final synthetic val$id:J

.field final synthetic val$number:Ljava/lang/String;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;ILjava/lang/String;IJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/IntentProvider$5;->val$adapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    iput p2, p0, Lcom/sec/android/app/dialertab/calllog/IntentProvider$5;->val$position:I

    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/IntentProvider$5;->val$number:Ljava/lang/String;

    iput p4, p0, Lcom/sec/android/app/dialertab/calllog/IntentProvider$5;->val$groupSize:I

    iput-wide p5, p0, Lcom/sec/android/app/dialertab/calllog/IntentProvider$5;->val$id:J

    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/IntentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 114
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v6

    const-string v0, "display_name"

    aput-object v0, v2, v9

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/IntentProvider$5;->val$adapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v7

    .line 121
    iget v1, p0, Lcom/sec/android/app/dialertab/calllog/IntentProvider$5;->val$position:I

    invoke-interface {v7, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 123
    new-instance v8, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-direct {v8, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    const/4 v1, 0x6

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 126
    if-eqz v1, :cond_0

    .line 127
    const-string v4, "EXTRA_VOICEMAIL_URI"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v8, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 130
    :cond_0
    const-string v1, "EXTRA_VOICEMAIL_START_PLAYBACK"

    invoke-virtual {v8, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 132
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/IntentProvider$5;->val$number:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v4, v3

    move-object v5, v3

    .line 133
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 137
    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 141
    :cond_1
    if-eqz v1, :cond_2

    .line 142
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 145
    :cond_2
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/IntentProvider$5;->val$groupSize:I

    if-le v0, v9, :cond_5

    .line 147
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/IntentProvider$5;->val$groupSize:I

    new-array v1, v0, [J

    move v0, v6

    .line 149
    :goto_0
    iget v2, p0, Lcom/sec/android/app/dialertab/calllog/IntentProvider$5;->val$groupSize:I

    if-ge v0, v2, :cond_4

    .line 150
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, v1, v0

    .line 151
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    .line 142
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 153
    :cond_4
    const-string v0, "EXTRA_CALL_LOG_IDS"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 159
    :goto_1
    const-string v0, "EXTRA_CALL_LOG_CONTACT"

    invoke-virtual {v8, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    return-object v8

    .line 156
    :cond_5
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/sec/android/app/dialertab/calllog/IntentProvider$5;->val$id:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1
.end method

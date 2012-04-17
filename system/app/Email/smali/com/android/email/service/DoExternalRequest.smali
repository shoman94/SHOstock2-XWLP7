.class public Lcom/android/email/service/DoExternalRequest;
.super Ljava/lang/Object;
.source "DoExternalRequest.java"


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mController:Lcom/android/email/Controller;

.field static mcontext:Landroid/content/Context;


# instance fields
.field protected handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 79
    sput-object v0, Lcom/android/email/service/DoExternalRequest;->mController:Lcom/android/email/Controller;

    .line 81
    sput-object v0, Lcom/android/email/service/DoExternalRequest;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 151
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/email/service/DoExternalRequest;->handler:Landroid/os/Handler;

    .line 152
    sget-object v0, Lcom/android/email/service/DoExternalRequest;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 153
    sput-object p1, Lcom/android/email/service/DoExternalRequest;->mContext:Landroid/content/Context;

    .line 156
    :cond_0
    sget-object v0, Lcom/android/email/service/DoExternalRequest;->mController:Lcom/android/email/Controller;

    if-nez v0, :cond_1

    .line 157
    invoke-static {p1}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    sput-object v0, Lcom/android/email/service/DoExternalRequest;->mController:Lcom/android/email/Controller;

    .line 159
    :cond_1
    return-void
.end method

.method private deleteNext()V
    .locals 5

    .prologue
    .line 619
    :try_start_0
    const-string v0, "com.android.email.action.ACCOUNT_UPDATED"

    .line 620
    .local v0, ACTION:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 621
    .local v2, intent:Landroid/content/Intent;
    sget-object v3, Lcom/android/email/service/DoExternalRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    invoke-virtual {p0}, Lcom/android/email/service/DoExternalRequest;->onUpdateBadgeRequest()V

    .line 636
    .end local v0           #ACTION:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 626
    :catch_0
    move-exception v1

    .line 627
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    const-string v3, "DoExternalRequest"

    const-string v4, "account delete ~~~~~~~~~~~~~~"

    invoke-static {v3, v4}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 633
    invoke-virtual {p0}, Lcom/android/email/service/DoExternalRequest;->onUpdateBadgeRequest()V

    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Lcom/android/email/service/DoExternalRequest;->onUpdateBadgeRequest()V

    throw v3
.end method

.method public static getStringArrayFromLongArray([J)[Ljava/lang/String;
    .locals 4
    .parameter "ids"

    .prologue
    .line 168
    if-nez p0, :cond_1

    .line 169
    const/4 v1, 0x0

    .line 178
    :cond_0
    return-object v1

    .line 172
    :cond_1
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/String;

    .line 174
    .local v1, ids_string:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 175
    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;III)V
    .locals 11
    .parameter "ctx"
    .parameter "szAction"
    .parameter "type"
    .parameter "ids"
    .parameter "action"
    .parameter "status"
    .parameter "flag"

    .prologue
    .line 233
    const-string v8, "DoExternalRequest"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "requestSendBroadcastIntent() action="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 237
    .local v5, intent:Landroid/content/Intent;
    const-string v8, "intentType"

    invoke-virtual {v5, v8, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 242
    if-eqz p3, :cond_1

    .line 244
    const-string v3, ""

    .line 246
    .local v3, id_info:Ljava/lang/String;
    move-object v1, p3

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v6, :cond_0

    aget-object v4, v1, v2

    .line 248
    .local v4, id_item:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 249
    .local v7, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 250
    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 246
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 255
    .end local v4           #id_item:Ljava/lang/String;
    .end local v7           #sb:Ljava/lang/StringBuffer;
    :cond_0
    const-string v8, "DoExternalRequest"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "requestSendBroadcastIntent() ids="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const-string v8, "id_array"

    invoke-virtual {v5, v8, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #id_info:Ljava/lang/String;
    .end local v6           #len$:I
    :cond_1
    const/16 v8, 0xa

    if-ne p4, v8, :cond_2

    .line 263
    const-string v8, "status_followupflag"

    move/from16 v0, p6

    invoke-virtual {v5, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 267
    :cond_2
    const-string v8, "action"

    invoke-virtual {v5, v8, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 269
    const-string v8, "status"

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 271
    invoke-virtual {p0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 273
    const/4 v5, 0x0

    .line 275
    return-void
.end method

.method public static requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IIZ)V
    .locals 11
    .parameter "ctx"
    .parameter "szAction"
    .parameter "type"
    .parameter "ids"
    .parameter "action"
    .parameter "status"
    .parameter "flag"

    .prologue
    .line 185
    const-string v8, "DoExternalRequest"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "requestSendBroadcastIntent() action="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 189
    .local v5, intent:Landroid/content/Intent;
    const-string v8, "intentType"

    invoke-virtual {v5, v8, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 194
    if-eqz p3, :cond_1

    .line 195
    const-string v3, ""

    .line 197
    .local v3, id_info:Ljava/lang/String;
    move-object v1, p3

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v6, :cond_0

    aget-object v4, v1, v2

    .line 199
    .local v4, id_item:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 200
    .local v7, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 197
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 205
    .end local v4           #id_item:Ljava/lang/String;
    .end local v7           #sb:Ljava/lang/StringBuffer;
    :cond_0
    const-string v8, "DoExternalRequest"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "requestSendBroadcastIntent() ids="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const-string v8, "id_array"

    invoke-virtual {v5, v8, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #id_info:Ljava/lang/String;
    .end local v6           #len$:I
    :cond_1
    const/4 v8, 0x2

    if-ne p4, v8, :cond_3

    .line 211
    const-string v8, "is_read"

    move/from16 v0, p6

    invoke-virtual {v5, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 218
    :cond_2
    :goto_1
    const-string v8, "action"

    invoke-virtual {v5, v8, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 219
    const-string v8, "status"

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 221
    invoke-virtual {p0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 223
    const/4 v5, 0x0

    .line 224
    return-void

    .line 212
    :cond_3
    const/16 v8, 0x8

    if-ne p4, v8, :cond_4

    .line 213
    const-string v8, "is_favorite"

    move/from16 v0, p6

    invoke-virtual {v5, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 214
    :cond_4
    const/16 v8, 0xa

    if-ne p2, v8, :cond_2

    .line 215
    const-string v8, "status_followupflag"

    move/from16 v0, p6

    invoke-virtual {v5, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1
.end method


# virtual methods
.method public onMarkAsReadRequest([Ljava/lang/String;Z)V
    .locals 5
    .parameter "ids"
    .parameter "isRead"

    .prologue
    .line 317
    const-string v2, "DoExternalRequest"

    const-string v3, "onMarkAsReadRequest() START"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    .line 320
    :cond_0
    const-string v2, "DoExternalRequest"

    const-string v3, "onMarkAsReadRequest() ids is null or empy"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :goto_0
    const/4 v1, 0x0

    .line 338
    .local v1, message_ids:[J
    const-string v2, "DoExternalRequest"

    const-string v3, "onMarkAsReadRequest() END"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    return-void

    .line 324
    .end local v1           #message_ids:[J
    :cond_1
    array-length v2, p1

    new-array v1, v2, [J

    .line 326
    .restart local v1       #message_ids:[J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 327
    const-string v2, "DoExternalRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMarkAsReadRequest() ids-["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 326
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 331
    :cond_2
    sget-object v2, Lcom/android/email/service/DoExternalRequest;->mController:Lcom/android/email/Controller;

    const-wide/16 v3, -0x1

    invoke-virtual {v2, v1, p2, v3, v4}, Lcom/android/email/Controller;->setMessageRead([JZJ)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onMultiDeleteRequest([Ljava/lang/String;)V
    .locals 5
    .parameter "ids"

    .prologue
    .line 285
    const-string v2, "DoExternalRequest"

    const-string v3, "onMultiDeleteRequest() START"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    .line 288
    :cond_0
    const-string v2, "DoExternalRequest"

    const-string v3, "onMultiDeleteRequest() ids is null or empy"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :goto_0
    const/4 v1, 0x0

    .line 305
    .local v1, message_ids:[J
    const-string v2, "DoExternalRequest"

    const-string v3, "onMultiDeleteRequest() END"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    return-void

    .line 292
    .end local v1           #message_ids:[J
    :cond_1
    array-length v2, p1

    new-array v1, v2, [J

    .line 294
    .restart local v1       #message_ids:[J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 295
    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 294
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 298
    :cond_2
    sget-object v2, Lcom/android/email/service/DoExternalRequest;->mController:Lcom/android/email/Controller;

    const-wide/16 v3, -0x1

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/email/Controller;->deleteMessage([JJ)V

    goto :goto_0
.end method

.method public onRequest([Ljava/lang/String;)V
    .locals 10
    .parameter "ids"

    .prologue
    const/4 v5, 0x0

    .line 414
    const-string v0, "DoExternalRequest"

    const-string v1, "onRequest() START"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 417
    :cond_0
    const-string v0, "DoExternalRequest"

    const-string v1, "onRequest() ids is null or empy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :goto_0
    const-string v0, "DoExternalRequest"

    const-string v1, "onRequest() END"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    return-void

    .line 419
    :cond_1
    array-length v0, p1

    new-array v3, v0, [Ljava/lang/String;

    .line 421
    .local v3, res_data:[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    array-length v0, p1

    if-ge v7, v0, :cond_3

    .line 422
    aget-object v0, p1, v7

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 424
    sget-object v0, Lcom/android/email/service/DoExternalRequest;->mContext:Landroid/content/Context;

    const-string v1, "AndroidMail.MessageList"

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 427
    .local v8, sp:Landroid/content/SharedPreferences;
    const-string v0, "prefer_view_mode"

    invoke-interface {v8, v0, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 429
    .local v9, view_mode:I
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    .line 421
    .end local v8           #sp:Landroid/content/SharedPreferences;
    .end local v9           #view_mode:I
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 435
    :cond_3
    sget-object v0, Lcom/android/email/service/DoExternalRequest;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v2, 0x190

    const/16 v4, 0x9

    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IIZ)V

    goto :goto_0
.end method

.method public onSetFavoriteRequest([Ljava/lang/String;Z)V
    .locals 5
    .parameter "ids"
    .parameter "isFavorite"

    .prologue
    .line 350
    const-string v2, "DoExternalRequest"

    const-string v3, "onSetFavoriteRequest() START"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    .line 353
    :cond_0
    const-string v2, "DoExternalRequest"

    const-string v3, "onSetFavoriteRequest() ids is null or empy"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :goto_0
    const/4 v1, 0x0

    .line 371
    .local v1, message_ids:[J
    const-string v2, "DoExternalRequest"

    const-string v3, "onSetFavoriteRequest() END"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    return-void

    .line 357
    .end local v1           #message_ids:[J
    :cond_1
    array-length v2, p1

    new-array v1, v2, [J

    .line 359
    .restart local v1       #message_ids:[J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 360
    const-string v2, "DoExternalRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSetFavoriteRequest() ids-["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 359
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 364
    :cond_2
    sget-object v2, Lcom/android/email/service/DoExternalRequest;->mController:Lcom/android/email/Controller;

    const-wide/16 v3, -0x1

    invoke-virtual {v2, v1, p2, v3, v4}, Lcom/android/email/Controller;->setMessageFavorite([JZJ)Landroid/os/AsyncTask;

    .line 366
    invoke-virtual {p0}, Lcom/android/email/service/DoExternalRequest;->onUpdateBadgeRequest()V

    goto :goto_0
.end method

.method public onSetFollowUpFlagRequest([Ljava/lang/String;I)V
    .locals 5
    .parameter "ids"
    .parameter "newFollowUpFlag"

    .prologue
    .line 381
    const-string v2, "DoExternalRequest"

    const-string v3, "onSetFollowUpFlagRequest() START"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    .line 385
    :cond_0
    const-string v2, "DoExternalRequest"

    const-string v3, "onSetFollowUpFlagRequest() ids is null or empy"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :goto_0
    const/4 v1, 0x0

    .line 409
    .local v1, message_ids:[J
    const-string v2, "DoExternalRequest"

    const-string v3, "onSetFollowUpFlagRequest() END"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    return-void

    .line 391
    .end local v1           #message_ids:[J
    :cond_1
    array-length v2, p1

    new-array v1, v2, [J

    .line 393
    .restart local v1       #message_ids:[J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 395
    const-string v2, "DoExternalRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSetFollowUpFlagRequest() ids-["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 393
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 401
    :cond_2
    sget-object v2, Lcom/android/email/service/DoExternalRequest;->mController:Lcom/android/email/Controller;

    const-wide/16 v3, -0x1

    invoke-virtual {v2, v1, p2, v3, v4}, Lcom/android/email/Controller;->setMessageFollowUpFlag([JIJ)Landroid/os/AsyncTask;

    .line 403
    invoke-virtual {p0}, Lcom/android/email/service/DoExternalRequest;->onUpdateBadgeRequest()V

    goto :goto_0
.end method

.method public onUpdateBadgeRequest()V
    .locals 4

    .prologue
    .line 450
    const/4 v0, 0x0

    .line 452
    .local v0, iUnreadCount:I
    const-string v1, "DoExternalRequest"

    const-string v2, "onUpdateBadgeRequest() START"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    sget-object v1, Lcom/android/email/service/DoExternalRequest;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/EmailUtility;->getUnreadTotalCount(Landroid/content/Context;)I

    move-result v0

    .line 455
    sget-object v1, Lcom/android/email/service/DoExternalRequest;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/email/BadgeManager;->updateBadgeProvider(Landroid/content/Context;I)V

    .line 457
    const-string v1, "DoExternalRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpdateBadgeRequest() END unread-cnt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    return-void
.end method

.method public removeAccounts(Landroid/content/Context;J)Z
    .locals 17
    .parameter "context"
    .parameter "accountID"

    .prologue
    .line 469
    sput-object p1, Lcom/android/email/service/DoExternalRequest;->mcontext:Landroid/content/Context;

    .line 471
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gez v2, :cond_0

    .line 472
    invoke-direct/range {p0 .. p0}, Lcom/android/email/service/DoExternalRequest;->deleteNext()V

    .line 565
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 475
    :cond_0
    invoke-static/range {p1 .. p3}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v10

    .line 479
    .local v10, deleteAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "++++++++++++++++++++++++++++++++++++++++ removeAccounts() : now syncAccountID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    const/4 v12, 0x0

    .line 484
    .local v12, sevenAccountKey:I
    if-eqz v10, :cond_1

    .line 485
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "++++++++++++++++++++++++++++++++++++++++ removeAccounts() : now sevenAccountKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-virtual {v10}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSevenAccountKey()J

    move-result-wide v2

    long-to-int v12, v2

    .line 496
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    .line 500
    .local v5, tempString:[Ljava/lang/String;
    const-string v3, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v4, 0x190

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IIZ)V

    .line 504
    if-lez v12, :cond_2

    .line 505
    invoke-static/range {p1 .. p1}, Lcom/digc/seven/Z7MailHandler;->getInstance(Landroid/content/Context;)Lcom/digc/seven/Z7MailHandler;

    move-result-object v14

    .line 507
    .local v14, zHandler:Lcom/digc/seven/Z7MailHandler;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/service/DoExternalRequest;->handler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v14, v2, v12, v3}, Lcom/digc/seven/Z7MailHandler;->removeAccount(Landroid/os/Handler;ILandroid/app/Activity;)V

    goto :goto_0

    .line 490
    .end local v5           #tempString:[Ljava/lang/String;
    .end local v14           #zHandler:Lcom/digc/seven/Z7MailHandler;
    :cond_1
    const-string v2, "Email"

    const-string v3, "++++++++++++++++++++++++++++++++++++++++ removeAccounts() : Shit !!! deleteAccount is null !!!!!!!!!!! "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const/4 v2, 0x0

    goto :goto_1

    .line 514
    .restart local v5       #tempString:[Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 515
    .local v9, accountUri:Ljava/lang/String;
    invoke-virtual {v10}, Lcom/android/emailcommon/provider/EmailContent$Account;->getTypeMsg()I

    move-result v2

    if-nez v2, :cond_3

    .line 518
    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p1

    invoke-static {v9, v0, v2}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/mail/Store;->delete()V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    :goto_2
    invoke-static {v9}, Lcom/android/email/mail/Store;->removeInstance(Ljava/lang/String;)V

    .line 527
    :cond_3
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, v10, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    .line 530
    .local v13, uri:Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v13, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 532
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://logs/email"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "account_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-wide v15, v10, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v2, v3, v4, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 539
    invoke-static/range {p1 .. p1}, Lcom/android/email/AccountBackupRestore;->backupAccounts(Landroid/content/Context;)V

    .line 542
    invoke-static/range {p1 .. p1}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/SecurityPolicy;->reducePolicies()V

    .line 555
    invoke-static/range {p1 .. p1}, Lcom/android/email/ExchangeUtils;->startExchangeService(Landroid/content/Context;)V

    .line 560
    invoke-static {}, Lcom/android/email/activity/ActivityResourceInterface;->updateAllWidgets()V

    goto/16 :goto_0

    .line 519
    .end local v13           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v11

    .line 520
    .local v11, e:Lcom/android/emailcommon/mail/MessagingException;
    invoke-virtual {v11}, Lcom/android/emailcommon/mail/MessagingException;->printStackTrace()V

    goto :goto_2
.end method

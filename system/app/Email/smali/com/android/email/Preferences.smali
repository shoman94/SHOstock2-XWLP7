.class public Lcom/android/email/Preferences;
.super Ljava/lang/Object;
.source "Preferences.java"


# static fields
.field private static sPreferences:Lcom/android/email/Preferences;


# instance fields
.field final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 129
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 130
    const-string v0, "AndroidMail.Main"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 131
    return-void
.end method

.method public static declared-synchronized getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;
    .locals 2
    .parameter "context"

    .prologue
    .line 140
    const-class v1, Lcom/android/email/Preferences;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/email/Preferences;->sPreferences:Lcom/android/email/Preferences;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Lcom/android/email/Preferences;

    invoke-direct {v0, p0}, Lcom/android/email/Preferences;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/email/Preferences;->sPreferences:Lcom/android/email/Preferences;

    .line 143
    :cond_0
    sget-object v0, Lcom/android/email/Preferences;->sPreferences:Lcom/android/email/Preferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public dump()V
    .locals 0

    .prologue
    .line 446
    return-void
.end method

.method public getAccountByContentUri(Landroid/net/Uri;)Lcom/android/email/Account;
    .locals 8
    .parameter "uri"

    .prologue
    const/4 v5, 0x0

    .line 191
    const-string v6, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "accounts"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-object v5

    .line 194
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 195
    .local v3, uuid:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 198
    iget-object v6, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v7, "accountUuids"

    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, accountUuids:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    .line 202
    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 203
    .local v4, uuids:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    array-length v2, v4

    .local v2, length:I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 204
    aget-object v6, v4, v1

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 205
    new-instance v5, Lcom/android/email/Account;

    invoke-direct {v5, p0, v3}, Lcom/android/email/Account;-><init>(Lcom/android/email/Preferences;Ljava/lang/String;)V

    goto :goto_0

    .line 203
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getAccountId()J
    .locals 4

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "accountId"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAccounts()[Lcom/android/email/Account;
    .locals 8

    .prologue
    .line 174
    iget-object v5, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "accountUuids"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, accountUuids:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 176
    :cond_0
    const/4 v5, 0x0

    new-array v1, v5, [Lcom/android/email/Account;

    .line 183
    :cond_1
    return-object v1

    .line 178
    :cond_2
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 179
    .local v4, uuids:[Ljava/lang/String;
    array-length v5, v4

    new-array v1, v5, [Lcom/android/email/Account;

    .line 180
    .local v1, accounts:[Lcom/android/email/Account;
    const/4 v2, 0x0

    .local v2, i:I
    array-length v3, v4

    .local v3, length:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 181
    new-instance v5, Lcom/android/email/Account;

    aget-object v6, v4, v2

    invoke-direct {v5, p0, v6}, Lcom/android/email/Account;-><init>(Lcom/android/email/Preferences;Ljava/lang/String;)V

    aput-object v5, v1, v2

    .line 180
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getAutoAdvanceDirection()I
    .locals 3

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "autoAdvance"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getBGColor()I
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x2

    return v0
.end method

.method public getCarrierAccount()Lcom/android/email/Account;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 147
    const-class v3, Lcom/android/email/Preferences;

    monitor-enter v3

    .line 148
    :try_start_0
    iget-object v1, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "carrierAccount"

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 149
    const-string v1, ">>> Preference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fixed account >> "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    if-nez v4, :cond_0

    .line 153
    monitor-exit v3

    .line 165
    :goto_0
    return-object v0

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/Preferences;->getAccounts()[Lcom/android/email/Account;

    move-result-object v5

    .line 157
    if-eqz v4, :cond_1

    .line 158
    array-length v6, v5

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v6, :cond_1

    aget-object v1, v5, v2

    .line 159
    invoke-virtual {v1}, Lcom/android/email/Account;->getUuid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v0, v1

    .line 165
    :cond_1
    monitor-exit v3

    goto :goto_0

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 158
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method public getDPModeColor()I
    .locals 3

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "backgroundColor"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public declared-synchronized getDeviceUID()Ljava/lang/String;
    .locals 4

    .prologue
    .line 334
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "deviceUID"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, result:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 336
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 337
    iget-object v1, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "deviceUID"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    :cond_0
    monitor-exit p0

    return-object v0

    .line 334
    .end local v0           #result:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getEnableDebugLogging()Z
    .locals 3

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "enableDebugLogging"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getEnableExchangeFileLogging()Z
    .locals 3

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "enableExchangeFileLogging"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getEnableExchangeLogging()Z
    .locals 3

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "enableExchangeLogging"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getEnableStrictMode()Z
    .locals 3

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "enableStrictMode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getForceOneMinuteRefresh()Z
    .locals 3

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "forceOneMinuteRefresh"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getInhibitGraphicsAcceleration()Z
    .locals 3

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "inhibitGraphicsAcceleration"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getMailboxId()J
    .locals 4

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "mailboxId"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOneTimeInitializationProgress()I
    .locals 3

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "oneTimeInitializationProgress"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPreViewLine()I
    .locals 3

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "previewline"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSplitMode()Z
    .locals 3

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "view_mode"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getTextZoom()I
    .locals 3

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "textZoom"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getTopLineInfoMode()I
    .locals 3

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "toplinemode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public setAccountId(J)V
    .locals 2
    .parameter "accountId"

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "accountId"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 423
    return-void
.end method

.method public setAutoAdvanceDirection(I)V
    .locals 2
    .parameter "direction"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "autoAdvance"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 356
    return-void
.end method

.method public setBGColor(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "backgroundColor"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 261
    return-void
.end method

.method public setCarrierAccountId(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 248
    const-class v1, Lcom/android/email/Preferences;

    monitor-enter v1

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "carrierAccount"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 250
    monitor-exit v1

    .line 251
    return-void

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setEnableDebugLogging(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "enableDebugLogging"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 245
    return-void
.end method

.method public setEnableExchangeFileLogging(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "enableExchangeFileLogging"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 296
    return-void
.end method

.method public setEnableExchangeLogging(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "enableExchangeLogging"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 288
    return-void
.end method

.method public setEnableStrictMode(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "enableStrictMode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 320
    return-void
.end method

.method public setForceOneMinuteRefresh(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "forceOneMinuteRefresh"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 312
    return-void
.end method

.method public setInhibitGraphicsAcceleration(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "inhibitGraphicsAcceleration"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 304
    return-void
.end method

.method public setMailboxId(J)V
    .locals 2
    .parameter "mailboxId"

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mailboxId"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 414
    return-void
.end method

.method public setOneTimeInitializationProgress(I)V
    .locals 2
    .parameter "progress"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "oneTimeInitializationProgress"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 348
    return-void
.end method

.method public setPreViewLine(I)V
    .locals 2
    .parameter "previewline"

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "previewline"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 373
    return-void
.end method

.method public setSplitMode(Z)V
    .locals 2
    .parameter "direction"

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "view_mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 385
    return-void
.end method

.method public setTextZoom(I)V
    .locals 2
    .parameter "zoom"

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "textZoom"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 364
    return-void
.end method

.method public setTopLineInfoMode(I)V
    .locals 2
    .parameter "toplinemode"

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/email/Preferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "toplinemode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 404
    return-void
.end method

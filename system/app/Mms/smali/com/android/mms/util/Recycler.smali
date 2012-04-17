.class public abstract Lcom/android/mms/util/Recycler;
.super Ljava/lang/Object;
.source "Recycler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/Recycler$MmsRecycler;,
        Lcom/android/mms/util/Recycler$SmsRecycler;
    }
.end annotation


# static fields
.field private static sMmsRecycler:Lcom/android/mms/util/Recycler$MmsRecycler;

.field private static sSmsRecycler:Lcom/android/mms/util/Recycler$SmsRecycler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 282
    return-void
.end method

.method public static checkForThreadsOverLimit(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    .line 68
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v2

    .line 69
    .local v2, smsRecycler:Lcom/android/mms/util/Recycler;
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v0

    .line 71
    .local v0, mmsRecycler:Lcom/android/mms/util/Recycler;
    invoke-virtual {v2, p0}, Lcom/android/mms/util/Recycler$SmsRecycler;->anyThreadOverLimit(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/mms/util/Recycler$MmsRecycler;->anyThreadOverLimit(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 73
    .local v1, result:Z
    :goto_0
    const-string v3, "Mms/Recycler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkForThreadsOverLimit(),return:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return v1

    .line 71
    .end local v1           #result:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/mms/util/Recycler;->sMmsRecycler:Lcom/android/mms/util/Recycler$MmsRecycler;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/android/mms/util/Recycler$MmsRecycler;

    invoke-direct {v0}, Lcom/android/mms/util/Recycler$MmsRecycler;-><init>()V

    sput-object v0, Lcom/android/mms/util/Recycler;->sMmsRecycler:Lcom/android/mms/util/Recycler$MmsRecycler;

    .line 64
    :cond_0
    sget-object v0, Lcom/android/mms/util/Recycler;->sMmsRecycler:Lcom/android/mms/util/Recycler$MmsRecycler;

    return-object v0
.end method

.method public static getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/mms/util/Recycler;->sSmsRecycler:Lcom/android/mms/util/Recycler$SmsRecycler;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/android/mms/util/Recycler$SmsRecycler;

    invoke-direct {v0}, Lcom/android/mms/util/Recycler$SmsRecycler;-><init>()V

    sput-object v0, Lcom/android/mms/util/Recycler;->sSmsRecycler:Lcom/android/mms/util/Recycler$SmsRecycler;

    .line 57
    :cond_0
    sget-object v0, Lcom/android/mms/util/Recycler;->sSmsRecycler:Lcom/android/mms/util/Recycler$SmsRecycler;

    return-object v0
.end method

.method public static isAutoDeleteEnabled(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 110
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 111
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "pref_key_auto_delete"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method


# virtual methods
.method protected abstract anyThreadOverLimit(Landroid/content/Context;)Z
.end method

.method protected abstract deleteMessagesForThread(Landroid/content/Context;JI)V
.end method

.method public deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "threadId"

    .prologue
    .line 99
    const-string v0, "Mms/Recycler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recycler.deleteOldMessagesByThreadId this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " threadId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {p1}, Lcom/android/mms/util/Recycler;->isAutoDeleteEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/mms/util/Recycler;->deleteMessagesForThread(Landroid/content/Context;JI)V

    goto :goto_0
.end method

.method public abstract getMessageLimit(Landroid/content/Context;)I
.end method

.method public getMessageMaxLimit()I
    .locals 1

    .prologue
    .line 123
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageCountPerThread()I

    move-result v0

    return v0
.end method

.method public getMessageMinLimit()I
    .locals 1

    .prologue
    .line 119
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinMessageCountPerThread()I

    move-result v0

    return v0
.end method

.method public abstract setMessageLimit(Landroid/content/Context;I)V
.end method

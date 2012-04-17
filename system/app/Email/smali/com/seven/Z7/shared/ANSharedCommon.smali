.class public Lcom/seven/Z7/shared/ANSharedCommon;
.super Ljava/lang/Object;
.source "ANSharedCommon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/seven/Z7/shared/ANSharedCommon$Z7Events;,
        Lcom/seven/Z7/shared/ANSharedCommon$Z7IntentExtras;,
        Lcom/seven/Z7/shared/ANSharedCommon$ErrorDesc;,
        Lcom/seven/Z7/shared/ANSharedCommon$DisconnectedReason;,
        Lcom/seven/Z7/shared/ANSharedCommon$ConnectState;
    }
.end annotation


# static fields
.field private static final AccountStatus:[I

.field public static final CALENDAR_AUTHORITY:Ljava/lang/String;

.field private static final CONTACT_PROJECTION:[Ljava/lang/String;

.field public static final IS_RUNTIME_FROYO_OR_ABOVE:Z

.field public static ispKeys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mCharsetMap:Ljava/util/HashMap;
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


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 122
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v5, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/seven/Z7/shared/ANSharedCommon;->IS_RUNTIME_FROYO_OR_ABOVE:Z

    .line 124
    sget-boolean v0, Lcom/seven/Z7/shared/ANSharedCommon;->IS_RUNTIME_FROYO_OR_ABOVE:Z

    if-eqz v0, :cond_1

    const-string v0, "com.android.calendar"

    :goto_1
    sput-object v0, Lcom/seven/Z7/shared/ANSharedCommon;->CALENDAR_AUTHORITY:Ljava/lang/String;

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/seven/Z7/shared/ANSharedCommon;->ispKeys:Ljava/util/HashMap;

    .line 316
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/seven/Z7/shared/ANSharedCommon;->AccountStatus:[I

    .line 688
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v2

    const-string v2, "account"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "username"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "nickname"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "mode"

    aput-object v2, v0, v1

    const-string v1, "status"

    aput-object v1, v0, v4

    const/4 v1, 0x6

    const-string v2, "fromSubscriptionStatus"

    aput-object v2, v0, v1

    const-string v1, "last_unread_message"

    aput-object v1, v0, v5

    const/16 v1, 0x8

    const-string v2, "avatars_data"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "toSubscriptionStatus"

    aput-object v2, v0, v1

    sput-object v0, Lcom/seven/Z7/shared/ANSharedCommon;->CONTACT_PROJECTION:[Ljava/lang/String;

    .line 1389
    const/4 v0, 0x0

    sput-object v0, Lcom/seven/Z7/shared/ANSharedCommon;->mCharsetMap:Ljava/util/HashMap;

    return-void

    :cond_0
    move v0, v2

    .line 122
    goto :goto_0

    .line 124
    :cond_1
    const-string v0, "calendar"

    goto :goto_1

    .line 316
    :array_0
    .array-data 0x4
        0x80t 0x2t 0x2t 0x7ft
        0xe1t 0x1t 0x2t 0x7ft
        0x60t 0x1t 0x2t 0x7ft
        0x7bt 0x2t 0x2t 0x7ft
        0x92t 0x2t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1652
    return-void
.end method

.method public static fetchString(I)Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 642
    invoke-static {}, Lcom/android/email/Email;->getApplication()Lcom/android/email/Email;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/Email;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static forceExit()V
    .locals 1

    .prologue
    .line 1437
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 1439
    return-void
.end method

.method public static getAccount(I)Landroid/accounts/Account;
    .locals 10
    .parameter "accountId"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1209
    invoke-static {}, Lcom/android/email/Email;->getApplication()Lcom/android/email/Email;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/Email;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/seven/Z7/provider/Z7Content$Accounts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "email"

    aput-object v3, v2, v5

    const-string v3, "name_id"

    aput-object v3, v2, v8

    const-string v3, "scope"

    aput-object v3, v2, v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "account_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1213
    .local v6, accCursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 1215
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1216
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1217
    .local v7, name:Ljava/lang/String;
    invoke-static {v7}, Lcom/seven/Z7/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1218
    new-instance v4, Landroid/accounts/Account;

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/seven/Z7/shared/ANSharedCommon;->getAccountType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v7, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1223
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1224
    const/4 v6, 0x0

    .line 1227
    .end local v7           #name:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v4

    .line 1223
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1224
    const/4 v6, 0x0

    .line 1225
    goto :goto_0

    .line 1223
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1224
    const/4 v6, 0x0

    throw v0
.end method

.method public static getAccountName(I)Ljava/lang/String;
    .locals 8
    .parameter "accountId"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1237
    const-string v7, ""

    .line 1238
    .local v7, accName:Ljava/lang/String;
    invoke-static {}, Lcom/android/email/Email;->getApplication()Lcom/android/email/Email;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/Email;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/seven/Z7/provider/Z7Content$Accounts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "name_id"

    aput-object v3, v2, v5

    const/4 v3, 0x1

    const-string v5, "scope"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "account_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1242
    .local v6, accCursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1244
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1245
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 1248
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1249
    const/4 v6, 0x0

    .line 1252
    :cond_1
    return-object v7

    .line 1248
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1249
    const/4 v6, 0x0

    throw v0
.end method

.method public static getAccountType(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "logoId"
    .parameter "scope"

    .prologue
    .line 1335
    invoke-static {p1}, Lcom/seven/Z7/shared/ANSharedCommon;->isEmailScope(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1336
    const-string v0, "yahoo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1337
    const-string v0, "com.seven.Z7.yahoo"

    .line 1350
    :goto_0
    return-object v0

    .line 1338
    :cond_0
    const-string v0, "msn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1339
    const-string v0, "com.seven.Z7.msn"

    goto :goto_0

    .line 1340
    :cond_1
    const-string v0, "gmail"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "gmail_de"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1341
    :cond_2
    const-string v0, "com.seven.Z7.gmail"

    goto :goto_0

    .line 1342
    :cond_3
    const-string v0, "work"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1343
    const-string v0, "com.seven.Z7.work"

    goto :goto_0

    .line 1345
    :cond_4
    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    .line 1346
    const-string v0, "com.seven.Z7.im"

    goto :goto_0

    .line 1347
    :cond_5
    const/4 v0, 0x6

    if-ne p1, v0, :cond_6

    .line 1348
    const-string v0, "com.seven.Z7.ping"

    goto :goto_0

    .line 1350
    :cond_6
    const-string v0, "com.seven.Z7"

    goto :goto_0
.end method

.method private static getError(IZ)Ljava/lang/String;
    .locals 13
    .parameter "errorCode"
    .parameter "isTitle"

    .prologue
    const/4 v12, -0x1

    .line 592
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_title"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 593
    .local v7, titleKey:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_text"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 594
    .local v5, textKey:Ljava/lang/String;
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-static {}, Lcom/android/email/Email;->getApplication()Lcom/android/email/Email;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/email/Email;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a005a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 597
    .local v0, errorKeys:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<[Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 598
    .local v3, keys:[Ljava/lang/String;
    const/4 v8, -0x1

    .line 599
    .local v8, titlePos:I
    const/4 v6, -0x1

    .line 600
    .local v6, textPos:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v10, v3

    if-ge v2, v10, :cond_2

    .line 601
    if-ne v8, v12, :cond_0

    aget-object v10, v3, v2

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 602
    move v8, v2

    .line 604
    :cond_0
    if-ne v6, v12, :cond_1

    aget-object v10, v3, v2

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 605
    move v6, v2

    .line 600
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 609
    :cond_2
    const/4 v4, 0x0

    .line 610
    .local v4, ret:Ljava/lang/String;
    if-ne v8, v12, :cond_3

    if-eq v6, v12, :cond_5

    .line 611
    :cond_3
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-static {}, Lcom/android/email/Email;->getApplication()Lcom/android/email/Email;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/email/Email;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a005b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 613
    .local v1, errorValues:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<[Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    .line 614
    .local v9, values:[Ljava/lang/String;
    if-eq v8, v12, :cond_4

    .line 615
    if-eqz p1, :cond_4

    .line 616
    aget-object v4, v9, v8

    .line 619
    :cond_4
    if-eq v6, v12, :cond_5

    .line 620
    if-nez p1, :cond_5

    .line 621
    aget-object v4, v9, v6

    .line 625
    .end local v1           #errorValues:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<[Ljava/lang/String;>;"
    .end local v9           #values:[Ljava/lang/String;
    :cond_5
    return-object v4
.end method

.method public static getErrorText(I)Ljava/lang/String;
    .locals 1
    .parameter "err"

    .prologue
    .line 588
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/seven/Z7/shared/ANSharedCommon;->getError(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getErrorTitle(I)Ljava/lang/String;
    .locals 1
    .parameter "err"

    .prologue
    .line 584
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/seven/Z7/shared/ANSharedCommon;->getError(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFromAccountType(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "accountType"

    .prologue
    .line 1139
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1140
    .local v0, currentLocale:Ljava/util/Locale;
    const/4 v2, 0x0

    .line 1142
    .local v2, simcardLocale:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1146
    :goto_0
    const-string v3, "com.seven.Z7.yahoo"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1147
    sget-object v3, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "jp"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1149
    :cond_0
    const-string v3, "yahoo_jp"

    .line 1163
    :goto_1
    return-object v3

    .line 1143
    :catch_0
    move-exception v1

    .line 1144
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "ANSharedCommon"

    const-string v4, "findISPServer>>  simcardLocale Exception!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1151
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    const-string v3, "yahoo"

    goto :goto_1

    .line 1152
    :cond_2
    const-string v3, "com.seven.Z7.gmail"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1153
    sget-object v3, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "de"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1155
    :cond_3
    const-string v3, "gmail_de"

    goto :goto_1

    .line 1157
    :cond_4
    const-string v3, "gmail"

    goto :goto_1

    .line 1158
    :cond_5
    const-string v3, "com.seven.Z7.msn"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1159
    const-string v3, "msn"

    goto :goto_1

    .line 1160
    :cond_6
    const-string v3, "com.seven.Z7.work"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1161
    const-string v3, "work"

    goto :goto_1

    .line 1163
    :cond_7
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static getInt(I)I
    .locals 1
    .parameter "id"

    .prologue
    .line 646
    invoke-static {}, Lcom/android/email/Email;->getApplication()Lcom/android/email/Email;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/Email;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public static getUISharedPreferences()Lcom/seven/Z7/shared/Z7DBSharedPreferences;
    .locals 1

    .prologue
    .line 2028
    invoke-static {}, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->getUISharedPreferences()Lcom/seven/Z7/shared/Z7DBSharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static final isEmailScope(I)Z
    .locals 2
    .parameter "scope"

    .prologue
    const/4 v0, 0x1

    .line 1354
    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.class public Lcom/android/email/combined/AccountBehavior;
.super Ljava/lang/Object;
.source "AccountBehavior.java"

# interfaces
.implements Lcom/seven/Z7/shared/PreferenceConstants$GeneralPreferences;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/combined/AccountBehavior$LocalMailboxInfo;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/android/email/combined/AccountBehavior;


# instance fields
.field private mCache:Lcom/android/email/combined/common/Cache;

.field private mContext:Landroid/content/Context;

.field private mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/email/combined/AccountFacade$AccountListener;",
            ">;"
        }
    .end annotation
.end field

.field private mListenersMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/android/email/combined/AccountFacade$AccountListener;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final ringtoneUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/combined/AccountBehavior;->mInstance:Lcom/android/email/combined/AccountBehavior;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lcom/android/email/combined/common/Cache;

    invoke-direct {v0}, Lcom/android/email/combined/common/Cache;-><init>()V

    iput-object v0, p0, Lcom/android/email/combined/AccountBehavior;->mCache:Lcom/android/email/combined/common/Cache;

    .line 71
    const-string v0, "content://media/internal/audio/media/32"

    iput-object v0, p0, Lcom/android/email/combined/AccountBehavior;->ringtoneUri:Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/combined/AccountBehavior;->mListenersMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 88
    iget-object v0, p0, Lcom/android/email/combined/AccountBehavior;->mListenersMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/combined/AccountBehavior;->mListeners:Ljava/util/Set;

    .line 74
    iput-object p1, p0, Lcom/android/email/combined/AccountBehavior;->mContext:Landroid/content/Context;

    .line 75
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/email/combined/AccountBehavior;
    .locals 2
    .parameter

    .prologue
    .line 78
    sget-object v0, Lcom/android/email/combined/AccountBehavior;->mInstance:Lcom/android/email/combined/AccountBehavior;

    if-nez v0, :cond_0

    .line 79
    const-class v1, Lcom/android/email/combined/AccountBehavior;

    monitor-enter v1

    .line 80
    :try_start_0
    new-instance v0, Lcom/android/email/combined/AccountBehavior;

    invoke-direct {v0, p0}, Lcom/android/email/combined/AccountBehavior;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/email/combined/AccountBehavior;->mInstance:Lcom/android/email/combined/AccountBehavior;

    .line 81
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_0
    sget-object v0, Lcom/android/email/combined/AccountBehavior;->mInstance:Lcom/android/email/combined/AccountBehavior;

    return-object v0

    .line 81
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final getPwFromEmailOfPref(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "emailAddress"

    .prologue
    const/4 v11, 0x0

    .line 548
    iget-object v9, p0, Lcom/android/email/combined/AccountBehavior;->mContext:Landroid/content/Context;

    const-string v10, "sharedPreferenceCB"

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 550
    .local v7, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v9, "email_and_pw"

    const-string v10, ""

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 552
    .local v2, emailAndPwValue:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 553
    const-string v6, ""

    .line 589
    :goto_0
    return-object v6

    .line 557
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/String;

    invoke-static {v2}, Lcom/seven/util/SamsungUrlEncryptionUtils;->base64Decode(Ljava/lang/String;)[B

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    .end local v2           #emailAndPwValue:Ljava/lang/String;
    .local v3, emailAndPwValue:Ljava/lang/String;
    const-string v9, "||"

    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_1

    .line 566
    const-string v6, ""

    move-object v2, v3

    .end local v3           #emailAndPwValue:Ljava/lang/String;
    .restart local v2       #emailAndPwValue:Ljava/lang/String;
    goto :goto_0

    .line 558
    :catch_0
    move-exception v0

    .line 559
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 560
    const-string v6, ""

    goto :goto_0

    .line 568
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #emailAndPwValue:Ljava/lang/String;
    .restart local v3       #emailAndPwValue:Ljava/lang/String;
    :cond_1
    const-string v9, "||"

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 569
    .local v8, splitData:[Ljava/lang/String;
    const-string v6, ""

    .line 570
    .local v6, rValue:Ljava/lang/String;
    array-length v9, v8

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    .line 571
    aget-object v9, v8, v11

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 572
    const/4 v9, 0x1

    aget-object v6, v8, v9

    .line 584
    :cond_2
    :goto_1
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 585
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    const-string v9, "email_and_pw"

    invoke-interface {v0, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 587
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object v2, v3

    .line 589
    .end local v3           #emailAndPwValue:Ljava/lang/String;
    .restart local v2       #emailAndPwValue:Ljava/lang/String;
    goto :goto_0

    .line 575
    .end local v0           #e:Landroid/content/SharedPreferences$Editor;
    .end local v2           #emailAndPwValue:Ljava/lang/String;
    .restart local v3       #emailAndPwValue:Ljava/lang/String;
    :cond_3
    const-string v9, "||"

    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 576
    .local v4, idx:I
    invoke-virtual {v3, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 577
    .local v1, email:Ljava/lang/String;
    const-string v9, "||"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v4

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 579
    .local v5, pw:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 580
    move-object v6, v5

    goto :goto_1
.end method

.method private isRegisterSevenAccountId(I)Z
    .locals 9
    .parameter "sevenAccountId"

    .prologue
    .line 598
    const/4 v7, 0x1

    .line 599
    .local v7, rValue:Z
    const/4 v6, 0x0

    .line 601
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/email/combined/AccountBehavior;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "sevenAccountKey=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 605
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 606
    const/4 v7, 0x0

    .line 609
    :cond_0
    if-eqz v6, :cond_1

    .line 610
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 612
    :cond_1
    return v7

    .line 609
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 610
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private onAccountSave(ILjava/lang/String;)I
    .locals 17
    .parameter "sevenAccountId"
    .parameter "accountEMail"

    .prologue
    .line 447
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/email/combined/AccountBehavior;->toContentValueAccount(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v8

    .line 450
    .local v8, cv:Landroid/content/ContentValues;
    const/4 v14, 0x0

    .line 453
    .local v14, seven_cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v2, "Email"

    const-string v3, "checking the seven email account address which is different with the original email address user put"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/combined/AccountBehavior;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.seven.provider.email/accounts"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "email"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "user_name"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "im_mode is null and trim(email)!=trim(user_name) and (status is null or status!=5) and user_name=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 465
    if-eqz v14, :cond_0

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 466
    const-string v2, "emailAddress"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 467
    const-string v2, "emailAddress"

    const/4 v3, 0x0

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "seven email registration: email address is changed from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    :cond_0
    if-eqz v14, :cond_1

    .line 476
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 481
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/combined/AccountBehavior;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v15

    .line 483
    .local v15, uri:Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    .line 484
    const/4 v8, 0x0

    .line 486
    invoke-virtual {v15}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 487
    .local v9, eMailAccountKey:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/combined/AccountBehavior;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v9, v1}, Lcom/android/email/combined/AccountBehavior;->toContentValueAccountCB(II)Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 490
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/email/combined/AccountBehavior;->getPwFromEmailOfPref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 492
    .local v13, pw:Ljava/lang/String;
    const/4 v15, 0x0

    .line 493
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/combined/AccountBehavior;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v13}, Lcom/android/email/combined/AccountBehavior;->toContentValuesHostAuth(JLjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v15

    .line 495
    invoke-virtual {v15}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 497
    .local v11, idx1:I
    const/4 v15, 0x0

    .line 498
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/combined/AccountBehavior;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v13}, Lcom/android/email/combined/AccountBehavior;->toContentValuesHostAuth(JLjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v15

    .line 500
    invoke-virtual {v15}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 502
    .local v12, idx2:I
    new-instance v8, Landroid/content/ContentValues;

    .end local v8           #cv:Landroid/content/ContentValues;
    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 503
    .restart local v8       #cv:Landroid/content/ContentValues;
    const-string v2, "hostAuthKeyRecv"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 504
    const-string v2, "hostAuthKeySend"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 506
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/combined/AccountBehavior;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v8, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 509
    return v9

    .line 472
    .end local v9           #eMailAccountKey:I
    .end local v11           #idx1:I
    .end local v12           #idx2:I
    .end local v13           #pw:Ljava/lang/String;
    .end local v15           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v10

    .line 473
    .local v10, ex:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 475
    if-eqz v14, :cond_1

    .line 476
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 475
    .end local v10           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v14, :cond_2

    .line 476
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method private toContentValueAccount(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 6
    .parameter "accountEMail"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 313
    const-string v2, "@"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v1, v2, v4

    .line 314
    .local v1, emailName:Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 315
    .local v0, cv:Landroid/content/ContentValues;
    const-string v2, "displayName"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v2, "emailAddress"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v2, "senderName"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v2, "syncLookback"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 319
    const-string v2, "syncInterval"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 320
    const-string v2, "flags"

    const/16 v3, 0x2001

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 321
    const-string v2, "isDefault"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 322
    const-string v2, "ringtoneUri"

    const-string v3, "content://media/internal/audio/media/32"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v2, "compatibilityUuid"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v2, "securityFlags"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 325
    const-string v2, "newMessageCount"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 326
    return-object v0
.end method

.method private toContentValueAccountCB(II)Landroid/content/ContentValues;
    .locals 18
    .parameter "eMailAccountKey"
    .parameter "sevenAccountId"

    .prologue
    .line 330
    const/4 v7, 0x0

    .line 331
    .local v7, c:Landroid/database/Cursor;
    const/16 v16, 0x3

    .line 333
    .local v16, timeLimit:I
    const/4 v14, 0x0

    .line 334
    .local v14, peakTime:I
    const/4 v11, 0x0

    .line 335
    .local v11, offPeakTime:I
    const-string v10, "0111110"

    .line 336
    .local v10, days:Ljava/lang/String;
    const-string v13, "09:00"

    .line 337
    .local v13, peakStartTime:Ljava/lang/String;
    const-string v12, "18:00"

    .line 338
    .local v12, peakEndTime:Ljava/lang/String;
    const/16 v17, 0x1

    .line 339
    .local v17, whileRoaming:I
    const/4 v15, 0x1

    .line 342
    .local v15, powerLow:I
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 343
    .local v8, code:Ljava/lang/String;
    if-eqz v8, :cond_0

    const-string v1, "NZC"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 344
    const/16 v17, 0x0

    .line 348
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/combined/AccountBehavior;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v4, "typeMsg=1"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 350
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 351
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 354
    const/4 v1, 0x6

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 355
    const/4 v1, 0x7

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 356
    const/16 v1, 0x8

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 357
    const/16 v1, 0x9

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 358
    const/16 v1, 0xa

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 359
    const/16 v1, 0xb

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 360
    const/16 v1, 0xc

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v15

    .line 410
    :cond_1
    if-eqz v7, :cond_2

    .line 411
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 414
    :cond_2
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 415
    .local v9, cv:Landroid/content/ContentValues;
    const-string v1, "accountKey"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 416
    const-string v1, "sevenAccountKey"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 417
    const-string v1, "timeLimit"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 419
    const-string v1, "typeMsg"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 421
    const-string v1, "peakTime"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 422
    const-string v1, "offPeakTime"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 423
    const-string v1, "days"

    invoke-virtual {v9, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-string v1, "peakStartTime"

    invoke-virtual {v9, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const-string v1, "peakEndTime"

    invoke-virtual {v9, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const-string v1, "whileRoaming"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 427
    const-string v1, "attachmentEnabled"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 428
    return-object v9

    .line 410
    .end local v9           #cv:Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_3

    .line 411
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/android/email/combined/AccountFacade$AccountListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/combined/AccountBehavior;->mListenersMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit p0

    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public deleteAccountForEmail(I)I
    .locals 11
    .parameter "sevenAccountId"

    .prologue
    const/4 v6, 0x1

    .line 274
    const/4 v8, 0x0

    .line 275
    .local v8, removedCnt:I
    const/4 v7, 0x0

    .line 277
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/email/combined/AccountBehavior;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$AccountCB;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "accountKey"

    aput-object v5, v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sevenAccountKey="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 280
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 281
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 283
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 284
    .local v10, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/email/combined/AccountBehavior;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v10, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 286
    iget-object v0, p0, Lcom/android/email/combined/AccountBehavior;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/AccountBackupRestore;->backupAccounts(Landroid/content/Context;)V

    .line 288
    iget-object v0, p0, Lcom/android/email/combined/AccountBehavior;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/SecurityPolicy;->reducePolicies()V

    .line 292
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    .line 296
    .local v3, ids:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/email/combined/AccountBehavior;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v2, 0x19a

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    .end local v3           #ids:[Ljava/lang/String;
    .end local v10           #uri:Landroid/net/Uri;
    :cond_0
    if-eqz v7, :cond_1

    .line 305
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 307
    :cond_1
    :goto_0
    return v8

    .line 301
    :catch_0
    move-exception v9

    .line 302
    .local v9, s:Landroid/database/SQLException;
    :try_start_1
    const-string v0, "AccountBehavior"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Excption=>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    if-eqz v7, :cond_1

    .line 305
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 304
    .end local v9           #s:Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 305
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public declared-synchronized notifyAddedAccount(ILjava/lang/String;)V
    .locals 4
    .parameter "sevenAccountId"
    .parameter "accountEMail"

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/email/combined/AccountBehavior;->isRegisterSevenAccountId(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 182
    invoke-direct {p0, p1, p2}, Lcom/android/email/combined/AccountBehavior;->onAccountSave(ILjava/lang/String;)I

    move-result v0

    .line 198
    .local v0, eMailAccountKey:I
    iget-object v3, p0, Lcom/android/email/combined/AccountBehavior;->mListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/combined/AccountFacade$AccountListener;

    .line 199
    .local v2, listener:Lcom/android/email/combined/AccountFacade$AccountListener;
    invoke-interface {v2, v0, p1}, Lcom/android/email/combined/AccountFacade$AccountListener;->onAccountAdded(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 181
    .end local v0           #eMailAccountKey:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #listener:Lcom/android/email/combined/AccountFacade$AccountListener;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 202
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized notifyRemovedAccount(I)V
    .locals 3
    .parameter "sevenAccountId"

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/email/combined/AccountBehavior;->deleteAccountForEmail(I)I

    .line 143
    iget-object v2, p0, Lcom/android/email/combined/AccountBehavior;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/combined/AccountFacade$AccountListener;

    .line 147
    .local v1, listener:Lcom/android/email/combined/AccountFacade$AccountListener;
    invoke-interface {v1, p1}, Lcom/android/email/combined/AccountFacade$AccountListener;->onAccountRemoved(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 141
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/android/email/combined/AccountFacade$AccountListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 172
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized removeListener(Lcom/android/email/combined/AccountFacade$AccountListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/combined/AccountBehavior;->mListenersMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit p0

    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toContentValuesHostAuth(JLjava/lang/String;)Landroid/content/ContentValues;
    .locals 3
    .parameter "iAccountKey"
    .parameter "pw"

    .prologue
    .line 432
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 433
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "protocol"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const-string v1, "address"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const-string v1, "port"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 436
    const-string v1, "flags"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 437
    const-string v1, "login"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const-string v1, "password"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string v1, "domain"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const-string v1, "accountKey"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 441
    return-object v0
.end method

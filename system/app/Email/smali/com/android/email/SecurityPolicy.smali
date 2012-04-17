.class public Lcom/android/email/SecurityPolicy;
.super Ljava/lang/Object;
.source "SecurityPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/SecurityPolicy$DeleteSdCardData;,
        Lcom/android/email/SecurityPolicy$PolicyAdmin;
    }
.end annotation


# static fields
.field private static final ACCOUNT_SECURITY_FLAG_PROJECTION:[Ljava/lang/String;

.field private static final ACCOUNT_SECURITY_PROJECTION:[Ljava/lang/String;

.field static final NO_POLICY_SET:Lcom/android/emailcommon/service/PolicySet;

.field public static final PASSWORD_POLICIES:[Ljava/lang/String;

.field private static sInstance:Lcom/android/email/SecurityPolicy;


# instance fields
.field private mAdminName:Landroid/content/ComponentName;

.field private mAggregatePolicy:Lcom/android/emailcommon/service/PolicySet;

.field private mContext:Landroid/content/Context;

.field private mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;


# direct methods
.method static constructor <clinit>()V
    .locals 37

    .prologue
    .line 69
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/SecurityPolicy;->sInstance:Lcom/android/email/SecurityPolicy;

    .line 176
    new-instance v0, Lcom/android/emailcommon/service/PolicySet;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x2

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, -0x1

    const/16 v29, -0x1

    const/16 v30, -0x1

    const/16 v31, 0x1

    const/16 v32, 0x1

    const/16 v33, 0x1

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x1

    invoke-direct/range {v0 .. v36}, Lcom/android/emailcommon/service/PolicySet;-><init>(IIIIZZIIZIZZZZZZZZZIIIIIIZZIIIZZZZZZ)V

    sput-object v0, Lcom/android/email/SecurityPolicy;->NO_POLICY_SET:Lcom/android/emailcommon/service/PolicySet;

    .line 190
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "PasswordMode"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "PasswordRecoveryEnabled"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "MaxDevicePasswordFailedAttempts"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "AllowSimpleDevicePassword"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "DevicePasswordExpiration"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "DevicePasswordHistory"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "MinDevicePasswordLength"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "MinPasswordComplexCharacters"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/SecurityPolicy;->PASSWORD_POLICIES:[Ljava/lang/String;

    .line 207
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "securitySyncKey"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/SecurityPolicy;->ACCOUNT_SECURITY_PROJECTION:[Ljava/lang/String;

    .line 211
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "securityFlags"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/SecurityPolicy;->ACCOUNT_SECURITY_FLAG_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 269
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 270
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 271
    iput-object v2, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    .line 272
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/email/SecurityPolicy$PolicyAdmin;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    .line 273
    iput-object v2, p0, Lcom/android/email/SecurityPolicy;->mAggregatePolicy:Lcom/android/emailcommon/service/PolicySet;

    .line 276
    invoke-static {p1}, Lcom/android/emailcommon/variant/DPMWraper;->getInstance(Landroid/content/Context;)Lcom/android/emailcommon/variant/DPMWraper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    .line 277
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/variant/DPMWraper;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/variant/DPMWraper;->setAdminPermissions(Landroid/content/ComponentName;)V

    .line 281
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/SecurityPolicy;)Landroid/content/ComponentName;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/SecurityPolicy;)Lcom/android/emailcommon/variant/DPMWraper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    return-object v0
.end method

.method private static clearPasswordExpiredFlag(Landroid/content/Context;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 1407
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1411
    :try_start_0
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->ACCOUNT_FLAGS_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1413
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1414
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1415
    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1416
    and-int/lit16 v5, v4, 0x4000

    if-eqz v5, :cond_0

    .line 1417
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1418
    const-string v6, "flags"

    and-int/lit16 v4, v4, -0x4001

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1419
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 1420
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1423
    :catch_0
    move-exception v0

    .line 1424
    :goto_1
    :try_start_2
    const-string v2, "SecurityPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearPasswordExpiredFlag exception e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1426
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1427
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1429
    :cond_1
    :goto_2
    return-void

    .line 1426
    :cond_2
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1427
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1426
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_3
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1427
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 1426
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 1423
    :catch_1
    move-exception v0

    move-object v1, v6

    goto :goto_1
.end method

.method public static exchangeAccountsExist()Z
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 976
    invoke-static {}, Lcom/android/email/SecurityPolicy;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 977
    .local v7, context:Landroid/content/Context;
    if-nez v7, :cond_1

    move v0, v11

    .line 998
    :cond_0
    :goto_0
    return v0

    .line 979
    :cond_1
    const/4 v6, 0x0

    .line 982
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 984
    if-nez v6, :cond_3

    .line 997
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 998
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v11

    goto :goto_0

    .line 986
    :cond_3
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 987
    const/4 v0, 0x6

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 988
    .local v9, hostAuthId:J
    const-wide/16 v0, 0x0

    cmp-long v0, v9, v0

    if-lez v0, :cond_3

    .line 989
    invoke-static {v7, v9, v10}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v8

    .line 990
    .local v8, ha:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    if-eqz v8, :cond_3

    iget-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    const-string v1, "eas"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    .line 991
    const/4 v0, 0x1

    .line 997
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 998
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 997
    .end local v8           #ha:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    .end local v9           #hostAuthId:J
    :cond_4
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 998
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    move v0, v11

    goto :goto_0

    .line 997
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_6

    .line 998
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 297
    sget-object v0, Lcom/android/email/SecurityPolicy;->sInstance:Lcom/android/email/SecurityPolicy;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/email/SecurityPolicy;->sInstance:Lcom/android/email/SecurityPolicy;

    iget-object v0, v0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;
    .locals 3
    .parameter "context"

    .prologue
    .line 260
    const-class v1, Lcom/android/email/SecurityPolicy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/email/SecurityPolicy;->sInstance:Lcom/android/email/SecurityPolicy;

    if-nez v0, :cond_0

    .line 261
    new-instance v0, Lcom/android/email/SecurityPolicy;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/email/SecurityPolicy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/email/SecurityPolicy;->sInstance:Lcom/android/email/SecurityPolicy;

    .line 263
    :cond_0
    sget-object v0, Lcom/android/email/SecurityPolicy;->sInstance:Lcom/android/email/SecurityPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static onDeviceAdminReceiverMessage(Landroid/content/Context;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 1366
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    .line 1367
    packed-switch p1, :pswitch_data_0

    .line 1404
    :cond_0
    :goto_0
    return-void

    .line 1369
    :pswitch_0
    invoke-virtual {v0, v5}, Lcom/android/email/SecurityPolicy;->onAdminEnabled(Z)V

    goto :goto_0

    .line 1375
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/SecurityPolicy;->onAdminEnabled(Z)V

    goto :goto_0

    .line 1380
    :pswitch_2
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->clearPasswordExpiredFlag(Landroid/content/Context;)V

    .line 1381
    invoke-static {p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->clearSecurityHoldOnAllAccounts(Landroid/content/Context;)V

    .line 1383
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1384
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getRecoveryPassword()Ljava/lang/String;

    move-result-object v1

    .line 1385
    invoke-static {p0}, Lcom/android/emailcommon/variant/DPMWraper;->getInstance(Landroid/content/Context;)Lcom/android/emailcommon/variant/DPMWraper;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/android/email/SecurityPolicy$PolicyAdmin;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3, v1}, Lcom/android/emailcommon/variant/DPMWraper;->checkPassword(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1390
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->removeRecoveryPasswords()V

    .line 1391
    invoke-static {v5}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapterDirect(I)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/adapter/ProtocolAdapter;->sendRecoveryPassword()V

    .line 1396
    invoke-static {p0}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v0

    .line 1397
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/email/NotificationController;->cancelNotification(I)V

    .line 1398
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/email/NotificationController;->cancelNotification(I)V

    goto :goto_0

    .line 1401
    :pswitch_3
    iget-object v1, v0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/email/SecurityPolicy;->onPasswordExpiring(Landroid/content/Context;)V

    goto :goto_0

    .line 1367
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private onPasswordExpiring(Landroid/content/Context;)V
    .locals 21
    .parameter "context"

    .prologue
    .line 1232
    invoke-virtual/range {p0 .. p1}, Lcom/android/email/SecurityPolicy;->findShortestExpiration(Landroid/content/Context;)J

    move-result-wide v13

    .line 1235
    .local v13, nextExpiringAccountId:J
    const-wide/16 v18, -0x1

    cmp-long v8, v13, v18

    if-nez v8, :cond_1

    .line 1289
    :cond_0
    :goto_0
    return-void

    .line 1240
    :cond_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/android/emailcommon/variant/DPMWraper;->getPasswordExpiration(Landroid/content/ComponentName;)J

    move-result-wide v10

    .line 1241
    .local v10, expirationDate:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v15, v10, v18

    .line 1242
    .local v15, timeUntilExpiration:J
    const-wide/16 v18, 0x0

    cmp-long v8, v15, v18

    if-gez v8, :cond_2

    const/4 v12, 0x1

    .line 1243
    .local v12, expired:Z
    :goto_1
    if-nez v12, :cond_3

    .line 1247
    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v3

    .line 1248
    .local v3, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v3, :cond_0

    .line 1250
    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v13, v14, v8}, Lcom/android/email/activity/setup/AccountSecurity;->actionDevicePasswordExpirationIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v7

    .line 1252
    .local v7, intent:Landroid/content/Intent;
    const v8, 0x7f080125

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1255
    .local v4, ticker:Ljava/lang/String;
    const v8, 0x7f080126

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1257
    .local v5, contentTitle:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    .line 1258
    .local v6, contentText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v2

    .line 1259
    .local v2, nc:Lcom/android/email/NotificationController;
    const/4 v8, 0x4

    invoke-virtual/range {v2 .. v8}, Lcom/android/email/NotificationController;->postAccountNotification(Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    goto :goto_0

    .line 1242
    .end local v2           #nc:Lcom/android/email/NotificationController;
    .end local v3           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v4           #ticker:Ljava/lang/String;
    .end local v5           #contentTitle:Ljava/lang/String;
    .end local v6           #contentText:Ljava/lang/String;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v12           #expired:Z
    :cond_2
    const/4 v12, 0x0

    goto :goto_1

    .line 1264
    .restart local v12       #expired:Z
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lcom/android/email/SecurityPolicy;->wipeExpiredAccounts(Landroid/content/Context;Lcom/android/email/Controller;)Z

    move-result v17

    .line 1265
    .local v17, wiped:Z
    if-eqz v17, :cond_0

    .line 1267
    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v3

    .line 1268
    .restart local v3       #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v3, :cond_0

    .line 1273
    iget v8, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    or-int/lit16 v8, v8, 0x4000

    iput v8, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    .line 1274
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1275
    .local v9, cv:Landroid/content/ContentValues;
    const-string v8, "flags"

    iget v0, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1276
    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v9}, Lcom/android/emailcommon/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 1278
    const/4 v8, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v13, v14, v8}, Lcom/android/email/activity/setup/AccountSecurity;->actionDevicePasswordExpirationIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v7

    .line 1280
    .restart local v7       #intent:Landroid/content/Intent;
    const v8, 0x7f080128

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1281
    .restart local v4       #ticker:Ljava/lang/String;
    const v8, 0x7f080129

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1283
    .restart local v5       #contentTitle:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    .line 1284
    .restart local v6       #contentText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v2

    .line 1285
    .restart local v2       #nc:Lcom/android/email/NotificationController;
    const/4 v8, 0x5

    invoke-virtual/range {v2 .. v8}, Lcom/android/email/NotificationController;->postAccountNotification(Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method

.method public static setAccountHoldFlag(Landroid/content/Context;JZ)V
    .locals 1
    .parameter "context"
    .parameter "accountId"
    .parameter "newState"

    .prologue
    .line 1068
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 1069
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v0, :cond_0

    .line 1070
    invoke-static {p0, v0, p3}, Lcom/android/email/SecurityPolicy;->setAccountHoldFlag(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;Z)V

    .line 1072
    :cond_0
    return-void
.end method

.method public static setAccountHoldFlag(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;Z)V
    .locals 3
    .parameter "context"
    .parameter "account"
    .parameter "newState"

    .prologue
    .line 1084
    if-eqz p2, :cond_0

    .line 1085
    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    .line 1089
    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1090
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "flags"

    iget v2, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1091
    invoke-virtual {p1, p0, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 1092
    return-void

    .line 1087
    .end local v0           #cv:Landroid/content/ContentValues;
    :cond_0
    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    goto :goto_0
.end method

.method static wipeExpiredAccounts(Landroid/content/Context;Lcom/android/email/Controller;)Z
    .locals 12
    .parameter "context"
    .parameter "controller"

    .prologue
    .line 1333
    const/4 v11, 0x0

    .line 1334
    .local v11, result:Z
    const/4 v9, 0x0

    .line 1336
    .local v9, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/SecurityPolicy;->ACCOUNT_SECURITY_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1338
    :cond_0
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1339
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1340
    .local v7, accountId:J
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/SecurityPolicy;->getAccountPolicy(Ljava/lang/Long;)Lcom/android/emailcommon/service/PolicySet;

    move-result-object v10

    .line 1341
    .local v10, ps:Lcom/android/emailcommon/service/PolicySet;
    if-eqz v10, :cond_0

    iget v0, v10, Lcom/android/emailcommon/service/PolicySet;->mPasswordExpirationDays:I

    if-lez v0, :cond_0

    .line 1342
    invoke-static {p0, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v6

    .line 1343
    .local v6, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v6, :cond_0

    .line 1345
    const/4 v0, 0x1

    invoke-static {p0, v6, v0}, Lcom/android/email/SecurityPolicy;->setAccountHoldFlag(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;Z)V

    .line 1347
    invoke-virtual {p1, v7, v8}, Lcom/android/email/Controller;->deleteSyncedDataSync(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1349
    const/4 v11, 0x1

    goto :goto_0

    .line 1354
    .end local v6           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v7           #accountId:J
    .end local v10           #ps:Lcom/android/emailcommon/service/PolicySet;
    :cond_1
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1355
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1357
    :cond_2
    return v11

    .line 1354
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1355
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method


# virtual methods
.method public IsAllowPOPIMAPEmailSetted()Z
    .locals 2

    .prologue
    .line 969
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/variant/DPMWraper;->getAllowPOPIMAPEmail(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 970
    const/4 v0, 0x1

    .line 972
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearNotification(J)V
    .locals 2
    .parameter "accountId"

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/NotificationController;->cancelNotification(I)V

    .line 1132
    return-void
.end method

.method public clearUnsupportedPolicies(Lcom/android/emailcommon/service/PolicySet;)Lcom/android/emailcommon/service/PolicySet;
    .locals 38
    .parameter "policies"

    .prologue
    .line 656
    move-object/from16 v1, p1

    .line 662
    .local v1, result:Lcom/android/emailcommon/service/PolicySet;
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryption:Z

    if-eqz v2, :cond_0

    .line 663
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/emailcommon/variant/DEMWraper;->getInstance(Landroid/content/Context;)Lcom/android/emailcommon/variant/DEMWraper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/emailcommon/variant/DEMWraper;->isEncryptionSupported()Z

    move-result v2

    if-nez v2, :cond_0

    .line 665
    new-instance v1, Lcom/android/emailcommon/service/PolicySet;

    .end local v1           #result:Lcom/android/emailcommon/service/PolicySet;
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/emailcommon/service/PolicySet;->mMinPasswordLength:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/emailcommon/service/PolicySet;->mPasswordMode:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/emailcommon/service/PolicySet;->mMaxPasswordFails:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/emailcommon/service/PolicySet;->mMaxScreenLockTime:I

    move-object/from16 v0, p1

    iget-boolean v6, v0, Lcom/android/emailcommon/service/PolicySet;->mRequireRemoteWipe:Z

    move-object/from16 v0, p1

    iget-boolean v7, v0, Lcom/android/emailcommon/service/PolicySet;->mPasswordRecoverable:Z

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/emailcommon/service/PolicySet;->mPasswordExpirationDays:I

    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/emailcommon/service/PolicySet;->mPasswordHistory:I

    move-object/from16 v0, p1

    iget-boolean v10, v0, Lcom/android/emailcommon/service/PolicySet;->mAttachmentsEnabled:Z

    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/emailcommon/service/PolicySet;->mMaxAttachmentSize:I

    move-object/from16 v0, p1

    iget-boolean v12, v0, Lcom/android/emailcommon/service/PolicySet;->mAllowStorageCard:Z

    move-object/from16 v0, p1

    iget-boolean v13, v0, Lcom/android/emailcommon/service/PolicySet;->mAllowCamera:Z

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/android/emailcommon/service/PolicySet;->mAllowWifi:Z

    move-object/from16 v0, p1

    iget-boolean v15, v0, Lcom/android/emailcommon/service/PolicySet;->mAllowTextMessaging:Z

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/emailcommon/service/PolicySet;->mAllowPOPIMAPEmail:Z

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/emailcommon/service/PolicySet;->mAllowHTMLEmail:Z

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/emailcommon/service/PolicySet;->mAllowBrowser:Z

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/emailcommon/service/PolicySet;->mAllowInternetSharing:Z

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/emailcommon/service/PolicySet;->mRequireManualSyncWhenRoaming:Z

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/emailcommon/service/PolicySet;->mAllowBluetoothMode:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/emailcommon/service/PolicySet;->mPasswordComplexChars:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/emailcommon/service/PolicySet;->mMaxCalendarAgeFilter:I

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailAgeFilter:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailBodyTruncationSize:I

    move/from16 v25, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailHtmlBodyTruncationSize:I

    move/from16 v26, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEMessages:Z

    move/from16 v27, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptedSMIMEMessages:Z

    move/from16 v28, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/emailcommon/service/PolicySet;->mRequireSignedSMIMEAlgorithm:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryptionSMIMEAlgorithm:I

    move/from16 v30, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/emailcommon/service/PolicySet;->mAllowSMIMEEncryptionAlgorithmNegotiation:I

    move/from16 v31, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/emailcommon/service/PolicySet;->mAllowSMIMESoftCerts:Z

    move/from16 v32, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/emailcommon/service/PolicySet;->mAllowDesktopSync:Z

    move/from16 v33, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/emailcommon/service/PolicySet;->mAllowIrDA:Z

    move/from16 v34, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryption:Z

    move/from16 v35, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/emailcommon/service/PolicySet;->mDeviceEncryptionEnabled:Z

    move/from16 v36, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/emailcommon/service/PolicySet;->mSimplePasswordEnabled:Z

    move/from16 v37, v0

    invoke-direct/range {v1 .. v37}, Lcom/android/emailcommon/service/PolicySet;-><init>(IIIIZZIIZIZZZZZZZZZIIIIIIZZIIIZZZZZZ)V

    .line 688
    .restart local v1       #result:Lcom/android/emailcommon/service/PolicySet;
    :cond_0
    return-object v1
.end method

.method computeAggregatePolicy(Ljava/lang/Long;)Lcom/android/emailcommon/service/PolicySet;
    .locals 45
    .parameter "accountId"

    .prologue
    .line 334
    const/16 v43, 0x0

    .line 336
    .local v43, policiesFound:Z
    const/high16 v3, -0x8000

    .line 337
    .local v3, minPasswordLength:I
    const/high16 v4, -0x8000

    .line 338
    .local v4, passwordMode:I
    const v5, 0x7fffffff

    .line 339
    .local v5, maxPasswordFails:I
    const v6, 0x7fffffff

    .line 340
    .local v6, maxScreenLockTime:I
    const/4 v7, 0x0

    .line 341
    .local v7, requireRemoteWipe:Z
    const/high16 v10, -0x8000

    .line 342
    .local v10, passwordHistory:I
    const v9, 0x7fffffff

    .line 343
    .local v9, passwordExpirationDays:I
    const/high16 v23, -0x8000

    .line 344
    .local v23, passwordComplexChars:I
    const/16 v36, 0x0

    .line 345
    .local v36, requireEncryption:Z
    const/16 v37, 0x0

    .line 348
    .local v37, deviceEncryptionEnabled:Z
    const/4 v8, 0x0

    .line 350
    .local v8, passwordRecoverable:Z
    const/4 v11, 0x1

    .line 352
    .local v11, attachmentsEnabled:Z
    const/16 v38, 0x1

    .line 353
    .local v38, simplePasswordEnabled:Z
    const v12, 0x7fffffff

    .line 355
    .local v12, maxAttachmentSize:I
    const/4 v13, 0x1

    .line 356
    .local v13, allowStorageCard:Z
    const/4 v14, 0x1

    .line 357
    .local v14, allowCamera:Z
    const/4 v15, 0x1

    .line 358
    .local v15, allowWifi:Z
    const/16 v16, 0x1

    .line 359
    .local v16, allowTextMessaging:Z
    const/16 v17, 0x1

    .line 360
    .local v17, allowPOPIMAPEmail:Z
    const/16 v18, 0x1

    .line 361
    .local v18, allowHTMLEmail:Z
    const/16 v19, 0x1

    .line 362
    .local v19, allowBrowser:Z
    const/16 v20, 0x1

    .line 363
    .local v20, allowInternetSharing:Z
    const/16 v21, 0x0

    .line 364
    .local v21, requireManualSyncWhenRoaming:Z
    const/16 v22, 0x2

    .line 367
    .local v22, allowBluetoothMode:I
    const/16 v24, 0x0

    .line 368
    .local v24, maxCalendarAgeFilter:I
    const/16 v25, 0x0

    .line 369
    .local v25, maxEmailAgeFilter:I
    const v26, 0x7fffffff

    .line 373
    .local v26, maxEmailBodyTruncationSize:I
    const v27, 0x7fffffff

    .line 378
    .local v27, maxEmailHtmlBodyTruncationSize:I
    const/16 v28, 0x0

    .line 379
    .local v28, requireSignedSMIMEMessages:Z
    const/16 v29, 0x0

    .line 380
    .local v29, requireEncryptedSMIMEMessages:Z
    const/16 v30, -0x1

    .line 381
    .local v30, requireSignedSMIMEAlgorithm:I
    const/16 v31, -0x1

    .line 382
    .local v31, requireEncryptionSMIMEAlgorithm:I
    const/16 v32, -0x1

    .line 383
    .local v32, allowSMIMEEncryptionAlgorithmNegotiation:I
    const/16 v33, 0x1

    .line 384
    .local v33, allowSMIMESoftCerts:Z
    const/16 v34, 0x1

    .line 385
    .local v34, allowDesktopSync:Z
    const/16 v35, 0x1

    .line 387
    .local v35, allowIrDA:Z
    new-instance v42, Lcom/android/email/PoliciesMultiplexer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, v42

    invoke-direct {v0, v2}, Lcom/android/email/PoliciesMultiplexer;-><init>(Landroid/content/Context;)V

    .line 388
    .local v42, pm:Lcom/android/email/PoliciesMultiplexer;
    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/email/PoliciesMultiplexer;->computeAggregatePolicy(Ljava/lang/Long;)Ljava/util/HashMap;

    move-result-object v44

    .line 390
    .local v44, values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v44, :cond_0

    invoke-virtual/range {v44 .. v44}, Ljava/util/HashMap;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 391
    const/16 v43, 0x1

    .line 393
    const/16 v41, 0x0

    .line 394
    .local v41, intValue:Ljava/lang/Integer;
    const/16 v39, 0x0

    .line 396
    .local v39, boolValue:Ljava/lang/Boolean;
    const-string v2, "PasswordMode"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    .end local v41           #intValue:Ljava/lang/Integer;
    check-cast v41, Ljava/lang/Integer;

    .restart local v41       #intValue:Ljava/lang/Integer;
    if-nez v41, :cond_e

    .line 398
    :goto_0
    const-string v2, "MinDevicePasswordLength"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    .end local v41           #intValue:Ljava/lang/Integer;
    check-cast v41, Ljava/lang/Integer;

    .restart local v41       #intValue:Ljava/lang/Integer;
    if-nez v41, :cond_f

    .line 401
    :goto_1
    const-string v2, "MaxDevicePasswordFailedAttempts"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    .end local v41           #intValue:Ljava/lang/Integer;
    check-cast v41, Ljava/lang/Integer;

    .restart local v41       #intValue:Ljava/lang/Integer;
    if-nez v41, :cond_10

    .line 404
    :goto_2
    const-string v2, "MaxInactivityTime"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    .end local v41           #intValue:Ljava/lang/Integer;
    check-cast v41, Ljava/lang/Integer;

    .restart local v41       #intValue:Ljava/lang/Integer;
    if-nez v41, :cond_11

    .line 407
    :goto_3
    const-string v2, "RemoteWipe"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #boolValue:Ljava/lang/Boolean;
    check-cast v39, Ljava/lang/Boolean;

    .restart local v39       #boolValue:Ljava/lang/Boolean;
    if-nez v39, :cond_12

    .line 410
    :goto_4
    const-string v2, "PasswordRecoveryEnabled"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #boolValue:Ljava/lang/Boolean;
    check-cast v39, Ljava/lang/Boolean;

    .restart local v39       #boolValue:Ljava/lang/Boolean;
    if-nez v39, :cond_13

    .line 413
    :goto_5
    const-string v2, "DevicePasswordExpiration"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    .end local v41           #intValue:Ljava/lang/Integer;
    check-cast v41, Ljava/lang/Integer;

    .restart local v41       #intValue:Ljava/lang/Integer;
    if-nez v41, :cond_14

    .line 416
    :goto_6
    const-string v2, "DevicePasswordHistory"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    .end local v41           #intValue:Ljava/lang/Integer;
    check-cast v41, Ljava/lang/Integer;

    .restart local v41       #intValue:Ljava/lang/Integer;
    if-nez v41, :cond_15

    .line 419
    :goto_7
    const-string v2, "RequireDeviceEncryption"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #boolValue:Ljava/lang/Boolean;
    check-cast v39, Ljava/lang/Boolean;

    .restart local v39       #boolValue:Ljava/lang/Boolean;
    if-nez v39, :cond_16

    .line 422
    :goto_8
    const-string v2, "DeviceEncryptionEnabled"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #boolValue:Ljava/lang/Boolean;
    check-cast v39, Ljava/lang/Boolean;

    .restart local v39       #boolValue:Ljava/lang/Boolean;
    if-nez v39, :cond_17

    .line 425
    :goto_9
    const-string v2, "AttachmentsEnabled"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #boolValue:Ljava/lang/Boolean;
    check-cast v39, Ljava/lang/Boolean;

    .restart local v39       #boolValue:Ljava/lang/Boolean;
    if-nez v39, :cond_18

    .line 428
    :goto_a
    const-string v2, "AllowSimpleDevicePassword"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #boolValue:Ljava/lang/Boolean;
    check-cast v39, Ljava/lang/Boolean;

    .restart local v39       #boolValue:Ljava/lang/Boolean;
    if-nez v39, :cond_19

    .line 431
    :goto_b
    const-string v2, "MaxAttachmentSize"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    .end local v41           #intValue:Ljava/lang/Integer;
    check-cast v41, Ljava/lang/Integer;

    .restart local v41       #intValue:Ljava/lang/Integer;
    if-nez v41, :cond_1a

    .line 435
    :goto_c
    const-string v2, "AllowStorageCard"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #boolValue:Ljava/lang/Boolean;
    check-cast v39, Ljava/lang/Boolean;

    .restart local v39       #boolValue:Ljava/lang/Boolean;
    if-nez v39, :cond_1b

    .line 438
    :goto_d
    const-string v2, "AllowCamera"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #boolValue:Ljava/lang/Boolean;
    check-cast v39, Ljava/lang/Boolean;

    .restart local v39       #boolValue:Ljava/lang/Boolean;
    if-nez v39, :cond_1c

    .line 440
    :goto_e
    const-string v2, "AllowWifi"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #boolValue:Ljava/lang/Boolean;
    check-cast v39, Ljava/lang/Boolean;

    .restart local v39       #boolValue:Ljava/lang/Boolean;
    if-nez v39, :cond_1d

    .line 442
    :goto_f
    const-string v2, "AllowTextMessaging"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #boolValue:Ljava/lang/Boolean;
    check-cast v39, Ljava/lang/Boolean;

    .restart local v39       #boolValue:Ljava/lang/Boolean;
    if-nez v39, :cond_1e

    .line 445
    :goto_10
    const-string v2, "AllowPOPIMAPEmail"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #boolValue:Ljava/lang/Boolean;
    check-cast v39, Ljava/lang/Boolean;

    .restart local v39       #boolValue:Ljava/lang/Boolean;
    if-nez v39, :cond_1f

    .line 448
    :goto_11
    const-string v2, "AllowHTMLEmail"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #boolValue:Ljava/lang/Boolean;
    check-cast v39, Ljava/lang/Boolean;

    .restart local v39       #boolValue:Ljava/lang/Boolean;
    if-nez v39, :cond_20

    .line 451
    :goto_12
    const-string v2, "AllowBrowser"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #boolValue:Ljava/lang/Boolean;
    check-cast v39, Ljava/lang/Boolean;

    .restart local v39       #boolValue:Ljava/lang/Boolean;
    if-nez v39, :cond_21

    .line 453
    :goto_13
    const-string v2, "AllowInternetSharing"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #boolValue:Ljava/lang/Boolean;
    check-cast v39, Ljava/lang/Boolean;

    .restart local v39       #boolValue:Ljava/lang/Boolean;
    if-nez v39, :cond_22

    .line 456
    :goto_14
    const-string v2, "RequireManualSyncWhenRoaming"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #boolValue:Ljava/lang/Boolean;
    check-cast v39, Ljava/lang/Boolean;

    .restart local v39       #boolValue:Ljava/lang/Boolean;
    if-nez v39, :cond_23

    .line 459
    :goto_15
    const-string v2, "AllowBluetoothMode"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    .end local v41           #intValue:Ljava/lang/Integer;
    check-cast v41, Ljava/lang/Integer;

    .restart local v41       #intValue:Ljava/lang/Integer;
    if-nez v41, :cond_24

    .line 462
    :goto_16
    const-string v2, "MinPasswordComplexCharacters"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    .end local v41           #intValue:Ljava/lang/Integer;
    check-cast v41, Ljava/lang/Integer;

    .restart local v41       #intValue:Ljava/lang/Integer;
    if-nez v41, :cond_25

    .line 465
    :goto_17
    const-string v2, "MaxCalendarAgeFilter"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    .end local v41           #intValue:Ljava/lang/Integer;
    check-cast v41, Ljava/lang/Integer;

    .restart local v41       #intValue:Ljava/lang/Integer;
    if-nez v41, :cond_26

    .line 468
    :goto_18
    const-string v2, "MaxEmailAgeFilter"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    .end local v41           #intValue:Ljava/lang/Integer;
    check-cast v41, Ljava/lang/Integer;

    .restart local v41       #intValue:Ljava/lang/Integer;
    if-nez v41, :cond_27

    .line 471
    :goto_19
    const-string v2, "MaxEmailBodyTruncationSize"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    .end local v41           #intValue:Ljava/lang/Integer;
    check-cast v41, Ljava/lang/Integer;

    .restart local v41       #intValue:Ljava/lang/Integer;
    if-nez v41, :cond_28

    .line 474
    :goto_1a
    const-string v2, "MaxEmailHtmlBodyTruncationSize"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    .end local v41           #intValue:Ljava/lang/Integer;
    check-cast v41, Ljava/lang/Integer;

    .restart local v41       #intValue:Ljava/lang/Integer;
    if-nez v41, :cond_29

    .line 477
    :goto_1b
    const-string v2, "RequireSignedSMIMEMessages"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #boolValue:Ljava/lang/Boolean;
    check-cast v39, Ljava/lang/Boolean;

    .restart local v39       #boolValue:Ljava/lang/Boolean;
    if-nez v39, :cond_2a

    .line 480
    :goto_1c
    const-string v2, "RequireEncryptedSMIMEMessages"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #boolValue:Ljava/lang/Boolean;
    check-cast v39, Ljava/lang/Boolean;

    .restart local v39       #boolValue:Ljava/lang/Boolean;
    if-nez v39, :cond_2b

    .line 484
    :goto_1d
    const-string v2, "RequireSignedSMIMEAlgorithm"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    .end local v41           #intValue:Ljava/lang/Integer;
    check-cast v41, Ljava/lang/Integer;

    .restart local v41       #intValue:Ljava/lang/Integer;
    if-nez v41, :cond_2c

    .line 487
    :goto_1e
    const-string v2, "RequireEncryptionSMIMEAlgorithm"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    .end local v41           #intValue:Ljava/lang/Integer;
    check-cast v41, Ljava/lang/Integer;

    .restart local v41       #intValue:Ljava/lang/Integer;
    if-nez v41, :cond_2d

    .line 490
    :goto_1f
    const-string v2, "AllowSMIMEEncryptionAlgorithmNegotiation"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    .end local v41           #intValue:Ljava/lang/Integer;
    check-cast v41, Ljava/lang/Integer;

    .restart local v41       #intValue:Ljava/lang/Integer;
    if-nez v41, :cond_2e

    .line 494
    :goto_20
    const-string v2, "AllowSMIMESoftCerts"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #boolValue:Ljava/lang/Boolean;
    check-cast v39, Ljava/lang/Boolean;

    .restart local v39       #boolValue:Ljava/lang/Boolean;
    if-nez v39, :cond_2f

    .line 497
    :goto_21
    const-string v2, "AllowDesktopSync"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #boolValue:Ljava/lang/Boolean;
    check-cast v39, Ljava/lang/Boolean;

    .restart local v39       #boolValue:Ljava/lang/Boolean;
    if-nez v39, :cond_30

    .line 500
    :goto_22
    const-string v2, "AllowIrDA"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    .end local v39           #boolValue:Ljava/lang/Boolean;
    check-cast v39, Ljava/lang/Boolean;

    .restart local v39       #boolValue:Ljava/lang/Boolean;
    if-nez v39, :cond_31

    .line 504
    .end local v39           #boolValue:Ljava/lang/Boolean;
    .end local v41           #intValue:Ljava/lang/Integer;
    :cond_0
    :goto_23
    const/16 v40, 0x0

    .line 543
    .local v40, c:Landroid/database/Cursor;
    if-eqz v43, :cond_32

    .line 546
    const/high16 v2, -0x8000

    if-ne v3, v2, :cond_1

    .line 547
    const/4 v3, 0x0

    .line 548
    :cond_1
    const/high16 v2, -0x8000

    if-ne v4, v2, :cond_2

    .line 549
    const/4 v4, 0x0

    .line 550
    :cond_2
    const v2, 0x7fffffff

    if-ne v5, v2, :cond_3

    .line 551
    const/4 v5, 0x0

    .line 552
    :cond_3
    const v2, 0x7fffffff

    if-ne v6, v2, :cond_4

    .line 553
    const/4 v6, 0x0

    .line 555
    :cond_4
    const v2, 0x7fffffff

    if-ne v12, v2, :cond_5

    .line 556
    const/4 v12, 0x0

    .line 557
    :cond_5
    const v2, 0x7fffffff

    if-eq v9, v2, :cond_6

    const/high16 v2, -0x8000

    if-ne v9, v2, :cond_7

    .line 559
    :cond_6
    const/4 v9, 0x0

    .line 560
    :cond_7
    const v2, 0x7fffffff

    if-eq v10, v2, :cond_8

    const/high16 v2, -0x8000

    if-ne v10, v2, :cond_9

    .line 561
    :cond_8
    const/4 v10, 0x0

    .line 563
    :cond_9
    const v2, 0x7fffffff

    move/from16 v0, v26

    if-eq v0, v2, :cond_a

    if-gez v26, :cond_b

    .line 564
    :cond_a
    const/16 v26, 0x0

    .line 565
    :cond_b
    const v2, 0x7fffffff

    move/from16 v0, v27

    if-eq v0, v2, :cond_c

    if-gez v27, :cond_d

    .line 567
    :cond_c
    const/16 v27, 0x0

    .line 572
    :cond_d
    new-instance v2, Lcom/android/emailcommon/service/PolicySet;

    invoke-direct/range {v2 .. v38}, Lcom/android/emailcommon/service/PolicySet;-><init>(IIIIZZIIZIZZZZZZZZZIIIIIIZZIIIZZZZZZ)V

    .line 586
    :goto_24
    return-object v2

    .line 396
    .end local v40           #c:Landroid/database/Cursor;
    .restart local v39       #boolValue:Ljava/lang/Boolean;
    .restart local v41       #intValue:Ljava/lang/Integer;
    :cond_e
    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto/16 :goto_0

    .line 398
    :cond_f
    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto/16 :goto_1

    .line 401
    :cond_10
    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto/16 :goto_2

    .line 404
    :cond_11
    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto/16 :goto_3

    .line 407
    :cond_12
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    goto/16 :goto_4

    .line 410
    :cond_13
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    goto/16 :goto_5

    .line 413
    :cond_14
    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto/16 :goto_6

    .line 416
    :cond_15
    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto/16 :goto_7

    .line 419
    :cond_16
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    goto/16 :goto_8

    .line 422
    :cond_17
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v37

    goto/16 :goto_9

    .line 425
    :cond_18
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    goto/16 :goto_a

    .line 428
    :cond_19
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v38

    goto/16 :goto_b

    .line 431
    :cond_1a
    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v12

    goto/16 :goto_c

    .line 435
    :cond_1b
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    goto/16 :goto_d

    .line 438
    :cond_1c
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    goto/16 :goto_e

    .line 440
    :cond_1d
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    goto/16 :goto_f

    .line 442
    :cond_1e
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    goto/16 :goto_10

    .line 445
    :cond_1f
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    goto/16 :goto_11

    .line 448
    :cond_20
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    goto/16 :goto_12

    .line 451
    :cond_21
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    goto/16 :goto_13

    .line 453
    :cond_22
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    goto/16 :goto_14

    .line 456
    :cond_23
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    goto/16 :goto_15

    .line 459
    :cond_24
    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v22

    goto/16 :goto_16

    .line 462
    :cond_25
    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v23

    goto/16 :goto_17

    .line 465
    :cond_26
    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v24

    goto/16 :goto_18

    .line 468
    :cond_27
    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v25

    goto/16 :goto_19

    .line 471
    :cond_28
    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v26

    goto/16 :goto_1a

    .line 474
    :cond_29
    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v27

    goto/16 :goto_1b

    .line 477
    :cond_2a
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    goto/16 :goto_1c

    .line 480
    :cond_2b
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    goto/16 :goto_1d

    .line 484
    :cond_2c
    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v30

    goto/16 :goto_1e

    .line 487
    :cond_2d
    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v31

    goto/16 :goto_1f

    .line 490
    :cond_2e
    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v32

    goto/16 :goto_20

    .line 494
    :cond_2f
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v33

    goto/16 :goto_21

    .line 497
    :cond_30
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v34

    goto/16 :goto_22

    .line 500
    :cond_31
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v35

    goto/16 :goto_23

    .line 586
    .end local v39           #boolValue:Ljava/lang/Boolean;
    .end local v41           #intValue:Ljava/lang/Integer;
    .restart local v40       #c:Landroid/database/Cursor;
    :cond_32
    sget-object v2, Lcom/android/email/SecurityPolicy;->NO_POLICY_SET:Lcom/android/emailcommon/service/PolicySet;

    goto/16 :goto_24
.end method

.method public deleteSdCardFiles(Ljava/io/File;)Z
    .locals 10
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x2

    const/4 v3, 0x1

    .line 1521
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1551
    :cond_0
    :goto_0
    return v1

    .line 1524
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 1525
    if-eqz v4, :cond_0

    .line 1529
    const-string v5, "sdcard"

    move v0, v1

    move v2, v3

    .line 1531
    :goto_1
    array-length v6, v4

    if-ge v0, v6, :cond_c

    .line 1532
    aget-object v6, v4, v0

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 1534
    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1535
    aget-object v7, v6, v3

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    aget-object v7, v6, v9

    const-string v8, "apk"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    :cond_2
    aget-object v7, v6, v3

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    aget-object v7, v6, v9

    const-string v8, "SamsungDic"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    :cond_3
    aget-object v7, v6, v3

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    aget-object v7, v6, v9

    const-string v8, "ReadersHub"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    :cond_4
    aget-object v7, v6, v3

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    aget-object v7, v6, v9

    const-string v8, "Tmap3"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    :cond_5
    aget-object v7, v6, v3

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    aget-object v7, v6, v9

    const-string v8, ".version"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    :cond_6
    aget-object v7, v6, v3

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    aget-object v6, v6, v9

    const-string v7, ".filesize"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1541
    :cond_7
    const-string v6, "FactoryResetEmail"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v4, v0

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1543
    :cond_8
    aget-object v6, v4, v0

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1544
    if-eqz v2, :cond_9

    aget-object v2, v4, v0

    invoke-virtual {p0, v2}, Lcom/android/email/SecurityPolicy;->deleteSdCardFiles(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_9

    move v2, v3

    goto :goto_2

    :cond_9
    move v2, v1

    goto :goto_2

    .line 1546
    :cond_a
    if-eqz v2, :cond_b

    aget-object v2, v4, v0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_b

    move v2, v3

    goto :goto_2

    :cond_b
    move v2, v1

    goto :goto_2

    .line 1550
    :cond_c
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move v1, v2

    .line 1551
    goto/16 :goto_0
.end method

.method deleteSecuredAccounts(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 1191
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1193
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 1195
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "securityFlags!=0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1197
    const-string v1, "SecurityPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Email administration disabled; deleting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " secured account(s)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1200
    invoke-static {p1}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/email/Controller;->deleteAccountSync(JLandroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1204
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1205
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v1

    .line 1204
    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1205
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1207
    :cond_2
    const-wide/16 v1, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/email/SecurityPolicy;->updatePolicies(J)V

    .line 1208
    return-void
.end method

.method findShortestExpiration(Landroid/content/Context;)J
    .locals 17
    .parameter "context"

    .prologue
    .line 1298
    const-wide/16 v12, -0x1

    .line 1299
    .local v12, nextExpiringAccountId:J
    const-wide v15, 0x7fffffffffffffffL

    .line 1300
    .local v15, shortestExpiration:J
    const/4 v9, 0x0

    .line 1302
    .local v9, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/email/SecurityPolicy;->ACCOUNT_SECURITY_PROJECTION:[Ljava/lang/String;

    const-string v4, "securitySyncKey IS NOT NULL AND securitySyncKey!=0"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1304
    :cond_0
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1305
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1306
    .local v10, flags:J
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1307
    .local v7, accId:J
    const-wide/16 v1, 0x0

    cmp-long v1, v10, v1

    if-eqz v1, :cond_0

    .line 1308
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/email/SecurityPolicy;->getAccountPolicy(Ljava/lang/Long;)Lcom/android/emailcommon/service/PolicySet;

    move-result-object v14

    .line 1310
    .local v14, p:Lcom/android/emailcommon/service/PolicySet;
    iget v1, v14, Lcom/android/emailcommon/service/PolicySet;->mPasswordExpirationDays:I

    if-lez v1, :cond_0

    iget v1, v14, Lcom/android/emailcommon/service/PolicySet;->mPasswordExpirationDays:I

    int-to-long v1, v1

    cmp-long v1, v1, v15

    if-gez v1, :cond_0

    .line 1312
    move-wide v12, v7

    .line 1313
    iget v1, v14, Lcom/android/emailcommon/service/PolicySet;->mPasswordExpirationDays:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v15, v1

    goto :goto_0

    .line 1318
    .end local v7           #accId:J
    .end local v10           #flags:J
    .end local v14           #p:Lcom/android/emailcommon/service/PolicySet;
    :cond_1
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1319
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1321
    :cond_2
    return-wide v12

    .line 1318
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1319
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method public declared-synchronized getAccountPolicy(Ljava/lang/Long;)Lcom/android/emailcommon/service/PolicySet;
    .locals 1
    .parameter "accountId"

    .prologue
    .line 602
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/email/SecurityPolicy;->computeAggregatePolicy(Ljava/lang/Long;)Lcom/android/emailcommon/service/PolicySet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAdminComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public declared-synchronized getAggregatePolicy()Lcom/android/emailcommon/service/PolicySet;
    .locals 3

    .prologue
    .line 594
    monitor-enter p0

    const-wide/16 v1, -0x1

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 595
    .local v0, tmpAccountId:Ljava/lang/Long;
    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mAggregatePolicy:Lcom/android/emailcommon/service/PolicySet;

    if-nez v1, :cond_0

    .line 596
    invoke-virtual {p0, v0}, Lcom/android/email/SecurityPolicy;->computeAggregatePolicy(Ljava/lang/Long;)Lcom/android/emailcommon/service/PolicySet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/SecurityPolicy;->mAggregatePolicy:Lcom/android/emailcommon/service/PolicySet;

    .line 598
    :cond_0
    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mAggregatePolicy:Lcom/android/emailcommon/service/PolicySet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 594
    .end local v0           #tmpAccountId:Ljava/lang/Long;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getInactiveReasons(Lcom/android/emailcommon/service/PolicySet;)I
    .locals 13
    .parameter "policies"

    .prologue
    const/4 v8, 0x1

    .line 751
    if-nez p1, :cond_0

    .line 752
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->getAggregatePolicy()Lcom/android/emailcommon/service/PolicySet;

    move-result-object p1

    .line 756
    :cond_0
    sget-object v9, Lcom/android/email/SecurityPolicy;->NO_POLICY_SET:Lcom/android/emailcommon/service/PolicySet;

    if-ne p1, v9, :cond_2

    .line 757
    const/4 v6, 0x0

    .line 964
    :cond_1
    :goto_0
    return v6

    .line 759
    :cond_2
    const/4 v6, 0x0

    .line 761
    .local v6, reasons:I
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->isActiveAdmin()Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 763
    iget v9, p1, Lcom/android/emailcommon/service/PolicySet;->mMinPasswordLength:I

    if-lez v9, :cond_3

    .line 764
    iget-object v9, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v10, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v9, v10}, Lcom/android/emailcommon/variant/DPMWraper;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v9

    iget v10, p1, Lcom/android/emailcommon/service/PolicySet;->mMinPasswordLength:I

    if-ge v9, v10, :cond_3

    .line 765
    or-int/lit8 v6, v6, 0x4

    .line 768
    :cond_3
    iget v9, p1, Lcom/android/emailcommon/service/PolicySet;->mPasswordMode:I

    if-lez v9, :cond_5

    .line 769
    iget-object v9, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v10, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v9, v10}, Lcom/android/emailcommon/variant/DPMWraper;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v9

    invoke-virtual {p1}, Lcom/android/emailcommon/service/PolicySet;->getDPManagerPasswordQuality()I

    move-result v10

    if-ge v9, v10, :cond_4

    .line 771
    or-int/lit8 v6, v6, 0x4

    .line 773
    :cond_4
    iget-object v9, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    invoke-virtual {v9}, Lcom/android/emailcommon/variant/DPMWraper;->isActivePasswordSufficient()Z

    move-result v9

    if-nez v9, :cond_5

    .line 774
    or-int/lit8 v6, v6, 0x4

    .line 777
    :cond_5
    iget v9, p1, Lcom/android/emailcommon/service/PolicySet;->mMaxScreenLockTime:I

    if-lez v9, :cond_6

    .line 779
    iget-object v9, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v10, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v9, v10}, Lcom/android/emailcommon/variant/DPMWraper;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v9

    iget v11, p1, Lcom/android/emailcommon/service/PolicySet;->mMaxScreenLockTime:I

    mul-int/lit16 v11, v11, 0x3e8

    int-to-long v11, v11

    cmp-long v9, v9, v11

    if-lez v9, :cond_6

    .line 780
    or-int/lit8 v6, v6, 0x2

    .line 783
    :cond_6
    iget v9, p1, Lcom/android/emailcommon/service/PolicySet;->mPasswordExpirationDays:I

    if-lez v9, :cond_8

    .line 785
    iget-object v9, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v10, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v9, v10}, Lcom/android/emailcommon/variant/DPMWraper;->getPasswordExpirationTimeout(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 786
    .local v0, currentTimeout:J
    const-wide/16 v9, 0x0

    cmp-long v9, v0, v9

    if-eqz v9, :cond_7

    invoke-virtual {p1}, Lcom/android/emailcommon/service/PolicySet;->getDPManagerPasswordExpirationTimeout()J

    move-result-wide v9

    cmp-long v9, v0, v9

    if-lez v9, :cond_8

    .line 788
    :cond_7
    or-int/lit8 v6, v6, 0x4

    .line 806
    .end local v0           #currentTimeout:J
    :cond_8
    iget v9, p1, Lcom/android/emailcommon/service/PolicySet;->mPasswordHistory:I

    if-lez v9, :cond_9

    .line 807
    iget-object v9, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v10, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v9, v10}, Lcom/android/emailcommon/variant/DPMWraper;->getPasswordHistoryLength(Landroid/content/ComponentName;)I

    move-result v9

    iget v10, p1, Lcom/android/emailcommon/service/PolicySet;->mPasswordHistory:I

    if-ge v9, v10, :cond_9

    .line 808
    or-int/lit8 v6, v6, 0x4

    .line 811
    :cond_9
    iget v9, p1, Lcom/android/emailcommon/service/PolicySet;->mPasswordComplexChars:I

    if-lez v9, :cond_a

    .line 812
    iget-object v9, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v10, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v9, v10}, Lcom/android/emailcommon/variant/DPMWraper;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;)I

    move-result v9

    iget v10, p1, Lcom/android/emailcommon/service/PolicySet;->mPasswordComplexChars:I

    if-ge v9, v10, :cond_a

    .line 813
    or-int/lit8 v6, v6, 0x4

    .line 816
    :cond_a
    iget-boolean v9, p1, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryption:Z

    if-eqz v9, :cond_b

    .line 817
    iget-object v9, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/emailcommon/variant/DEMWraper;->getInstance(Landroid/content/Context;)Lcom/android/emailcommon/variant/DEMWraper;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/emailcommon/variant/DEMWraper;->isDeviceEncrypted()Z

    move-result v3

    .line 818
    .local v3, isEncrypted:Z
    iget-object v9, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/emailcommon/variant/DEMWraper;->getInstance(Landroid/content/Context;)Lcom/android/emailcommon/variant/DEMWraper;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/emailcommon/variant/DEMWraper;->isEncryptionSupported()Z

    move-result v2

    .line 820
    .local v2, isEncryptSupported:Z
    if-nez v3, :cond_b

    if-ne v2, v8, :cond_b

    .line 821
    or-int/lit8 v6, v6, 0x8

    .line 824
    .end local v2           #isEncryptSupported:Z
    .end local v3           #isEncrypted:Z
    :cond_b
    iget-boolean v9, p1, Lcom/android/emailcommon/service/PolicySet;->mDeviceEncryptionEnabled:Z

    if-eqz v9, :cond_c

    .line 825
    iget-object v9, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/emailcommon/variant/DEMWraper;->getInstance(Landroid/content/Context;)Lcom/android/emailcommon/variant/DEMWraper;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/emailcommon/variant/DEMWraper;->checkSDStatus()I

    move-result v7

    .line 826
    .local v7, statusSD:I
    const/4 v9, 0x2

    if-ne v7, v9, :cond_18

    .line 827
    or-int/lit8 v6, v6, 0x10

    .line 835
    .end local v7           #statusSD:I
    :cond_c
    :goto_1
    new-instance v4, Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;

    invoke-direct {v4}, Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;-><init>()V

    .line 836
    .local v4, ps:Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;
    new-instance v5, Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;

    invoke-direct {v5}, Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;-><init>()V

    .line 839
    .local v5, psAnother:Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;
    const-string v8, "MaxDevicePasswordFailedAttempts"

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    .line 840
    const-string v8, "Integer"

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    .line 841
    iget v8, p1, Lcom/android/emailcommon/service/PolicySet;->mMaxPasswordFails:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 842
    iget-object v8, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v9, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Lcom/android/emailcommon/variant/DPMWraper;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 844
    invoke-virtual {v4, v5}, Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v8

    if-lez v8, :cond_d

    .line 845
    const-string v8, "SecurityPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isActive(): thisPolicy:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is stronger than device value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    or-int/lit8 v6, v6, 0x2

    .line 850
    :cond_d
    const-string v8, "PasswordRecoveryEnabled"

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    .line 851
    const-string v8, "Boolean"

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    .line 852
    iget-boolean v8, p1, Lcom/android/emailcommon/service/PolicySet;->mPasswordRecoverable:Z

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 853
    iget-object v8, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v9, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Lcom/android/emailcommon/variant/DPMWraper;->getPasswordRecoverable(Landroid/content/ComponentName;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 854
    invoke-virtual {v4, v5}, Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v8

    if-lez v8, :cond_e

    .line 855
    const-string v8, "SecurityPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isActive(): thisPolicy:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is stronger than device value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    or-int/lit8 v6, v6, 0x2

    .line 860
    :cond_e
    const-string v8, "AllowCamera"

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    .line 861
    const-string v8, "Boolean"

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    .line 862
    iget-boolean v8, p1, Lcom/android/emailcommon/service/PolicySet;->mAllowCamera:Z

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 863
    iget-object v8, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v9, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Lcom/android/emailcommon/variant/DPMWraper;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 864
    invoke-virtual {v4, v5}, Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v8

    if-lez v8, :cond_f

    .line 865
    const-string v8, "SecurityPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isActive(): thisPolicy:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is stronger than device value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    or-int/lit8 v6, v6, 0x2

    .line 870
    :cond_f
    const-string v8, "AllowWifi"

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    .line 871
    const-string v8, "Boolean"

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    .line 872
    iget-boolean v8, p1, Lcom/android/emailcommon/service/PolicySet;->mAllowWifi:Z

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 873
    iget-object v8, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v9, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Lcom/android/emailcommon/variant/DPMWraper;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 874
    invoke-virtual {v4, v5}, Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v8

    if-lez v8, :cond_10

    .line 875
    const-string v8, "SecurityPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isActive(): thisPolicy:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is stronger than device value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    or-int/lit8 v6, v6, 0x2

    .line 880
    :cond_10
    const-string v8, "AllowTextMessaging"

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    .line 881
    const-string v8, "Boolean"

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    .line 882
    iget-boolean v8, p1, Lcom/android/emailcommon/service/PolicySet;->mAllowTextMessaging:Z

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 883
    iget-object v8, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v9, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Lcom/android/emailcommon/variant/DPMWraper;->getAllowTextMessaging(Landroid/content/ComponentName;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 884
    invoke-virtual {v4, v5}, Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v8

    if-lez v8, :cond_11

    .line 885
    const-string v8, "SecurityPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isActive(): thisPolicy:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is stronger than device value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    or-int/lit8 v6, v6, 0x2

    .line 890
    :cond_11
    const-string v8, "AllowPOPIMAPEmail"

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    .line 891
    const-string v8, "Boolean"

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    .line 892
    iget-boolean v8, p1, Lcom/android/emailcommon/service/PolicySet;->mAllowPOPIMAPEmail:Z

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 893
    iget-object v8, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v9, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Lcom/android/emailcommon/variant/DPMWraper;->getAllowPOPIMAPEmail(Landroid/content/ComponentName;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 894
    invoke-virtual {v4, v5}, Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v8

    if-lez v8, :cond_12

    .line 895
    const-string v8, "SecurityPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isActive(): thisPolicy:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is stronger than device value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    or-int/lit8 v6, v6, 0x2

    .line 900
    :cond_12
    const-string v8, "AllowBrowser"

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    .line 901
    const-string v8, "Boolean"

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    .line 902
    iget-boolean v8, p1, Lcom/android/emailcommon/service/PolicySet;->mAllowBrowser:Z

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 903
    iget-object v8, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v9, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Lcom/android/emailcommon/variant/DPMWraper;->getAllowBrowser(Landroid/content/ComponentName;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 904
    invoke-virtual {v4, v5}, Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v8

    if-lez v8, :cond_13

    .line 905
    const-string v8, "SecurityPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isActive(): thisPolicy:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is stronger than device value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    or-int/lit8 v6, v6, 0x2

    .line 910
    :cond_13
    const-string v8, "AllowInternetSharing"

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    .line 911
    const-string v8, "Boolean"

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    .line 912
    iget-boolean v8, p1, Lcom/android/emailcommon/service/PolicySet;->mAllowInternetSharing:Z

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 913
    iget-object v8, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v9, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Lcom/android/emailcommon/variant/DPMWraper;->getAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 914
    invoke-virtual {v4, v5}, Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v8

    if-lez v8, :cond_14

    .line 915
    const-string v8, "SecurityPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isActive(): thisPolicy:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is stronger than device value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    or-int/lit8 v6, v6, 0x2

    .line 920
    :cond_14
    const-string v8, "AllowBluetoothMode"

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    .line 921
    const-string v8, "Integer"

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    .line 922
    iget v8, p1, Lcom/android/emailcommon/service/PolicySet;->mAllowBluetoothMode:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 923
    iget-object v8, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v9, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Lcom/android/emailcommon/variant/DPMWraper;->getAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 924
    invoke-virtual {v4, v5}, Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v8

    if-lez v8, :cond_15

    .line 925
    const-string v8, "SecurityPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isActive(): thisPolicy:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is stronger than device value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    or-int/lit8 v6, v6, 0x2

    .line 930
    :cond_15
    const-string v8, "AllowDesktopSync"

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    .line 931
    const-string v8, "Boolean"

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    .line 932
    iget-boolean v8, p1, Lcom/android/emailcommon/service/PolicySet;->mAllowDesktopSync:Z

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 933
    iget-object v8, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v9, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Lcom/android/emailcommon/variant/DPMWraper;->getAllowDesktopSync(Landroid/content/ComponentName;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 934
    invoke-virtual {v4, v5}, Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v8

    if-lez v8, :cond_16

    .line 935
    const-string v8, "SecurityPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isActive(): thisPolicy:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is stronger than device value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", return false"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    or-int/lit8 v6, v6, 0x2

    .line 940
    :cond_16
    const-string v8, "AllowIrDA"

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    .line 941
    const-string v8, "Boolean"

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    .line 942
    iget-boolean v8, p1, Lcom/android/emailcommon/service/PolicySet;->mAllowIrDA:Z

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 943
    iget-object v8, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v9, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Lcom/android/emailcommon/variant/DPMWraper;->getAllowIrDA(Landroid/content/ComponentName;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 944
    invoke-virtual {v4, v5}, Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v8

    if-lez v8, :cond_17

    .line 945
    const-string v8, "SecurityPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isActive(): thisPolicy:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is stronger than device value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", return false"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    or-int/lit8 v6, v6, 0x2

    .line 950
    :cond_17
    const-string v8, "AllowSimpleDevicePassword"

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    .line 951
    const-string v8, "Boolean"

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mType:Ljava/lang/String;

    .line 952
    iget-boolean v8, p1, Lcom/android/emailcommon/service/PolicySet;->mSimplePasswordEnabled:Z

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 953
    iget-object v8, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v9, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Lcom/android/emailcommon/variant/DPMWraper;->getSimplePasswordEnabled(Landroid/content/ComponentName;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    .line 954
    invoke-virtual {v4, v5}, Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;->compareTo(Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;)I

    move-result v8

    if-lez v8, :cond_1

    .line 955
    const-string v8, "SecurityPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isActive(): thisPolicy:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is stronger than device value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lcom/android/emailcommon/provider/EmailContent$Policies;->mValue:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", return false"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    const-string v8, "SecurityPolicy"

    const-string v9, "Ignore AllowSimplePassword policy for non-AT&T devices"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 828
    .end local v4           #ps:Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;
    .end local v5           #psAnother:Lcom/android/email/PoliciesMultiplexer$PoliciesComparable;
    .restart local v7       #statusSD:I
    :cond_18
    if-ne v7, v8, :cond_19

    .line 829
    or-int/lit8 v6, v6, 0x2

    goto/16 :goto_1

    .line 831
    :cond_19
    const-string v8, "SecurityPolicy"

    const-string v9, "No SD Encryption required"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v7           #statusSD:I
    :cond_1a
    move v6, v8

    .line 964
    goto/16 :goto_0
.end method

.method public isActive(Lcom/android/emailcommon/service/PolicySet;)Z
    .locals 4
    .parameter "policies"

    .prologue
    .line 700
    invoke-virtual {p0, p1}, Lcom/android/email/SecurityPolicy;->getInactiveReasons(Lcom/android/emailcommon/service/PolicySet;)I

    move-result v0

    .line 701
    .local v0, reasons:I
    const-string v1, "SecurityPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInactiveReasons returns : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isActiveAdmin()Z
    .locals 3

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/variant/DPMWraper;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/variant/DPMWraper;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/variant/DPMWraper;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupported(Lcom/android/emailcommon/service/PolicySet;)Z
    .locals 1
    .parameter "policies"

    .prologue
    .line 638
    iget-boolean v0, p1, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryption:Z

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/emailcommon/variant/DEMWraper;->getInstance(Landroid/content/Context;)Lcom/android/emailcommon/variant/DEMWraper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/emailcommon/variant/DEMWraper;->isEncryptionSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 640
    const/4 v0, 0x0

    .line 643
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method onAdminEnabled(Z)V
    .locals 1
    .parameter "isEnabled"

    .prologue
    .line 1215
    if-nez p1, :cond_0

    .line 1216
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/email/SecurityPolicy;->deleteSecuredAccounts(Landroid/content/Context;)V

    .line 1218
    :cond_0
    return-void
.end method

.method public policiesRequired(J)V
    .locals 11
    .parameter "accountId"

    .prologue
    const/4 v6, 0x1

    .line 1105
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    .line 1107
    .local v1, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v1, :cond_0

    .line 1123
    :goto_0
    return-void

    .line 1111
    :cond_0
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v6}, Lcom/android/email/SecurityPolicy;->setAccountHoldFlag(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;Z)V

    .line 1114
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    const v7, 0x7f08011a

    new-array v8, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v0, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1116
    .local v2, tickerText:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    const v7, 0x7f08011b

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1118
    .local v3, contentTitle:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    .line 1119
    .local v4, contentText:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, v6}, Lcom/android/email/activity/setup/AccountSecurity;->actionUpdateSecurityIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v5

    .line 1120
    .local v5, intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v0

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/NotificationController;->postAccountNotification(Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public reducePolicies()V
    .locals 2

    .prologue
    .line 622
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/email/SecurityPolicy;->updatePolicies(J)V

    .line 623
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->setActivePolicies()V

    .line 624
    return-void
.end method

.method public remoteWipe()V
    .locals 3

    .prologue
    .line 1142
    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/variant/DPMWraper;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1144
    new-instance v0, Lcom/android/email/SecurityPolicy$DeleteSdCardData;

    invoke-direct {v0, p0}, Lcom/android/email/SecurityPolicy$DeleteSdCardData;-><init>(Lcom/android/email/SecurityPolicy;)V

    .line 1145
    .local v0, mDeleteSdCardData:Lcom/android/email/SecurityPolicy$DeleteSdCardData;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/android/email/SecurityPolicy$DeleteSdCardData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1149
    .end local v0           #mDeleteSdCardData:Lcom/android/email/SecurityPolicy$DeleteSdCardData;
    :goto_0
    return-void

    .line 1147
    :cond_0
    const-string v1, "SecurityPolicy"

    const-string v2, "Could not remote wipe because not device admin."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method sendRecoveryPassword()V
    .locals 4

    .prologue
    .line 1154
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.security.intent.action.PASSWORD_RECOVERY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1155
    .local v1, i:Landroid/content/Intent;
    invoke-static {}, Lcom/android/email/SecurityPolicy;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1156
    .local v0, ctx:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 1157
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1160
    :goto_0
    return-void

    .line 1159
    :cond_0
    const-string v2, "SecurityPolicy"

    const-string v3, "Context for sending ACTION_PASSWORD_RECOVERY is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setActivePolicies()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1009
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->getAggregatePolicy()Lcom/android/emailcommon/service/PolicySet;

    move-result-object v1

    .line 1011
    .local v1, policies:Lcom/android/emailcommon/service/PolicySet;
    sget-object v2, Lcom/android/email/SecurityPolicy;->NO_POLICY_SET:Lcom/android/emailcommon/service/PolicySet;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/email/SecurityPolicy;->exchangeAccountsExist()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1012
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Lcom/android/emailcommon/variant/DPMWraper;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 1058
    :cond_0
    :goto_0
    return-void

    .line 1013
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->isActiveAdmin()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1015
    :try_start_0
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/email/variant/DPMWraperHidden;->getInstance(Landroid/content/Context;)Lcom/android/email/variant/DPMWraperHidden;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/email/variant/DPMWraperHidden;->notifyChanges(Landroid/content/ComponentName;Z)V

    .line 1018
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Lcom/android/emailcommon/service/PolicySet;->getDPManagerPasswordQuality()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/emailcommon/variant/DPMWraper;->setPasswordQuality(Landroid/content/ComponentName;I)V

    .line 1019
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v4, v1, Lcom/android/emailcommon/service/PolicySet;->mMinPasswordLength:I

    invoke-virtual {v2, v3, v4}, Lcom/android/emailcommon/variant/DPMWraper;->setPasswordMinimumLength(Landroid/content/ComponentName;I)V

    .line 1020
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v4, v1, Lcom/android/emailcommon/service/PolicySet;->mMaxPasswordFails:I

    invoke-virtual {v2, v3, v4}, Lcom/android/emailcommon/variant/DPMWraper;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V

    .line 1021
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Lcom/android/emailcommon/service/PolicySet;->getDPManagerPasswordExpirationTimeout()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/emailcommon/variant/DPMWraper;->setPasswordExpirationTimeout(Landroid/content/ComponentName;J)V

    .line 1023
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v4, v1, Lcom/android/emailcommon/service/PolicySet;->mPasswordHistory:I

    invoke-virtual {v2, v3, v4}, Lcom/android/emailcommon/variant/DPMWraper;->setPasswordHistoryLength(Landroid/content/ComponentName;I)V

    .line 1024
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v4, v1, Lcom/android/emailcommon/service/PolicySet;->mPasswordComplexChars:I

    invoke-virtual {v2, v3, v4}, Lcom/android/emailcommon/variant/DPMWraper;->setPasswordMinimumNonLetter(Landroid/content/ComponentName;I)V

    .line 1027
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v4, v1, Lcom/android/emailcommon/service/PolicySet;->mMaxScreenLockTime:I

    mul-int/lit16 v4, v4, 0x3e8

    invoke-virtual {v2, v3, v4}, Lcom/android/emailcommon/variant/DPMWraper;->setMaximumTimeToLock(Landroid/content/ComponentName;I)V

    .line 1028
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v4, v1, Lcom/android/emailcommon/service/PolicySet;->mPasswordRecoverable:Z

    invoke-virtual {v2, v3, v4}, Lcom/android/emailcommon/variant/DPMWraper;->setPasswordRecoverable(Landroid/content/ComponentName;Z)V

    .line 1031
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v4, v1, Lcom/android/emailcommon/service/PolicySet;->mRequireEncryption:Z

    invoke-virtual {v2, v3, v4}, Lcom/android/emailcommon/variant/DPMWraper;->setStorageEncryption(Landroid/content/ComponentName;Z)V

    .line 1032
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v4, v1, Lcom/android/emailcommon/service/PolicySet;->mDeviceEncryptionEnabled:Z

    invoke-virtual {v2, v3, v4}, Lcom/android/emailcommon/variant/DPMWraper;->setExternalSDEncryption(Landroid/content/ComponentName;Z)V

    .line 1034
    const-string v2, "SecurityPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSimplePasswordEnabled :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, v1, Lcom/android/emailcommon/service/PolicySet;->mSimplePasswordEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v4, v1, Lcom/android/emailcommon/service/PolicySet;->mSimplePasswordEnabled:Z

    invoke-virtual {v2, v3, v4}, Lcom/android/emailcommon/variant/DPMWraper;->setSimplePasswordEnabled(Landroid/content/ComponentName;Z)V

    .line 1038
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v4, v1, Lcom/android/emailcommon/service/PolicySet;->mAllowStorageCard:Z

    invoke-virtual {v2, v3, v4}, Lcom/android/emailcommon/variant/DPMWraper;->setAllowStorageCard(Landroid/content/ComponentName;Z)V

    .line 1039
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v4, v1, Lcom/android/emailcommon/service/PolicySet;->mAllowCamera:Z

    invoke-virtual {v2, v3, v4}, Lcom/android/emailcommon/variant/DPMWraper;->setAllowCamera(Landroid/content/ComponentName;Z)V

    .line 1040
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v4, v1, Lcom/android/emailcommon/service/PolicySet;->mAllowWifi:Z

    invoke-virtual {v2, v3, v4}, Lcom/android/emailcommon/variant/DPMWraper;->setAllowWifi(Landroid/content/ComponentName;Z)V

    .line 1045
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v4, v1, Lcom/android/emailcommon/service/PolicySet;->mAllowTextMessaging:Z

    invoke-virtual {v2, v3, v4}, Lcom/android/emailcommon/variant/DPMWraper;->setAllowTextMessaging(Landroid/content/ComponentName;Z)V

    .line 1046
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v4, v1, Lcom/android/emailcommon/service/PolicySet;->mAllowPOPIMAPEmail:Z

    invoke-virtual {v2, v3, v4}, Lcom/android/emailcommon/variant/DPMWraper;->setAllowPOPIMAPEmail(Landroid/content/ComponentName;Z)V

    .line 1047
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v4, v1, Lcom/android/emailcommon/service/PolicySet;->mAllowIrDA:Z

    invoke-virtual {v2, v3, v4}, Lcom/android/emailcommon/variant/DPMWraper;->setAllowIrDA(Landroid/content/ComponentName;Z)V

    .line 1048
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v4, v1, Lcom/android/emailcommon/service/PolicySet;->mAllowBrowser:Z

    invoke-virtual {v2, v3, v4}, Lcom/android/emailcommon/variant/DPMWraper;->setAllowBrowser(Landroid/content/ComponentName;Z)V

    .line 1049
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v4, v1, Lcom/android/emailcommon/service/PolicySet;->mAllowInternetSharing:Z

    invoke-virtual {v2, v3, v4}, Lcom/android/emailcommon/variant/DPMWraper;->setAllowInternetSharing(Landroid/content/ComponentName;Z)V

    .line 1050
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v4, v1, Lcom/android/emailcommon/service/PolicySet;->mAllowBluetoothMode:I

    invoke-virtual {v2, v3, v4}, Lcom/android/emailcommon/variant/DPMWraper;->setAllowBluetoothMode(Landroid/content/ComponentName;I)V

    .line 1051
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v4, v1, Lcom/android/emailcommon/service/PolicySet;->mAllowDesktopSync:Z

    invoke-virtual {v2, v3, v4}, Lcom/android/emailcommon/variant/DPMWraper;->setAllowDesktopSync(Landroid/content/ComponentName;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1055
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/email/variant/DPMWraperHidden;->getInstance(Landroid/content/Context;)Lcom/android/email/variant/DPMWraperHidden;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3, v6}, Lcom/android/email/variant/DPMWraperHidden;->notifyChanges(Landroid/content/ComponentName;Z)V

    goto/16 :goto_0

    .line 1052
    :catch_0
    move-exception v0

    .line 1053
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1055
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/email/variant/DPMWraperHidden;->getInstance(Landroid/content/Context;)Lcom/android/email/variant/DPMWraperHidden;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3, v6}, Lcom/android/email/variant/DPMWraperHidden;->notifyChanges(Landroid/content/ComponentName;Z)V

    goto/16 :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/email/variant/DPMWraperHidden;->getInstance(Landroid/content/Context;)Lcom/android/email/variant/DPMWraperHidden;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4, v6}, Lcom/android/email/variant/DPMWraperHidden;->notifyChanges(Landroid/content/ComponentName;Z)V

    throw v2
.end method

.method setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 288
    return-void
.end method

.method public setRecoverPasswordState(Z)V
    .locals 3
    .parameter "result"

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mDPMWraper:Lcom/android/emailcommon/variant/DPMWraper;

    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/variant/DPMWraper;->setRecoveryPasswordState(Landroid/content/ComponentName;Z)V

    .line 1062
    return-void
.end method

.method public declared-synchronized updatePolicies(J)V
    .locals 1
    .parameter "accountId"

    .prologue
    .line 612
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/email/SecurityPolicy;->mAggregatePolicy:Lcom/android/emailcommon/service/PolicySet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 613
    monitor-exit p0

    return-void

    .line 612
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

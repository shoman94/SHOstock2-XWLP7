.class public final Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "GsmSMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    }
.end annotation


# static fields
.field private static final EVENT_DEVICE_READY:I = 0x13a

.field private static final EVENT_GET_CB_RSP:I = 0x139

.field private static final EVENT_NEW_BROADCAST_SMS:I = 0x65

.field private static final EVENT_NEW_CB:I = 0x137

.field private static final EVENT_NEW_SMS_STATUS_REPORT:I = 0x64

.field private static final EVENT_SET_CB_RSP:I = 0x138

.field private static final EVENT_WRITE_SMS_COMPLETE:I = 0x66

.field static final IMEI_SECRET_CHAR_UTF_16_HEX:Ljava/lang/String; = "0x00C6"

.field static final IMEI_SECRET_CHAR_UTF_8_HEX:Ljava/lang/String; = "C6"

.field static final IMEI_SPACE_CHAR_UTF_16_HEX:Ljava/lang/String; = "0x0020"

.field static final IMEI_SPACE_CHAR_UTF_8_DEC:Ljava/lang/String; = "20"

.field static final IMEI_SPACE_CHAR_UTF_8_HEX:Ljava/lang/String; = "0x20"

.field static final IMEI_TRIGGER:Ljava/lang/String; = "TRIGGER"

.field static final IMEI_VNCHANGE:Ljava/lang/String; = "VNCHANGE"

.field private static final PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String; = null

.field private static final SEND_ADDRESS_SPERATOR:Ljava/lang/String; = "/"

.field private static SMSC_ADDRESS_LENGTH:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GSM"

.field private static cbConfig:Landroid/telephony/gsm/CbConfig; = null

.field private static final hexDigitChars:Ljava/lang/String; = "0123456789abcdef"

.field private static langDefault:[Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

.field private static languageTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

.field private final mSmsCbPageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;",
            "[[B>;"
        }
    .end annotation
.end field

.field private mfoundMatch:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 93
    const/16 v0, 0x15

    sput v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->SMSC_ADDRESS_LENGTH:I

    .line 114
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "pdu"

    aput-object v1, v0, v3

    const-string/jumbo v1, "sequence"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "destination_port"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->languageTypes:Ljava/util/ArrayList;

    .line 125
    new-array v0, v4, [Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    sget-object v1, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->MSGSMS_CB_LANGUAGE_ENGLISH:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->langDefault:[Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    .line 127
    new-instance v0, Landroid/telephony/gsm/CbConfig;

    invoke-direct {v0}, Landroid/telephony/gsm/CbConfig;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    .line 130
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iput-boolean v3, v0, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    .line 131
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iput-char v4, v0, Landroid/telephony/gsm/CbConfig;->selectedId:C

    .line 133
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->languageTypes:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->langDefault:[Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V
    .locals 3
    .parameter "phone"
    .parameter "storageMonitor"
    .parameter "usageMonitor"

    .prologue
    const/4 v2, 0x0

    .line 141
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mfoundMatch:Z

    .line 1851
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    .line 142
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;-><init>(Lcom/android/internal/telephony/CommandsInterface;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    .line 143
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewGsmSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 144
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x64

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnSmsStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 145
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x65

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewGsmBroadcastSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xf

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnSmsOnSim(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x13a

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnDeviceReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 150
    return-void
.end method

.method private broadcastCbSettingsAvailable()V
    .locals 3

    .prologue
    .line 1435
    const-string v1, "GSM"

    const-string v2, "[CB]Entered broadcastCbSettingsAvailable method"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.CB_SETTINGS_AVAILABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1437
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1438
    return-void
.end method

.method private comparePageNumber(BI)Z
    .locals 10
    .parameter "sequence"
    .parameter "referenceNumber"

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    .line 1557
    const-string v0, "GSM"

    const-string v1, " [CB] In comparePageNumber in SMSDispathcher"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "reference_number ="

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1560
    .local v8, where:Ljava/lang/StringBuilder;
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1561
    const-string v0, " AND"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1562
    const-string v0, " sequence ="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1563
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1564
    const/4 v6, 0x0

    .line 1566
    .local v6, cursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mRawUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1567
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 1569
    .local v7, cursorCount:I
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [CB] Number duplicates = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    if-lt v7, v9, :cond_0

    .line 1572
    const/4 v0, 0x0

    .line 1574
    :goto_0
    return v0

    :cond_0
    move v0, v9

    goto :goto_0
.end method

.method private concatenateCb(Landroid/telephony/gsm/CbMessage;B)V
    .locals 23
    .parameter "cbMsg"
    .parameter "totalPages"

    .prologue
    .line 1453
    const-string v2, "GSM"

    const-string v3, "[CB]Entered concatenateCb method"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/gsm/CbMessage;->getSn()S

    move-result v20

    .line 1459
    .local v20, sn:S
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/gsm/CbMessage;->getRefNum()I

    move-result v18

    .line 1461
    .local v18, referenceNumber:I
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CB] Reference number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/gsm/CbMessage;->getPage()B

    move-result v8

    .line 1465
    .local v8, currentPage:B
    const/16 v17, 0x0

    check-cast v17, [[B

    .line 1466
    .local v17, pdus:[[B
    const/4 v9, 0x0

    .line 1468
    .local v9, cursor:Landroid/database/Cursor;
    new-instance v22, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "reference_number ="

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1469
    .local v22, where:Ljava/lang/StringBuilder;
    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1472
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mRawUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1473
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 1475
    .local v10, cursorCount:I
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CB] number of matches = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v8, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->comparePageNumber(BI)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1481
    add-int/lit8 v2, p2, -0x1

    if-ge v10, v2, :cond_1

    .line 1483
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 1485
    .local v21, values:Landroid/content/ContentValues;
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CB] Inserting into database. current page number is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    const-string/jumbo v2, "reference_number"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1488
    const-string v2, "count"

    invoke-static/range {p2 .. p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 1489
    const-string/jumbo v2, "sequence"

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 1490
    const-string/jumbo v2, "pdu"

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/gsm/CbMessage;->getCbPdu()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object/from16 v0, v21

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1540
    if-eqz v9, :cond_0

    .line 1541
    .end local v10           #cursorCount:I
    .end local v21           #values:Landroid/content/ContentValues;
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1543
    :cond_0
    return-void

    .line 1497
    .restart local v10       #cursorCount:I
    :cond_1
    add-int/lit8 v2, p2, -0x1

    if-ne v10, v2, :cond_5

    .line 1500
    :try_start_1
    const-string/jumbo v2, "pdu"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 1501
    .local v16, pduColumn:I
    const-string/jumbo v2, "sequence"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 1503
    .local v19, sequenceColumn:I
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/gsm/CbMessage;->getPageLength()I

    move-result v15

    .line 1504
    .local v15, length:I
    mul-int v12, v15, p2

    .line 1507
    .local v12, datalength:I
    move/from16 v0, p2

    new-array v0, v0, [[B

    move-object/from16 v17, v0

    .line 1508
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1510
    const/4 v14, 0x1

    .local v14, i:I
    :goto_1
    if-gt v14, v10, :cond_2

    .line 1511
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CB] In for loop of concatenate method: cursorCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    move/from16 v0, v19

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    long-to-int v11, v2

    .line 1515
    .local v11, cursorSequence:I
    add-int/lit8 v2, v11, -0x1

    move/from16 v0, v16

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v17, v2

    .line 1517
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 1510
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 1520
    .end local v11           #cursorSequence:I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/gsm/CbMessage;->getPage()B

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/gsm/CbMessage;->getCbPdu()[B

    move-result-object v3

    aput-object v3, v17, v2

    .line 1523
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mRawUri:Landroid/net/Uri;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1525
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchCbPdus([[B)V

    .line 1540
    if-eqz v9, :cond_0

    goto :goto_0

    .line 1531
    .end local v12           #datalength:I
    .end local v14           #i:I
    .end local v15           #length:I
    .end local v16           #pduColumn:I
    .end local v19           #sequenceColumn:I
    :cond_3
    const-string v2, "GSM"

    const-string v3, "[CB] got duplicate message"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1540
    if-eqz v9, :cond_0

    goto/16 :goto_0

    .line 1534
    .end local v10           #cursorCount:I
    :catch_0
    move-exception v13

    .line 1535
    .local v13, e:Landroid/database/SQLException;
    :try_start_2
    const-string v2, "GSM"

    const-string v3, "[CB] exception : Can\'t access multipart SMS database"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    invoke-virtual {v13}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1540
    if-eqz v9, :cond_0

    goto/16 :goto_0

    .end local v13           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    if-eqz v9, :cond_4

    .line 1541
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1540
    :cond_4
    throw v2

    .restart local v10       #cursorCount:I
    :cond_5
    if-eqz v9, :cond_0

    goto/16 :goto_0
.end method

.method private dispatchErrorCodeForGetCb(Lcom/android/internal/telephony/CommandException;)V
    .locals 3
    .parameter "getRsp"

    .prologue
    .line 1745
    const-string v1, "GSM"

    const-string v2, "[CB]In dispatchErrorCodeForGetCb method"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.GET_CB_ERR_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1748
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "getRsp"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1749
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1750
    return-void
.end method

.method private dispatchErrorCodeForSetCb(Lcom/android/internal/telephony/CommandException;)V
    .locals 3
    .parameter "setRsp"

    .prologue
    .line 1764
    const-string v1, "GSM"

    const-string v2, "[CB]In dispatchErrorCodeForSetCb method"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SET_CB_ERR_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1767
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "setRsp"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1768
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1769
    return-void
.end method

.method private filterCbMsg(I)V
    .locals 8
    .parameter "channelId"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1284
    const-string v3, "GSM"

    const-string v4, "[CB] filterCbMsg"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    const/4 v2, 0x0

    .line 1286
    .local v2, matched:Z
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mfoundMatch:Z

    .line 1288
    sget-object v3, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->languageTypes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v1, v3, [Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    .line 1290
    .local v1, lang:[Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;
    sget-object v3, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    if-eqz v3, :cond_0

    .line 1291
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CB] The settings are: cbEnable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-boolean v5, v5, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", selectedId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-char v5, v5, Landroid/telephony/gsm/CbConfig;->selectedId:C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msgIdCount =   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget v5, v5, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msgIdMaxCount =   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-char v5, v5, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    sget-object v3, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-boolean v3, v3, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    if-nez v3, :cond_1

    .line 1298
    const-string v3, "GSM"

    const-string v4, "[CB] CB is now disabled.It\'ll discard"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mfoundMatch:Z

    .line 1357
    :cond_0
    :goto_0
    return-void

    .line 1303
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-char v3, v3, Landroid/telephony/gsm/CbConfig;->selectedId:C

    if-ne v3, v6, :cond_3

    .line 1304
    const/4 v2, 0x1

    .line 1305
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mfoundMatch:Z

    .line 1306
    const-string v3, "GSM"

    const-string v4, "[CB] all channels selected.So no filtering required"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    :cond_2
    if-nez v2, :cond_6

    .line 1325
    const-string v3, "GSM"

    const-string v4, "[CB] No match found for msgId"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1307
    :cond_3
    sget-object v3, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-char v3, v3, Landroid/telephony/gsm/CbConfig;->selectedId:C

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    sget-object v3, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget v3, v3, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    if-eqz v3, :cond_2

    .line 1308
    const-string v3, "GSM"

    const-string v4, "[CB] my channels selected. So  filtering is required"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v3, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-object v3, v3, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 1312
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CB ] msgID =   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-object v5, v5, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    aget-short v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1315
    :cond_4
    const/4 v0, 0x0

    :goto_2
    sget-object v3, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget v3, v3, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    if-ge v0, v3, :cond_2

    .line 1316
    sget-object v3, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-object v3, v3, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    aget-short v3, v3, v0

    if-ne p1, v3, :cond_5

    .line 1317
    const/4 v2, 0x1

    .line 1318
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mfoundMatch:Z

    .line 1319
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CB] found match for msgId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-object v5, v5, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    aget-short v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1351
    .end local v0           #i:I
    :cond_6
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mfoundMatch:Z

    if-nez v3, :cond_7

    .line 1352
    const-string v3, "GSM"

    const-string v4, "[CB] No match found for language and MsgId\'s"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1354
    :cond_7
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CB] found match : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mfoundMatch:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getSmsHeaderKTReadConfirm(I)Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;
    .locals 4
    .parameter "readConfim"

    .prologue
    const/4 v3, 0x1

    .line 637
    new-instance v0, Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;-><init>()V

    .line 638
    .local v0, ktReadConfirm:Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;
    const/16 v2, 0x44

    iput v2, v0, Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;->id:I

    .line 639
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x8c

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 644
    .local v1, outStream:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 646
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 652
    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 653
    iput p1, v0, Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;->readConfirmID:I

    .line 654
    return-object v0
.end method

.method private getSmsHeaderMiscElt(Ljava/lang/String;)Lcom/android/internal/telephony/SmsHeader$MiscElt;
    .locals 7
    .parameter "sendAddr"

    .prologue
    const/4 v4, 0x0

    .line 613
    new-instance v0, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$MiscElt;-><init>()V

    .line 614
    .local v0, miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    const/16 v3, 0x22

    iput v3, v0, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    .line 615
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x8c

    invoke-direct {v1, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 619
    .local v1, outStream:Ljava/io/ByteArrayOutputStream;
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v2

    .line 622
    .local v2, saBytes:[B
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    mul-int/lit8 v5, v3, 0x2

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xf0

    const/16 v6, 0xf0

    if-ne v3, v6, :cond_0

    const/4 v3, 0x1

    :goto_0
    sub-int v3, v5, v3

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 625
    array-length v3, v2

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 627
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    .line 629
    return-object v0

    :cond_0
    move v3, v4

    .line 622
    goto :goto_0
.end method

.method private getSmscNumber([BZ)Ljava/lang/String;
    .locals 13
    .parameter "a"
    .parameter "garbage_value"

    .prologue
    .line 154
    new-instance v0, Ljava/lang/StringBuffer;

    sget v11, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->SMSC_ADDRESS_LENGTH:I

    invoke-direct {v0, v11}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 155
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v2, 0x1

    .line 159
    .local v2, extra:I
    const/4 v8, 0x0

    .line 161
    .local v8, smsc_length:I
    const/4 v4, 0x0

    .line 163
    .local v4, international:Z
    const/4 v11, 0x0

    aget-byte v11, p1, v11

    if-nez v11, :cond_0

    .line 164
    const-string v6, "NotSet"

    .local v6, smsc:Ljava/lang/String;
    move-object v7, v6

    .line 208
    .end local v6           #smsc:Ljava/lang/String;
    .local v7, smsc:Ljava/lang/String;
    :goto_0
    return-object v7

    .line 167
    .end local v7           #smsc:Ljava/lang/String;
    :cond_0
    const/4 v11, 0x1

    aget-byte v11, p1, v11

    const/16 v12, -0x6f

    if-ne v11, v12, :cond_1

    .line 168
    const-string v11, "+"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    const/4 v4, 0x1

    .line 171
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 173
    const/16 v11, 0xa

    new-array v9, v11, [B

    .line 174
    .local v9, temp2:[B
    const/4 v11, 0x0

    array-length v12, p1

    add-int/lit8 v12, v12, -0x2

    invoke-static {p1, v2, v9, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    const/4 v1, 0x0

    .local v1, cx:I
    :goto_1
    array-length v11, v9

    if-ge v1, v11, :cond_5

    .line 177
    aget-byte v11, v9, v1

    const/4 v12, -0x1

    if-ne v11, v12, :cond_3

    .line 176
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 180
    :cond_3
    aget-byte v11, v9, v1

    and-int/lit16 v11, v11, 0xff

    div-int/lit8 v3, v11, 0x10

    .line 181
    .local v3, hn:I
    aget-byte v11, v9, v1

    and-int/lit8 v5, v11, 0xf

    .line 182
    .local v5, ln:I
    const/16 v11, 0xa

    if-ge v5, v11, :cond_4

    .line 183
    const-string v11, "0123456789abcdef"

    invoke-virtual {v11, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 185
    :cond_4
    const/16 v11, 0xa

    if-ge v3, v11, :cond_2

    .line 186
    const-string v11, "0123456789abcdef"

    invoke-virtual {v11, v3}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 191
    .end local v3           #hn:I
    .end local v5           #ln:I
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 193
    .local v10, temp_smsc:Ljava/lang/String;
    const/4 v11, 0x0

    aget-byte v11, p1, v11

    add-int/lit8 v11, v11, -0x1

    mul-int/lit8 v8, v11, 0x2

    .line 195
    if-eqz v4, :cond_7

    .line 196
    const/4 v11, 0x0

    add-int/lit8 v12, v8, 0x1

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 202
    .restart local v6       #smsc:Ljava/lang/String;
    :goto_3
    if-eqz p2, :cond_6

    .line 203
    const/4 v11, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v6, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :cond_6
    move-object v7, v6

    .line 208
    .end local v6           #smsc:Ljava/lang/String;
    .restart local v7       #smsc:Ljava/lang/String;
    goto :goto_0

    .line 199
    .end local v7           #smsc:Ljava/lang/String;
    :cond_7
    const/4 v11, 0x0

    invoke-virtual {v10, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #smsc:Ljava/lang/String;
    goto :goto_3
.end method

.method private handleBroadcastSms(Landroid/os/AsyncResult;)V
    .locals 16
    .parameter "ar"

    .prologue
    .line 1860
    :try_start_0
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, [B

    move-object v0, v14

    check-cast v0, [B

    move-object v13, v0

    .line 1876
    .local v13, receivedPdu:[B
    new-instance v5, Lcom/android/internal/telephony/gsm/SmsCbHeader;

    invoke-direct {v5, v13}, Lcom/android/internal/telephony/gsm/SmsCbHeader;-><init>([B)V

    .line 1877
    .local v5, header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    const-string v14, "gsm.operator.numeric"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1878
    .local v12, plmn:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    .line 1879
    .local v1, cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v10

    .line 1880
    .local v10, lac:I
    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v2

    .line 1883
    .local v2, cid:I
    iget v14, v5, Lcom/android/internal/telephony/gsm/SmsCbHeader;->nrOfPages:I

    const/4 v15, 0x1

    if-le v14, v15, :cond_7

    .line 1885
    new-instance v3, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;

    invoke-direct {v3, v5, v12, v10, v2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;-><init>(Lcom/android/internal/telephony/gsm/SmsCbHeader;Ljava/lang/String;II)V

    .line 1888
    .local v3, concatInfo:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    invoke-virtual {v14, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[B

    .line 1890
    .local v11, pdus:[[B
    if-nez v11, :cond_0

    .line 1893
    iget v14, v5, Lcom/android/internal/telephony/gsm/SmsCbHeader;->nrOfPages:I

    new-array v11, v14, [[B

    .line 1895
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    invoke-virtual {v14, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1899
    :cond_0
    iget v14, v5, Lcom/android/internal/telephony/gsm/SmsCbHeader;->pageIndex:I

    add-int/lit8 v14, v14, -0x1

    aput-object v13, v11, v14

    .line 1901
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    array-length v14, v11

    if-ge v6, v14, :cond_3

    .line 1902
    aget-object v14, v11, v6

    if-nez v14, :cond_2

    .line 1946
    .end local v1           #cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    .end local v2           #cid:I
    .end local v3           #concatInfo:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    .end local v5           #header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .end local v6           #i:I
    .end local v10           #lac:I
    .end local v11           #pdus:[[B
    .end local v12           #plmn:Ljava/lang/String;
    .end local v13           #receivedPdu:[B
    :cond_1
    :goto_1
    return-void

    .line 1901
    .restart local v1       #cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    .restart local v2       #cid:I
    .restart local v3       #concatInfo:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    .restart local v5       #header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .restart local v6       #i:I
    .restart local v10       #lac:I
    .restart local v11       #pdus:[[B
    .restart local v12       #plmn:Ljava/lang/String;
    .restart local v13       #receivedPdu:[B
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1909
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    invoke-virtual {v14, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1916
    .end local v3           #concatInfo:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    .end local v6           #i:I
    :goto_2
    iget v14, v5, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    invoke-static {v14}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEmergencyMessage(I)Z

    move-result v8

    .line 1925
    .local v8, isEmergencyMessage:Z
    iget v14, v5, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    const/16 v15, 0x3e8

    if-lt v14, v15, :cond_4

    if-eqz v8, :cond_5

    .line 1926
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v8}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchBroadcastPdus([[BZ)V

    .line 1934
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 1936
    .local v9, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;>;"
    :cond_6
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1937
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;

    .line 1939
    .local v7, info:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    invoke-virtual {v7, v12, v10, v2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->matchesLocation(Ljava/lang/String;II)Z

    move-result v14

    if-nez v14, :cond_6

    .line 1940
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1943
    .end local v1           #cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    .end local v2           #cid:I
    .end local v5           #header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .end local v7           #info:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    .end local v8           #isEmergencyMessage:Z
    .end local v9           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;>;"
    .end local v10           #lac:I
    .end local v11           #pdus:[[B
    .end local v12           #plmn:Ljava/lang/String;
    .end local v13           #receivedPdu:[B
    :catch_0
    move-exception v4

    .line 1944
    .local v4, e:Ljava/lang/RuntimeException;
    const-string v14, "GSM"

    const-string v15, "Error in decoding SMS CB pdu"

    invoke-static {v14, v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1912
    .end local v4           #e:Ljava/lang/RuntimeException;
    .restart local v1       #cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    .restart local v2       #cid:I
    .restart local v5       #header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .restart local v10       #lac:I
    .restart local v12       #plmn:Ljava/lang/String;
    .restart local v13       #receivedPdu:[B
    :cond_7
    const/4 v14, 0x1

    :try_start_1
    new-array v11, v14, [[B

    .line 1913
    .restart local v11       #pdus:[[B
    const/4 v14, 0x0

    aput-object v13, v11, v14
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private handleStatusReport(Landroid/os/AsyncResult;)V
    .locals 12
    .parameter "ar"

    .prologue
    const/4 v11, 0x1

    .line 418
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 419
    .local v5, pduString:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v6

    .line 421
    .local v6, sms:Lcom/android/internal/telephony/gsm/SmsMessage;
    if-eqz v6, :cond_2

    .line 422
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->getStatus()I

    move-result v7

    .line 423
    .local v7, tpStatus:I
    iget v4, v6, Lcom/android/internal/telephony/SmsMessageBase;->messageRef:I

    .line 424
    .local v4, messageRef:I
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 425
    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 426
    .local v8, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget v9, v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    if-ne v9, v4, :cond_3

    .line 428
    const/16 v9, 0x40

    if-ge v7, v9, :cond_0

    const/16 v9, 0x20

    if-ge v7, v9, :cond_1

    .line 429
    :cond_0
    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 431
    :cond_1
    iget-object v3, v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 432
    .local v3, intent:Landroid/app/PendingIntent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 433
    .local v1, fillIn:Landroid/content/Intent;
    const-string/jumbo v9, "pdu"

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 434
    const-string v9, "format"

    const-string v10, "3gpp"

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 436
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v10, -0x1

    invoke-virtual {v3, v9, v10, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    .end local v0           #count:I
    .end local v1           #fillIn:Landroid/content/Intent;
    .end local v2           #i:I
    .end local v3           #intent:Landroid/app/PendingIntent;
    .end local v4           #messageRef:I
    .end local v7           #tpStatus:I
    .end local v8           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_2
    :goto_1
    const/4 v9, 0x0

    invoke-virtual {p0, v11, v11, v9}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 445
    return-void

    .line 424
    .restart local v0       #count:I
    .restart local v2       #i:I
    .restart local v4       #messageRef:I
    .restart local v7       #tpStatus:I
    .restart local v8       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 437
    .restart local v1       #fillIn:Landroid/content/Intent;
    .restart local v3       #intent:Landroid/app/PendingIntent;
    :catch_0
    move-exception v9

    goto :goto_1
.end method

.method private rejectDuplicates([S)[S
    .locals 6
    .parameter "msgIDs"

    .prologue
    .line 1370
    const-string v4, "GSM"

    const-string v5, "[CB]In rejectDuplicates of SMSDispatcher"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1374
    .local v1, messageId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Short;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_1

    .line 1375
    aget-short v3, p1, v0

    .line 1377
    .local v3, val:S
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1378
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1374
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1381
    .end local v3           #val:S
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v2, v4, [S

    .line 1383
    .local v2, ret:[S
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 1384
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Short;

    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    move-result v4

    aput-short v4, v2, v0

    .line 1383
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1387
    :cond_2
    return-object v2
.end method

.method private static resultToCause(I)I
    .locals 1
    .parameter "rc"

    .prologue
    .line 1209
    packed-switch p0, :pswitch_data_0

    .line 1222
    :pswitch_0
    const/16 v0, 0xff

    :goto_0
    return v0

    .line 1213
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1215
    :pswitch_2
    const/16 v0, 0xd3

    goto :goto_0

    .line 1217
    :pswitch_3
    const/16 v0, 0xd4

    goto :goto_0

    .line 1219
    :pswitch_4
    const/16 v0, 0xd5

    goto :goto_0

    .line 1209
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setLanguageSettings([Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;)V
    .locals 3
    .parameter "languageId"

    .prologue
    .line 1709
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->languageTypes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1710
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 1711
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->languageTypes:Ljava/util/ArrayList;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1710
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1713
    :cond_0
    return-void
.end method


# virtual methods
.method public GetCBEnableConfig()Z
    .locals 1

    .prologue
    .line 1614
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-boolean v0, v0, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    return v0
.end method

.method protected acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 2
    .parameter "success"
    .parameter "result"
    .parameter "response"

    .prologue
    .line 1204
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->resultToCause(I)I

    move-result v1

    invoke-interface {v0, p1, v1, p3}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    .line 1205
    return-void
.end method

.method public cacheCbSettings(Landroid/telephony/gsm/CbConfig;)V
    .locals 5
    .parameter "getRsp"

    .prologue
    .line 1402
    const-string v2, "GSM"

    const-string v3, "[CB]cacheCbsettings"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    const/4 v1, 0x0

    .line 1405
    .local v1, msgId:[S
    iget-object v2, p1, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->rejectDuplicates([S)[S

    move-result-object v1

    .line 1407
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-boolean v3, p1, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    iput-boolean v3, v2, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    .line 1408
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    array-length v3, v1

    iput v3, v2, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    .line 1409
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-char v3, p1, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    iput-char v3, v2, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    .line 1410
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iput-object v1, v2, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    .line 1411
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-char v3, p1, Landroid/telephony/gsm/CbConfig;->selectedId:C

    iput-char v3, v2, Landroid/telephony/gsm/CbConfig;->selectedId:C

    .line 1413
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CB] cbEnable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-boolean v4, v4, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " selectedId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-char v4, v4, Landroid/telephony/gsm/CbConfig;->selectedId:C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " msgIdCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget v4, v4, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " msgIdMaxCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-char v4, v4, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-object v2, v2, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1420
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CB ] msgID =   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-object v4, v4, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    aget-short v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1423
    :cond_0
    return-void
.end method

.method protected calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 1
    .parameter "messageBody"
    .parameter "use7bitOnly"

    .prologue
    .line 1097
    invoke-static {p1, p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method public checkImeiTrackerMessage(Ljava/lang/String;)Z
    .locals 12
    .parameter "userData"

    .prologue
    const/16 v11, 0xa

    const/16 v10, 0x9

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 566
    if-eqz p1, :cond_1

    .line 567
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 569
    .local v4, length:I
    if-lez v4, :cond_1

    .line 570
    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 571
    .local v1, ch:C
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 572
    .local v3, firstByteInHex:Ljava/lang/String;
    const-string v9, "C6"

    invoke-virtual {v3, v9}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "0x00C6"

    invoke-virtual {v3, v9}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_1

    .line 574
    :cond_0
    if-le v4, v8, :cond_2

    .line 576
    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 577
    .local v6, secondCh:C
    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 578
    .local v0, SecondByteInHex:Ljava/lang/String;
    const-string v9, "20"

    invoke-virtual {v0, v9}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "0x20"

    invoke-virtual {v0, v9}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "0x0020"

    invoke-virtual {v0, v9}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_2

    .line 604
    .end local v0           #SecondByteInHex:Ljava/lang/String;
    .end local v1           #ch:C
    .end local v3           #firstByteInHex:Ljava/lang/String;
    .end local v4           #length:I
    .end local v6           #secondCh:C
    :cond_1
    :goto_0
    return v7

    .line 587
    .restart local v1       #ch:C
    .restart local v3       #firstByteInHex:Ljava/lang/String;
    .restart local v4       #length:I
    :cond_2
    if-ne v4, v10, :cond_3

    .line 588
    const/4 v9, 0x2

    const/16 v10, 0x9

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 589
    .local v5, s1:Ljava/lang/String;
    const-string v9, "TRIGGER"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v7, v8

    .line 590
    goto :goto_0

    .line 592
    .end local v5           #s1:Ljava/lang/String;
    :cond_3
    if-le v4, v11, :cond_1

    .line 593
    const/4 v9, 0x2

    const/16 v10, 0xa

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 594
    .restart local v5       #s1:Ljava/lang/String;
    const-string v9, "VNCHANGE"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-eqz v9, :cond_1

    move v7, v8

    .line 595
    goto :goto_0

    .line 600
    .end local v1           #ch:C
    .end local v3           #firstByteInHex:Ljava/lang/String;
    .end local v5           #s1:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 601
    .local v2, e:Ljava/lang/Exception;
    const-string v8, "GSM"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected dispatchCMASMessage([[B)V
    .locals 2
    .parameter "pdus"

    .prologue
    .line 1602
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_EMERGENCY_CB_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1603
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1604
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1605
    return-void
.end method

.method protected dispatchCbPdus([[B)V
    .locals 2
    .parameter "pdus"

    .prologue
    .line 1588
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.CB_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1589
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1590
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1591
    return-void
.end method

.method public dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 13
    .parameter "smsb"

    .prologue
    const/4 v10, 0x3

    const/4 v12, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 452
    if-nez p1, :cond_1

    .line 453
    const-string v8, "GSM"

    const-string v9, "dispatchMessage: message is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const/4 v8, 0x2

    .line 548
    :cond_0
    :goto_0
    return v8

    :cond_1
    move-object v4, p1

    .line 457
    check-cast v4, Lcom/android/internal/telephony/gsm/SmsMessage;

    .line 459
    .local v4, sms:Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->isTypeZero()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 462
    const-string v9, "GSM"

    const-string v10, "Received short message type 0, Don\'t display or store it. Send Ack"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 466
    :cond_2
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->isUsimDataDownload()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 467
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getUsimServiceTable()Lcom/android/internal/telephony/gsm/UsimServiceTable;

    move-result-object v7

    .line 472
    .local v7, ust:Lcom/android/internal/telephony/gsm/UsimServiceTable;
    if-eqz v7, :cond_3

    sget-object v8, Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;->DATA_DL_VIA_SMS_PP:Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/gsm/UsimServiceTable;->isAvailable(Lcom/android/internal/telephony/gsm/UsimServiceTable$UsimService;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 474
    const-string v8, "GSM"

    const-string v9, "Received SMS-PP data download, sending to UICC."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mDataDownloadHandler:Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;

    invoke-virtual {v8, v4}, Lcom/android/internal/telephony/gsm/UsimDataDownloadHandler;->startDataDownload(Lcom/android/internal/telephony/gsm/SmsMessage;)I

    move-result v8

    goto :goto_0

    .line 477
    :cond_3
    const-string v8, "GSM"

    const-string v11, "DATA_DL_VIA_SMS_PP service not available, storing message to UICC."

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    .line 481
    .local v6, smsc:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x66

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-interface {v8, v10, v6, v11, v12}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    move v8, v9

    .line 484
    goto :goto_0

    .line 487
    .end local v6           #smsc:Ljava/lang/String;
    .end local v7           #ust:Lcom/android/internal/telephony/gsm/UsimServiceTable;
    :cond_4
    iget-boolean v11, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsReceiveDisabled:Z

    if-eqz v11, :cond_5

    .line 489
    const-string v9, "GSM"

    const-string v10, "Received short message on device which doesn\'t support SMS service. Ignored."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 495
    :cond_5
    const/4 v3, 0x0

    .line 496
    .local v3, handled:Z
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWISetMessage()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 497
    iget-object v11, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v11, v8, v9}, Lcom/android/internal/telephony/Phone;->setVoiceMessageWaiting(II)V

    .line 498
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiDontStore()Z

    move-result v3

    .line 510
    :cond_6
    :goto_1
    if-nez v3, :cond_0

    .line 514
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v5

    .line 517
    .local v5, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    invoke-virtual {v9}, Lcom/android/internal/telephony/SmsStorageMonitor;->isStorageAvailable()Z

    move-result v9

    if-nez v9, :cond_8

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v9

    sget-object v11, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    if-eq v9, v11, :cond_8

    move v8, v10

    .line 526
    goto/16 :goto_0

    .line 502
    .end local v5           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_7
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWIClearMessage()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 503
    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9, v8, v12}, Lcom/android/internal/telephony/Phone;->setVoiceMessageWaiting(II)V

    .line 504
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiDontStore()Z

    move-result v3

    goto :goto_1

    .line 530
    .restart local v5       #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_8
    if-eqz v5, :cond_a

    iget-object v9, v5, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v9, :cond_a

    const/16 v9, 0xb84

    iget-object v10, v5, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v10, v10, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    if-ne v9, v10, :cond_a

    .line 531
    const/4 v2, 0x1

    .line 533
    .local v2, enabled:Z
    :try_start_0
    new-instance v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v1, v9}, Landroid/app/enterprise/EnterpriseDeviceManager;-><init>(Landroid/content/Context;)V

    .line 534
    .local v1, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRoamingPolicy()Landroid/app/enterprise/RoamingPolicy;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/enterprise/RoamingPolicy;->isRoamingPushEnabled()Z

    move-result v2

    .line 535
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isRoamingPushEnabled : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    .end local v1           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    :goto_2
    if-nez v2, :cond_9

    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v9

    if-nez v9, :cond_0

    .line 548
    .end local v2           #enabled:Z
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v8

    goto/16 :goto_0

    .line 536
    .restart local v2       #enabled:Z
    :catch_0
    move-exception v0

    .line 537
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 544
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #enabled:Z
    :cond_a
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, v12}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->isSMSBlocked(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_9

    goto/16 :goto_0
.end method

.method public dispatchSmsServiceCenter(Ljava/lang/String;)V
    .locals 6
    .parameter "smsc_hexstring"

    .prologue
    const/4 v5, -0x1

    .line 214
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.GET_SMSC"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    .local v1, intent:Landroid/content/Intent;
    const/4 v0, 0x0

    .line 232
    .local v0, garbage_value:Z
    const-string v4, "f"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v5, :cond_0

    const-string v4, "F"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v5, :cond_0

    .line 233
    const/4 v0, 0x0

    .line 234
    const-string v4, "GSM"

    const-string/jumbo v5, "smsc_hexstring doesn\'t have garbage value"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :goto_0
    invoke-static {p1}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 242
    .local v2, scAddress:[B
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    .line 244
    .local v3, smsc:[Ljava/lang/String;
    const/4 v4, 0x0

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getSmscNumber([BZ)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 246
    const-string/jumbo v4, "smsc"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    const-string v4, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v1, v4}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 250
    return-void

    .line 236
    .end local v2           #scAddress:[B
    .end local v3           #smsc:[Ljava/lang/String;
    :cond_0
    const/4 v0, 0x1

    .line 237
    const-string v4, "GSM"

    const-string/jumbo v5, "smsc_hexstring has garbage value"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewGsmSms(Landroid/os/Handler;)V

    .line 256
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSmsStatus(Landroid/os/Handler;)V

    .line 259
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSmsOnSim(Landroid/os/Handler;)V

    .line 260
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewCB(Landroid/os/Handler;)V

    .line 261
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnDeviceReady(Landroid/os/Handler;)V

    .line 263
    return-void
.end method

.method public getCbConfig()V
    .locals 2

    .prologue
    .line 1730
    const/16 v1, 0x139

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1731
    .local v0, reply:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->getCbConfig(Landroid/os/Message;)V

    .line 1733
    return-void
.end method

.method public getCbSettings()Landroid/telephony/gsm/CbConfig;
    .locals 4

    .prologue
    .line 1257
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SMSDispathcher-CB] bCBEnabled =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-boolean v3, v3, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " selectedId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-char v3, v3, Landroid/telephony/gsm/CbConfig;->selectedId:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " msgIdMaxCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-char v3, v3, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " msgIdCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget v3, v3, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-object v1, v1, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1265
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CB] msgIDs =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-object v3, v3, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    aget-short v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1268
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    return-object v1
.end method

.method protected getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    const-string v0, "3gpp"

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    .line 280
    iget v10, p1, Landroid/os/Message;->what:I

    sparse-switch v10, :sswitch_data_0

    .line 406
    invoke-super {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleMessage(Landroid/os/Message;)V

    .line 408
    :goto_0
    return-void

    .line 282
    :sswitch_0
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->handleStatusReport(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 286
    :sswitch_1
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/os/AsyncResult;

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->handleBroadcastSms(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 290
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 291
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_0

    .line 292
    const-string v10, "GSM"

    const-string v11, "Successfully wrote SMS-PP message to UICC"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v10, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-interface {v10, v11, v12, v13}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    goto :goto_0

    .line 295
    :cond_0
    const-string v10, "GSM"

    const-string v11, "Failed to write SMS-PP message to UICC"

    iget-object v12, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v10, v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 296
    iget-object v10, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v11, 0x0

    const/16 v12, 0xff

    const/4 v13, 0x0

    invoke-interface {v10, v11, v12, v13}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    goto :goto_0

    .line 308
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_3
    :try_start_0
    const-string v10, "GSM"

    const-string v11, "[SMSDispatcher] New CB Message Received"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 313
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v10, :cond_1

    .line 314
    const-string v10, "GSM"

    const-string v11, "[CB]Exception processing incoming CB"

    iget-object v12, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v10, v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 346
    .end local v0           #ar:Landroid/os/AsyncResult;
    :catch_0
    move-exception v3

    .line 347
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 318
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v0       #ar:Landroid/os/AsyncResult;
    :cond_1
    :try_start_1
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/gsm/CbMessage;

    .line 324
    .local v1, cbMessage:Landroid/telephony/gsm/CbMessage;
    iget v2, v1, Landroid/telephony/gsm/CbMessage;->cbType:I

    .line 325
    .local v2, cbType:I
    iget v7, v1, Landroid/telephony/gsm/CbMessage;->message_length:I

    .line 326
    .local v7, message_length:I
    iget-object v6, v1, Landroid/telephony/gsm/CbMessage;->message:Ljava/lang/String;

    .line 336
    .local v6, message:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/telephony/gsm/CbMessage;->getCount()B

    move-result v9

    .line 340
    .local v9, totalPages:B
    iget-boolean v10, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mfoundMatch:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 342
    const-string v10, "GSM"

    const-string v11, "[CB] Received msg is matched with the settings"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 344
    :cond_2
    const-string v10, "GSM"

    const-string v11, "[CB] Received msg is not matched with the settings"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 357
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #cbMessage:Landroid/telephony/gsm/CbMessage;
    .end local v2           #cbType:I
    .end local v6           #message:Ljava/lang/String;
    .end local v7           #message_length:I
    .end local v9           #totalPages:B
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 359
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v10, :cond_3

    .line 361
    const-string v10, "GSM"

    const-string v11, "[CB]Exception processing cb config set request"

    iget-object v12, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v10, v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 362
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v8, Lcom/android/internal/telephony/CommandException;

    .line 363
    .local v8, setRsp:Lcom/android/internal/telephony/CommandException;
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchErrorCodeForSetCb(Lcom/android/internal/telephony/CommandException;)V

    goto/16 :goto_0

    .line 367
    .end local v8           #setRsp:Lcom/android/internal/telephony/CommandException;
    :cond_3
    const-string v10, "GSM"

    const-string v11, "********************************************"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const-string v10, "GSM"

    const-string v11, "[CB] SetCbConfig was processed successfully"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const-string v10, "GSM"

    const-string v11, "********************************************"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 382
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_5
    const-string v10, "GSM"

    const-string v11, "[CB] received response for getCb"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 386
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v10, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v10, :cond_4

    .line 388
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Landroid/telephony/gsm/CbConfig;

    .line 389
    .local v5, getRsp:Landroid/telephony/gsm/CbConfig;
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->cacheCbSettings(Landroid/telephony/gsm/CbConfig;)V

    .line 390
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->broadcastCbSettingsAvailable()V

    goto/16 :goto_0

    .line 393
    .end local v5           #getRsp:Landroid/telephony/gsm/CbConfig;
    :cond_4
    const-string v10, "GSM"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[CB Exception] Received exception in get response"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v4, Lcom/android/internal/telephony/CommandException;

    .line 395
    .local v4, expt:Lcom/android/internal/telephony/CommandException;
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchErrorCodeForGetCb(Lcom/android/internal/telephony/CommandException;)V

    goto/16 :goto_0

    .line 401
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v4           #expt:Lcom/android/internal/telephony/CommandException;
    :sswitch_6
    const-string v10, "GSM"

    const-string v11, "[CB] Calling getCbConfig"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getCbConfig()V

    goto/16 :goto_0

    .line 280
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0x137 -> :sswitch_3
        0x138 -> :sswitch_4
        0x139 -> :sswitch_5
        0x13a -> :sswitch_6
    .end sparse-switch
.end method

.method protected sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 5
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    const/4 v2, 0x1

    .line 666
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->isSMSBlocked(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 668
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p5, v2, v3, v4}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 689
    :goto_0
    return-void

    .line 669
    :catch_0
    move-exception v0

    .line 670
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 682
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    if-eqz p6, :cond_1

    :goto_1
    invoke-static {p2, p1, p3, p4, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v1

    .line 684
    .local v1, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v1, :cond_2

    .line 685
    iget-object v2, v1, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    iget-object v3, v1, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    invoke-virtual {p0, v2, v3, p5, p6}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 682
    .end local v1           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 687
    .restart local v1       #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_2
    const-string v2, "GSM"

    const-string v3, "GsmSMSDispatcher.sendData(): getSubmitPdu() returned null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .locals 12
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "message"
    .parameter "smsHeader"
    .parameter "encoding"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "lastPart"

    .prologue
    .line 1106
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->isSMSBlocked(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1108
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1123
    :goto_0
    return-void

    .line 1109
    :catch_0
    move-exception v10

    .line 1110
    .local v10, e:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1115
    .end local v10           #e:Ljava/lang/Exception;
    :cond_0
    if-eqz p7, :cond_1

    const/4 v5, 0x1

    :goto_1
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v6

    move-object/from16 v0, p4

    iget v8, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move-object/from16 v0, p4

    iget v9, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move/from16 v7, p5

    invoke-static/range {v2 .. v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v11

    .line 1118
    .local v11, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v11, :cond_2

    .line 1119
    iget-object v2, v11, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    iget-object v3, v11, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 1115
    .end local v11           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 1121
    .restart local v11       #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_2
    const-string v2, "GSM"

    const-string v3, "GsmSMSDispatcher.sendNewSubmitPdu(): getSubmitPdu() returned null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected sendNewSubmitPduWithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZZIII)V
    .locals 14
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "message"
    .parameter "smsHeader"
    .parameter "encoding"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "lastPart"
    .parameter "replyPath"
    .parameter "expiry"
    .parameter "serviceType"
    .parameter "encodingType"

    .prologue
    .line 1132
    if-eqz p7, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v6

    move-object/from16 v0, p4

    iget v11, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move-object/from16 v0, p4

    iget v12, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move-object/from16 v2, p2

    move-object v3, p1

    move-object/from16 v4, p3

    move/from16 v7, p9

    move/from16 v8, p10

    move/from16 v9, p11

    move/from16 v10, p12

    invoke-static/range {v2 .. v12}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BZIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v13

    .line 1137
    .local v13, pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    iget-object v2, v13, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    iget-object v3, v13, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 1138
    return-void

    .line 1132
    .end local v13           #pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method protected sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 13
    .parameter "tracker"

    .prologue
    const/4 v10, 0x1

    .line 1143
    iget-object v3, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 1145
    .local v3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v9, "destination"

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1146
    .local v1, destinationAddress:Ljava/lang/String;
    invoke-virtual {p0, v1, v10}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->isSMSBlocked(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1148
    :try_start_0
    iget-object v9, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    iget-object v10, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1199
    :goto_0
    return-void

    .line 1149
    :catch_0
    move-exception v2

    .line 1150
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1156
    .end local v2           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    .line 1157
    .local v0, curIndex:I
    const/4 v8, 0x0

    .line 1158
    .local v8, totalCnt:I
    const/4 v5, 0x0

    .line 1168
    .local v5, prefMode:I
    const-string/jumbo v9, "smsc"

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    move-object v7, v9

    check-cast v7, [B

    .line 1169
    .local v7, smsc:[B
    const-string/jumbo v9, "pdu"

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    move-object v4, v9

    check-cast v4, [B

    .line 1171
    .local v4, pdu:[B
    const/4 v9, 0x2

    invoke-virtual {p0, v9, p1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 1197
    .local v6, reply:Landroid/os/Message;
    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v7}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11, v6}, Lcom/android/internal/telephony/CommandsInterface;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 19
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 700
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->isSMSBlocked(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 702
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 754
    :goto_0
    return-void

    .line 703
    :catch_0
    move-exception v14

    .line 704
    .local v14, e:Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 710
    .end local v14           #e:Ljava/lang/Exception;
    :cond_0
    if-eqz p5, :cond_7

    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v16

    .line 712
    .local v16, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-nez v16, :cond_1

    .line 713
    const-string v3, "GSM"

    const-string v4, "GsmSMSDispatcher.sendText(): getSubmitPdu() returned null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getNextConcatenatedRef()I

    move-result v3

    and-int/lit16 v0, v3, 0xff

    move/from16 v17, v0

    .line 717
    .local v17, refNumber:I
    const/4 v8, 0x0

    .line 719
    .local v8, encoding:I
    new-instance v15, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    invoke-direct {v15}, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;-><init>()V

    .line 721
    .local v15, encodingForParts:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v13

    .line 722
    .local v13, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    iget v3, v13, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-eq v8, v3, :cond_3

    if-eqz v8, :cond_2

    const/4 v3, 0x1

    if-ne v8, v3, :cond_3

    .line 725
    :cond_2
    iget v8, v13, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 728
    :cond_3
    move-object v15, v13

    .line 730
    new-instance v7, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v7}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 733
    .local v7, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    const/4 v3, 0x1

    if-ne v8, v3, :cond_4

    .line 734
    iget v3, v15, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    iput v3, v7, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 735
    iget v3, v15, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    iput v3, v7, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 738
    :cond_4
    const/4 v9, 0x0

    .line 739
    .local v9, sentIntentforSingle:Landroid/app/PendingIntent;
    if-eqz p4, :cond_5

    .line 740
    move-object/from16 v9, p4

    .line 742
    :cond_5
    const/4 v10, 0x0

    .line 743
    .local v10, deliveryIntentforSingle:Landroid/app/PendingIntent;
    if-eqz p5, :cond_6

    .line 744
    move-object/from16 v10, p5

    .line 746
    :cond_6
    const/4 v11, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v3 .. v11}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    .line 750
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    .line 751
    .local v12, calendar:Ljava/util/Calendar;
    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    .line 752
    .local v18, time:Ljava/lang/Long;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 710
    .end local v7           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .end local v8           #encoding:I
    .end local v9           #sentIntentforSingle:Landroid/app/PendingIntent;
    .end local v10           #deliveryIntentforSingle:Landroid/app/PendingIntent;
    .end local v12           #calendar:Ljava/util/Calendar;
    .end local v13           #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .end local v15           #encodingForParts:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .end local v16           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v17           #refNumber:I
    .end local v18           #time:Ljava/lang/Long;
    :cond_7
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected sendTextDomestic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 14
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 766
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 767
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 768
    .local v9, arr:[Ljava/lang/String;
    const/4 v12, 0x0

    .line 769
    .local v12, sendAddr:Ljava/lang/String;
    const/4 v7, 0x1

    .line 770
    .local v7, curIndex:I
    const/4 v8, 0x1

    .line 773
    .local v8, totalCnt:I
    const/4 v2, 0x0

    aget-object p1, v9, v2

    .line 781
    array-length v2, v9

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 782
    new-instance v12, Ljava/lang/String;

    .end local v12           #sendAddr:Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v9, v2

    invoke-direct {v12, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 787
    .restart local v12       #sendAddr:Ljava/lang/String;
    const/4 v2, 0x2

    aget-object v2, v9, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 788
    const/4 v2, 0x3

    aget-object v2, v9, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 789
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "curIndex : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " totalCnt : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    const/4 v10, 0x0

    .line 792
    .local v10, miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    invoke-direct {p0, v12}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getSmsHeaderMiscElt(Ljava/lang/String;)Lcom/android/internal/telephony/SmsHeader$MiscElt;

    move-result-object v10

    .line 794
    new-instance v13, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v13}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 795
    .local v13, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iget-object v2, v13, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 797
    if-eqz p5, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v13}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v3

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v0, p1, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v11

    .line 810
    .end local v10           #miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    .end local v13           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .local v11, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :goto_1
    iget-object v3, v11, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    iget-object v4, v11, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    move-object v2, p0

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;II)V

    .line 843
    .end local v7           #curIndex:I
    .end local v8           #totalCnt:I
    .end local v9           #arr:[Ljava/lang/String;
    :goto_2
    return-void

    .line 797
    .end local v11           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .restart local v7       #curIndex:I
    .restart local v8       #totalCnt:I
    .restart local v9       #arr:[Ljava/lang/String;
    .restart local v10       #miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    .restart local v13       #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 802
    .end local v10           #miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    .end local v13           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_1
    const/4 v2, 0x1

    aget-object v2, v9, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 803
    const/4 v2, 0x2

    aget-object v2, v9, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 804
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "curIndex : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " totalCnt : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    if-eqz p5, :cond_2

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v0, p1, v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v11

    .restart local v11       #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    goto :goto_1

    .end local v11           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    .line 816
    .end local v7           #curIndex:I
    .end local v8           #totalCnt:I
    .end local v9           #arr:[Ljava/lang/String;
    .end local v12           #sendAddr:Ljava/lang/String;
    :cond_3
    const/4 v12, 0x0

    .line 817
    .restart local v12       #sendAddr:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v12

    .line 819
    const-string v2, "+82"

    invoke-virtual {v12, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 820
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v12, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 826
    :cond_4
    if-eqz v12, :cond_6

    .line 827
    const/4 v10, 0x0

    .line 828
    .restart local v10       #miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    invoke-direct {p0, v12}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getSmsHeaderMiscElt(Ljava/lang/String;)Lcom/android/internal/telephony/SmsHeader$MiscElt;

    move-result-object v10

    .line 830
    new-instance v13, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v13}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 831
    .restart local v13       #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iget-object v2, v13, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 833
    if-eqz p5, :cond_5

    const/4 v2, 0x1

    :goto_4
    invoke-static {v13}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v3

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v0, p1, v1, v2, v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v11

    .line 841
    .end local v10           #miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    .end local v13           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .restart local v11       #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :goto_5
    iget-object v2, v11, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    iget-object v3, v11, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto/16 :goto_2

    .line 833
    .end local v11           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .restart local v10       #miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    .restart local v13       #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_5
    const/4 v2, 0x0

    goto :goto_4

    .line 836
    .end local v10           #miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    .end local v13           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_6
    if-eqz p5, :cond_7

    const/4 v2, 0x1

    :goto_6
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v0, p1, v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v11

    .restart local v11       #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    goto :goto_5

    .end local v11           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_7
    const/4 v2, 0x0

    goto :goto_6
.end method

.method protected sendTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIII)V
    .locals 18
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "replyPath"
    .parameter "expiry"
    .parameter "serviceType"
    .parameter "encodingType"

    .prologue
    .line 850
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    .line 851
    .local v13, calendar:Ljava/util/Calendar;
    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    .line 852
    .local v17, time:Ljava/lang/Long;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 854
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->isSMSBlocked(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 856
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 874
    :goto_0
    return-void

    .line 857
    :catch_0
    move-exception v15

    .line 858
    .local v15, e:Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 863
    .end local v15           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v14

    .line 870
    .local v14, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    if-eqz p5, :cond_1

    const/4 v6, 0x1

    :goto_1
    iget v11, v14, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    iget v12, v14, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-static/range {v3 .. v12}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v16

    .line 873
    .local v16, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 870
    .end local v16           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method protected sendTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIIII)V
    .locals 0
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "replyPath"
    .parameter "expiry"
    .parameter "serviceType"
    .parameter "encodingType"
    .parameter "confirmID"

    .prologue
    .line 886
    return-void
.end method

.method protected sendTextwithOptionsDomestic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIII)V
    .locals 29
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "replyPath"
    .parameter "expiry"
    .parameter "serviceType"
    .parameter "encodingType"

    .prologue
    .line 901
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v23

    .line 902
    .local v23, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    const/16 v26, 0x0

    .line 906
    .local v26, sendAddr:Ljava/lang/String;
    const-string v3, "/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_7

    .line 908
    const-string v3, "/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 910
    .local v21, arr:[Ljava/lang/String;
    const/4 v8, 0x1

    .line 911
    .local v8, curIndex:I
    const/4 v9, 0x1

    .line 912
    .local v9, totalCnt:I
    const/4 v3, 0x0

    aget-object p1, v21, v3

    .line 914
    move-object/from16 v0, v21

    array-length v3, v0

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    .line 915
    new-instance v26, Ljava/lang/String;

    .end local v26           #sendAddr:Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, v21, v3

    move-object/from16 v0, v26

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 917
    .restart local v26       #sendAddr:Ljava/lang/String;
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendTextwithOptionsDomestic destAddr : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sendAddr : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    const/4 v3, 0x2

    aget-object v3, v21, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 921
    .end local v8           #curIndex:I
    .local v22, curIndex:I
    const/4 v3, 0x3

    aget-object v3, v21, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    .line 922
    .end local v9           #totalCnt:I
    .local v28, totalCnt:I
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "curIndex : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " totalCnt : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    if-eqz v26, :cond_3

    .line 928
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 929
    if-eqz p5, :cond_0

    const/4 v6, 0x1

    :goto_0
    move-object/from16 v0, v23

    iget v11, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    move-object/from16 v0, v23

    iget v12, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-static/range {v3 .. v12}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v25

    .local v25, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    move/from16 v9, v28

    .end local v28           #totalCnt:I
    .restart local v9       #totalCnt:I
    move/from16 v8, v22

    .line 962
    .end local v22           #curIndex:I
    .restart local v8       #curIndex:I
    :goto_1
    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    move-object/from16 v3, p0

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;II)V

    .line 988
    .end local v8           #curIndex:I
    .end local v9           #totalCnt:I
    .end local v21           #arr:[Ljava/lang/String;
    :goto_2
    return-void

    .line 929
    .end local v25           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .restart local v21       #arr:[Ljava/lang/String;
    .restart local v22       #curIndex:I
    .restart local v28       #totalCnt:I
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 933
    :cond_1
    const/16 v24, 0x0

    .line 934
    .local v24, miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getSmsHeaderMiscElt(Ljava/lang/String;)Lcom/android/internal/telephony/SmsHeader$MiscElt;

    move-result-object v24

    .line 936
    new-instance v27, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct/range {v27 .. v27}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 937
    .local v27, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 939
    if-eqz p5, :cond_2

    const/4 v6, 0x1

    :goto_3
    invoke-static/range {v27 .. v27}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v7

    move-object/from16 v0, v23

    iget v12, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    move-object/from16 v0, v23

    iget v13, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-static/range {v3 .. v13}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BZIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v25

    .restart local v25       #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    move/from16 v9, v28

    .end local v28           #totalCnt:I
    .restart local v9       #totalCnt:I
    move/from16 v8, v22

    .line 942
    .end local v22           #curIndex:I
    .restart local v8       #curIndex:I
    goto :goto_1

    .line 939
    .end local v8           #curIndex:I
    .end local v9           #totalCnt:I
    .end local v25           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .restart local v22       #curIndex:I
    .restart local v28       #totalCnt:I
    :cond_2
    const/4 v6, 0x0

    goto :goto_3

    .line 944
    .end local v24           #miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    .end local v27           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_3
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendTextwithOptions destAddr : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " No sendAddr"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    if-eqz p5, :cond_4

    const/4 v6, 0x1

    :goto_4
    move-object/from16 v0, v23

    iget v11, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    move-object/from16 v0, v23

    iget v12, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-static/range {v3 .. v12}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v25

    .restart local v25       #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    move/from16 v9, v28

    .end local v28           #totalCnt:I
    .restart local v9       #totalCnt:I
    move/from16 v8, v22

    .end local v22           #curIndex:I
    .restart local v8       #curIndex:I
    goto/16 :goto_1

    .end local v8           #curIndex:I
    .end local v9           #totalCnt:I
    .end local v25           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .restart local v22       #curIndex:I
    .restart local v28       #totalCnt:I
    :cond_4
    const/4 v6, 0x0

    goto :goto_4

    .line 952
    .end local v22           #curIndex:I
    .end local v28           #totalCnt:I
    .restart local v8       #curIndex:I
    .restart local v9       #totalCnt:I
    :cond_5
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendTextwithOptions destAddr : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " No sendAddr"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    const/4 v3, 0x1

    aget-object v3, v21, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 955
    .end local v8           #curIndex:I
    .restart local v22       #curIndex:I
    const/4 v3, 0x2

    aget-object v3, v21, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    .line 956
    .end local v9           #totalCnt:I
    .restart local v28       #totalCnt:I
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "curIndex : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " totalCnt : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    if-eqz p5, :cond_6

    const/4 v6, 0x1

    :goto_5
    move-object/from16 v0, v23

    iget v11, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    move-object/from16 v0, v23

    iget v12, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-static/range {v3 .. v12}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v25

    .restart local v25       #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    move/from16 v9, v28

    .end local v28           #totalCnt:I
    .restart local v9       #totalCnt:I
    move/from16 v8, v22

    .end local v22           #curIndex:I
    .restart local v8       #curIndex:I
    goto/16 :goto_1

    .end local v8           #curIndex:I
    .end local v9           #totalCnt:I
    .end local v25           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .restart local v22       #curIndex:I
    .restart local v28       #totalCnt:I
    :cond_6
    const/4 v6, 0x0

    goto :goto_5

    .line 965
    .end local v21           #arr:[Ljava/lang/String;
    .end local v22           #curIndex:I
    .end local v28           #totalCnt:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v26

    .line 966
    const-string v3, "+82"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 967
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 969
    :cond_8
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendTextwithOptions sendAddr : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    if-eqz v26, :cond_a

    .line 972
    const/16 v24, 0x0

    .line 973
    .restart local v24       #miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getSmsHeaderMiscElt(Ljava/lang/String;)Lcom/android/internal/telephony/SmsHeader$MiscElt;

    move-result-object v24

    .line 975
    new-instance v27, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct/range {v27 .. v27}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 976
    .restart local v27       #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    move-object/from16 v0, v27

    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 978
    if-eqz p5, :cond_9

    const/4 v13, 0x1

    :goto_6
    invoke-static/range {v27 .. v27}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v14

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    move/from16 v19, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    move/from16 v20, v0

    move-object/from16 v10, p2

    move-object/from16 v11, p1

    move-object/from16 v12, p3

    move/from16 v15, p6

    move/from16 v16, p7

    move/from16 v17, p8

    move/from16 v18, p9

    invoke-static/range {v10 .. v20}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BZIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v25

    .line 986
    .end local v24           #miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    .end local v27           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .restart local v25       #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :goto_7
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto/16 :goto_2

    .line 978
    .end local v25           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .restart local v24       #miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    .restart local v27       #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_9
    const/4 v13, 0x0

    goto :goto_6

    .line 982
    .end local v24           #miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    .end local v27           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_a
    if-eqz p5, :cond_b

    const/4 v13, 0x1

    :goto_8
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    move/from16 v18, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    move/from16 v19, v0

    move-object/from16 v10, p2

    move-object/from16 v11, p1

    move-object/from16 v12, p3

    move/from16 v14, p6

    move/from16 v15, p7

    move/from16 v16, p8

    move/from16 v17, p9

    invoke-static/range {v10 .. v19}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v25

    .restart local v25       #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    goto :goto_7

    .end local v25           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_b
    const/4 v13, 0x0

    goto :goto_8
.end method

.method protected sendTextwithOptionsDomestic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIIII)V
    .locals 29
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "replyPath"
    .parameter "expiry"
    .parameter "serviceType"
    .parameter "encodingType"
    .parameter "confirmID"

    .prologue
    .line 998
    const/16 v26, 0x0

    .line 1000
    .local v26, sendAddr:Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v23

    .line 1002
    .local v23, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    const-string v3, "/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_7

    .line 1003
    const-string v3, "/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 1004
    .local v21, arr:[Ljava/lang/String;
    const/4 v8, 0x1

    .line 1005
    .local v8, curIndex:I
    const/4 v9, 0x1

    .line 1007
    .local v9, totalCnt:I
    const/4 v3, 0x0

    aget-object p1, v21, v3

    .line 1009
    move-object/from16 v0, v21

    array-length v3, v0

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    .line 1010
    new-instance v26, Ljava/lang/String;

    .end local v26           #sendAddr:Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, v21, v3

    move-object/from16 v0, v26

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1015
    .restart local v26       #sendAddr:Ljava/lang/String;
    const/4 v3, 0x2

    aget-object v3, v21, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 1016
    .end local v8           #curIndex:I
    .local v22, curIndex:I
    const/4 v3, 0x3

    aget-object v3, v21, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    .line 1019
    .end local v9           #totalCnt:I
    .local v28, totalCnt:I
    if-eqz v26, :cond_3

    .line 1023
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 1024
    if-eqz p5, :cond_0

    const/4 v6, 0x1

    :goto_0
    move-object/from16 v0, v23

    iget v11, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    move-object/from16 v0, v23

    iget v12, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-static/range {v3 .. v12}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v25

    .local v25, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    move/from16 v9, v28

    .end local v28           #totalCnt:I
    .restart local v9       #totalCnt:I
    move/from16 v8, v22

    .line 1060
    .end local v22           #curIndex:I
    .restart local v8       #curIndex:I
    :goto_1
    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    move-object/from16 v3, p0

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;II)V

    .line 1090
    .end local v8           #curIndex:I
    .end local v9           #totalCnt:I
    .end local v21           #arr:[Ljava/lang/String;
    :goto_2
    return-void

    .line 1024
    .end local v25           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .restart local v21       #arr:[Ljava/lang/String;
    .restart local v22       #curIndex:I
    .restart local v28       #totalCnt:I
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 1033
    :cond_1
    const/16 v24, 0x0

    .line 1035
    .local v24, ktReadConfirm:Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;
    new-instance v27, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct/range {v27 .. v27}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 1036
    .local v27, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    move-object/from16 v0, p0

    move/from16 v1, p10

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getSmsHeaderKTReadConfirm(I)Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;

    move-result-object v24

    .line 1037
    move-object/from16 v0, v24

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->ktReadConfirm:Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;

    .line 1040
    if-eqz p5, :cond_2

    const/4 v6, 0x1

    :goto_3
    invoke-static/range {v27 .. v27}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v7

    move-object/from16 v0, v23

    iget v12, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    move-object/from16 v0, v23

    iget v13, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-static/range {v3 .. v13}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BZIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v25

    .restart local v25       #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    move/from16 v9, v28

    .end local v28           #totalCnt:I
    .restart local v9       #totalCnt:I
    move/from16 v8, v22

    .line 1042
    .end local v22           #curIndex:I
    .restart local v8       #curIndex:I
    goto :goto_1

    .line 1040
    .end local v8           #curIndex:I
    .end local v9           #totalCnt:I
    .end local v25           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .restart local v22       #curIndex:I
    .restart local v28       #totalCnt:I
    :cond_2
    const/4 v6, 0x0

    goto :goto_3

    .line 1044
    .end local v24           #ktReadConfirm:Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;
    .end local v27           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_3
    const-string v3, "GSM"

    const-string/jumbo v4, "sendTextwithOptionsDomestic sendAddr null "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    if-eqz p5, :cond_4

    const/4 v6, 0x1

    :goto_4
    move-object/from16 v0, v23

    iget v11, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    move-object/from16 v0, v23

    iget v12, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-static/range {v3 .. v12}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v25

    .restart local v25       #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    move/from16 v9, v28

    .end local v28           #totalCnt:I
    .restart local v9       #totalCnt:I
    move/from16 v8, v22

    .end local v22           #curIndex:I
    .restart local v8       #curIndex:I
    goto :goto_1

    .end local v8           #curIndex:I
    .end local v9           #totalCnt:I
    .end local v25           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .restart local v22       #curIndex:I
    .restart local v28       #totalCnt:I
    :cond_4
    const/4 v6, 0x0

    goto :goto_4

    .line 1052
    .end local v22           #curIndex:I
    .end local v28           #totalCnt:I
    .restart local v8       #curIndex:I
    .restart local v9       #totalCnt:I
    :cond_5
    const/4 v3, 0x1

    aget-object v3, v21, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 1053
    .end local v8           #curIndex:I
    .restart local v22       #curIndex:I
    const/4 v3, 0x2

    aget-object v3, v21, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    .line 1056
    .end local v9           #totalCnt:I
    .restart local v28       #totalCnt:I
    if-eqz p5, :cond_6

    const/4 v6, 0x1

    :goto_5
    move-object/from16 v0, v23

    iget v11, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    move-object/from16 v0, v23

    iget v12, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-static/range {v3 .. v12}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v25

    .restart local v25       #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    move/from16 v9, v28

    .end local v28           #totalCnt:I
    .restart local v9       #totalCnt:I
    move/from16 v8, v22

    .end local v22           #curIndex:I
    .restart local v8       #curIndex:I
    goto/16 :goto_1

    .end local v8           #curIndex:I
    .end local v9           #totalCnt:I
    .end local v25           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .restart local v22       #curIndex:I
    .restart local v28       #totalCnt:I
    :cond_6
    const/4 v6, 0x0

    goto :goto_5

    .line 1062
    .end local v21           #arr:[Ljava/lang/String;
    .end local v22           #curIndex:I
    .end local v28           #totalCnt:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v26

    .line 1064
    if-eqz v26, :cond_a

    .line 1065
    const-string v3, "+82"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1066
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 1074
    :cond_8
    const/16 v24, 0x0

    .line 1076
    .restart local v24       #ktReadConfirm:Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;
    new-instance v27, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct/range {v27 .. v27}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 1077
    .restart local v27       #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    move-object/from16 v0, p0

    move/from16 v1, p10

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getSmsHeaderKTReadConfirm(I)Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;

    move-result-object v24

    .line 1078
    move-object/from16 v0, v24

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->ktReadConfirm:Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;

    .line 1081
    if-eqz p5, :cond_9

    const/4 v13, 0x1

    :goto_6
    invoke-static/range {v27 .. v27}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v14

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    move/from16 v19, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    move/from16 v20, v0

    move-object/from16 v10, p2

    move-object/from16 v11, p1

    move-object/from16 v12, p3

    move/from16 v15, p6

    move/from16 v16, p7

    move/from16 v17, p8

    move/from16 v18, p9

    invoke-static/range {v10 .. v20}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BZIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v25

    .line 1088
    .end local v24           #ktReadConfirm:Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;
    .end local v27           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .restart local v25       #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :goto_7
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto/16 :goto_2

    .line 1081
    .end local v25           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .restart local v24       #ktReadConfirm:Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;
    .restart local v27       #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_9
    const/4 v13, 0x0

    goto :goto_6

    .line 1084
    .end local v24           #ktReadConfirm:Lcom/android/internal/telephony/SmsHeader$KTReadConfirm;
    .end local v27           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_a
    const-string v3, "GSM"

    const-string/jumbo v4, "sendTextwithOptionsDomestic sendAddr null "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    if-eqz p5, :cond_b

    const/4 v13, 0x1

    :goto_8
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    move/from16 v18, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    move/from16 v19, v0

    move-object/from16 v10, p2

    move-object/from16 v11, p1

    move-object/from16 v12, p3

    move/from16 v14, p6

    move/from16 v15, p7

    move/from16 v16, p8

    move/from16 v17, p9

    invoke-static/range {v10 .. v19}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v25

    .restart local v25       #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    goto :goto_7

    .end local v25           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_b
    const/4 v13, 0x0

    goto :goto_8
.end method

.method public setCSCCbConfig(Z)Z
    .locals 5
    .parameter "cbEnable"

    .prologue
    const/4 v4, 0x0

    .line 1623
    const-string v2, "GSM"

    const-string v3, "[CB] CSC UPDATE for CB CONFIG "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    new-instance v0, Landroid/telephony/gsm/CbConfig;

    invoke-direct {v0}, Landroid/telephony/gsm/CbConfig;-><init>()V

    .line 1626
    .local v0, cbSet:Landroid/telephony/gsm/CbConfig;
    iput-boolean p1, v0, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    .line 1627
    const/16 v2, 0x31

    iput-char v2, v0, Landroid/telephony/gsm/CbConfig;->selectedId:C

    .line 1628
    const/16 v2, 0x32

    iput-char v2, v0, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    .line 1629
    iput v4, v0, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    .line 1630
    new-array v2, v4, [S

    iput-object v2, v0, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    .line 1631
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->cacheCbSettings(Landroid/telephony/gsm/CbConfig;)V

    .line 1633
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "msgIdCount"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "msgIdMaxCount"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-char v4, v0, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "selectedId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-char v4, v0, Landroid/telephony/gsm/CbConfig;->selectedId:C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bCBEnabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, v0, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    const/16 v2, 0x138

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1640
    .local v1, reply:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCbConfig(Landroid/telephony/gsm/CbConfig;Landroid/os/Message;)V

    .line 1642
    const/4 v2, 0x1

    return v2
.end method

.method public setCbConfig(ZCI[S[Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;)V
    .locals 6
    .parameter "cbEnable"
    .parameter "selectId"
    .parameter "idCount"
    .parameter "msgId"
    .parameter "languageId"

    .prologue
    .line 1662
    new-instance v0, Landroid/telephony/gsm/CbConfig;

    invoke-direct {v0}, Landroid/telephony/gsm/CbConfig;-><init>()V

    .line 1671
    .local v0, cbSet:Landroid/telephony/gsm/CbConfig;
    iput-boolean p1, v0, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    .line 1672
    iput-char p2, v0, Landroid/telephony/gsm/CbConfig;->selectedId:C

    .line 1673
    sget-object v3, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->cbConfig:Landroid/telephony/gsm/CbConfig;

    iget-char v3, v3, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    iput-char v3, v0, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    .line 1674
    array-length v3, p4

    iput v3, v0, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    .line 1675
    iput-object p4, v0, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    .line 1676
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->cacheCbSettings(Landroid/telephony/gsm/CbConfig;)V

    .line 1677
    invoke-direct {p0, p5}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->setLanguageSettings([Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;)V

    .line 1679
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SmsDispatcher-setCbConfig] bCBEnabled :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v0, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " selectedId :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-char v5, v0, Landroid/telephony/gsm/CbConfig;->selectedId:C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " msgIdCount :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " msgIdMaxCount :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-char v5, v0, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, v0, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 1687
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "msgIDs : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    aget-short v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1690
    :cond_0
    const/16 v3, 0x138

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1692
    .local v2, reply:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->setCbConfig(Landroid/telephony/gsm/CbConfig;Landroid/os/Message;)V

    .line 1694
    return-void
.end method

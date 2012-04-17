.class public Lcom/android/contacts/vcard/NfcImportVCardActivity;
.super Landroid/app/Activity;
.source "NfcImportVCardActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/android/contacts/vcard/VCardImportExportListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/vcard/NfcImportVCardActivity$ImportTask;
    }
.end annotation


# instance fields
.field private mAccount:Lcom/android/contacts/model/AccountWithDataSet;

.field private mRecord:Landroid/nfc/NdefRecord;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    return-void
.end method

.method private startImport()V
    .locals 2

    .prologue
    .line 208
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/vcard/VCardService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 209
    invoke-virtual {p0, v0}, Lcom/android/contacts/vcard/NfcImportVCardActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 210
    const/4 v1, 0x1

    invoke-virtual {p0, v0, p0, v1}, Lcom/android/contacts/vcard/NfcImportVCardActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 211
    return-void
.end method


# virtual methods
.method createImportRequest()Lcom/android/contacts/vcard/ImportRequest;
    .locals 21

    .prologue
    .line 89
    const/4 v11, 0x0

    .line 90
    .local v11, counter:Lcom/android/vcard/VCardEntryCounter;
    const/4 v13, 0x0

    .line 91
    .local v13, detector:Lcom/android/vcard/VCardSourceDetector;
    const/4 v9, 0x1

    .line 93
    .local v9, vcardVersion:I
    :try_start_0
    new-instance v18, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/vcard/NfcImportVCardActivity;->mRecord:Landroid/nfc/NdefRecord;

    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v2

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 94
    .local v18, is:Ljava/io/ByteArrayInputStream;
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 95
    new-instance v19, Lcom/android/vcard/VCardParser_V21;

    invoke-direct/range {v19 .. v19}, Lcom/android/vcard/VCardParser_V21;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_0 .. :try_end_0} :catch_7

    .line 97
    .local v19, parser:Lcom/android/vcard/VCardParser;
    :try_start_1
    new-instance v12, Lcom/android/vcard/VCardEntryCounter;

    invoke-direct {v12}, Lcom/android/vcard/VCardEntryCounter;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_1 .. :try_end_1} :catch_1

    .line 98
    .end local v11           #counter:Lcom/android/vcard/VCardEntryCounter;
    .local v12, counter:Lcom/android/vcard/VCardEntryCounter;
    :try_start_2
    new-instance v14, Lcom/android/vcard/VCardSourceDetector;

    invoke-direct {v14}, Lcom/android/vcard/VCardSourceDetector;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_2 .. :try_end_2} :catch_d

    .line 99
    .end local v13           #detector:Lcom/android/vcard/VCardSourceDetector;
    .local v14, detector:Lcom/android/vcard/VCardSourceDetector;
    :try_start_3
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lcom/android/vcard/VCardParser_V21;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 100
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/android/vcard/VCardParser_V21;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 101
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardParser_V21;->parse(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_3 .. :try_end_3} :catch_e

    .line 117
    if-eqz v18, :cond_0

    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_4 .. :try_end_4} :catch_9

    :cond_0
    move-object v13, v14

    .end local v14           #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v13       #detector:Lcom/android/vcard/VCardSourceDetector;
    move-object v11, v12

    .line 133
    .end local v12           #counter:Lcom/android/vcard/VCardEntryCounter;
    .end local v18           #is:Ljava/io/ByteArrayInputStream;
    .end local v19           #parser:Lcom/android/vcard/VCardParser;
    .restart local v11       #counter:Lcom/android/vcard/VCardEntryCounter;
    :goto_0
    new-instance v2, Lcom/android/contacts/vcard/ImportRequest;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/vcard/NfcImportVCardActivity;->mAccount:Lcom/android/contacts/model/AccountWithDataSet;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/NfcImportVCardActivity;->mRecord:Landroid/nfc/NdefRecord;

    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x7f0a01dc

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/contacts/vcard/NfcImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13}, Lcom/android/vcard/VCardSourceDetector;->getEstimatedType()I

    move-result v7

    invoke-virtual {v13}, Lcom/android/vcard/VCardSourceDetector;->getEstimatedCharset()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11}, Lcom/android/vcard/VCardEntryCounter;->getCount()I

    move-result v10

    invoke-direct/range {v2 .. v10}, Lcom/android/contacts/vcard/ImportRequest;-><init>(Landroid/accounts/Account;[BLandroid/net/Uri;Ljava/lang/String;ILjava/lang/String;II)V

    :cond_1
    :goto_1
    return-object v2

    .line 118
    .end local v11           #counter:Lcom/android/vcard/VCardEntryCounter;
    .end local v13           #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v12       #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v14       #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v18       #is:Ljava/io/ByteArrayInputStream;
    .restart local v19       #parser:Lcom/android/vcard/VCardParser;
    :catch_0
    move-exception v2

    move-object v13, v14

    .end local v14           #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v13       #detector:Lcom/android/vcard/VCardSourceDetector;
    move-object v11, v12

    .line 120
    .end local v12           #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v11       #counter:Lcom/android/vcard/VCardEntryCounter;
    goto :goto_0

    .line 102
    :catch_1
    move-exception v16

    move-object v14, v13

    .end local v13           #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v14       #detector:Lcom/android/vcard/VCardSourceDetector;
    move-object v12, v11

    .line 103
    .end local v11           #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v12       #counter:Lcom/android/vcard/VCardEntryCounter;
    .local v16, e1:Lcom/android/vcard/exception/VCardVersionException;
    :goto_2
    :try_start_5
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 104
    const/4 v9, 0x2

    .line 105
    new-instance v20, Lcom/android/vcard/VCardParser_V30;

    invoke-direct/range {v20 .. v20}, Lcom/android/vcard/VCardParser_V30;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 107
    .end local v19           #parser:Lcom/android/vcard/VCardParser;
    .local v20, parser:Lcom/android/vcard/VCardParser;
    :try_start_6
    new-instance v11, Lcom/android/vcard/VCardEntryCounter;

    invoke-direct {v11}, Lcom/android/vcard/VCardEntryCounter;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_6 .. :try_end_6} :catch_2

    .line 108
    .end local v12           #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v11       #counter:Lcom/android/vcard/VCardEntryCounter;
    :try_start_7
    new-instance v13, Lcom/android/vcard/VCardSourceDetector;

    invoke-direct {v13}, Lcom/android/vcard/VCardSourceDetector;-><init>()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_7 .. :try_end_7} :catch_b

    .line 109
    .end local v14           #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v13       #detector:Lcom/android/vcard/VCardSourceDetector;
    :try_start_8
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/android/vcard/VCardParser_V30;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 110
    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/android/vcard/VCardParser_V30;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 111
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardParser_V30;->parse(Ljava/io/InputStream;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_8 .. :try_end_8} :catch_c

    .line 117
    if-eqz v18, :cond_2

    :try_start_9
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_9 .. :try_end_9} :catch_7

    :cond_2
    move-object/from16 v19, v20

    .line 119
    .end local v20           #parser:Lcom/android/vcard/VCardParser;
    .restart local v19       #parser:Lcom/android/vcard/VCardParser;
    goto :goto_0

    .line 112
    .end local v11           #counter:Lcom/android/vcard/VCardEntryCounter;
    .end local v13           #detector:Lcom/android/vcard/VCardSourceDetector;
    .end local v19           #parser:Lcom/android/vcard/VCardParser;
    .restart local v12       #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v14       #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v20       #parser:Lcom/android/vcard/VCardParser;
    :catch_2
    move-exception v17

    move-object v13, v14

    .end local v14           #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v13       #detector:Lcom/android/vcard/VCardSourceDetector;
    move-object v11, v12

    .line 113
    .end local v12           #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v11       #counter:Lcom/android/vcard/VCardEntryCounter;
    .local v17, e2:Lcom/android/vcard/exception/VCardVersionException;
    :goto_3
    const/4 v2, 0x0

    .line 117
    if-eqz v18, :cond_1

    :try_start_a
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_a .. :try_end_a} :catch_6
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_1

    .line 118
    :catch_3
    move-exception v3

    goto :goto_1

    .end local v17           #e2:Lcom/android/vcard/exception/VCardVersionException;
    :catch_4
    move-exception v2

    move-object/from16 v19, v20

    .line 120
    .end local v20           #parser:Lcom/android/vcard/VCardParser;
    .restart local v19       #parser:Lcom/android/vcard/VCardParser;
    goto :goto_0

    .line 116
    .end local v16           #e1:Lcom/android/vcard/exception/VCardVersionException;
    :catchall_0
    move-exception v2

    .line 117
    :goto_4
    if-eqz v18, :cond_3

    :try_start_b
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_b .. :try_end_b} :catch_6
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_b .. :try_end_b} :catch_7

    .line 119
    :cond_3
    :goto_5
    :try_start_c
    throw v2
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_c .. :try_end_c} :catch_6
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_c .. :try_end_c} :catch_7

    .line 121
    .end local v18           #is:Ljava/io/ByteArrayInputStream;
    .end local v19           #parser:Lcom/android/vcard/VCardParser;
    :catch_5
    move-exception v15

    .line 122
    .local v15, e:Ljava/io/IOException;
    const-string v2, "NfcImportVCardActivity"

    const-string v3, "Failed reading vcard data"

    invoke-static {v2, v3, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    const/4 v2, 0x0

    goto :goto_1

    .line 124
    .end local v15           #e:Ljava/io/IOException;
    :catch_6
    move-exception v15

    .line 125
    .local v15, e:Lcom/android/vcard/exception/VCardNestedException;
    :goto_6
    const-string v2, "NfcImportVCardActivity"

    const-string v3, "Nested Exception is found (it may be false-positive)."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 128
    .end local v15           #e:Lcom/android/vcard/exception/VCardNestedException;
    :catch_7
    move-exception v15

    .line 129
    .local v15, e:Lcom/android/vcard/exception/VCardException;
    :goto_7
    const-string v2, "NfcImportVCardActivity"

    const-string v3, "Error parsing vcard"

    invoke-static {v2, v3, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    const/4 v2, 0x0

    goto :goto_1

    .line 118
    .end local v15           #e:Lcom/android/vcard/exception/VCardException;
    .restart local v18       #is:Ljava/io/ByteArrayInputStream;
    .restart local v19       #parser:Lcom/android/vcard/VCardParser;
    :catch_8
    move-exception v3

    goto :goto_5

    .line 128
    .end local v11           #counter:Lcom/android/vcard/VCardEntryCounter;
    .end local v13           #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v12       #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v14       #detector:Lcom/android/vcard/VCardSourceDetector;
    :catch_9
    move-exception v15

    move-object v13, v14

    .end local v14           #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v13       #detector:Lcom/android/vcard/VCardSourceDetector;
    move-object v11, v12

    .end local v12           #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v11       #counter:Lcom/android/vcard/VCardEntryCounter;
    goto :goto_7

    .line 124
    .end local v11           #counter:Lcom/android/vcard/VCardEntryCounter;
    .end local v13           #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v12       #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v14       #detector:Lcom/android/vcard/VCardSourceDetector;
    :catch_a
    move-exception v15

    move-object v13, v14

    .end local v14           #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v13       #detector:Lcom/android/vcard/VCardSourceDetector;
    move-object v11, v12

    .end local v12           #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v11       #counter:Lcom/android/vcard/VCardEntryCounter;
    goto :goto_6

    .line 116
    .end local v11           #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v12       #counter:Lcom/android/vcard/VCardEntryCounter;
    :catchall_1
    move-exception v2

    move-object v11, v12

    .end local v12           #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v11       #counter:Lcom/android/vcard/VCardEntryCounter;
    goto :goto_4

    .end local v11           #counter:Lcom/android/vcard/VCardEntryCounter;
    .end local v13           #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v12       #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v14       #detector:Lcom/android/vcard/VCardSourceDetector;
    :catchall_2
    move-exception v2

    move-object v13, v14

    .end local v14           #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v13       #detector:Lcom/android/vcard/VCardSourceDetector;
    move-object v11, v12

    .end local v12           #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v11       #counter:Lcom/android/vcard/VCardEntryCounter;
    goto :goto_4

    .end local v11           #counter:Lcom/android/vcard/VCardEntryCounter;
    .end local v13           #detector:Lcom/android/vcard/VCardSourceDetector;
    .end local v19           #parser:Lcom/android/vcard/VCardParser;
    .restart local v12       #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v14       #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v16       #e1:Lcom/android/vcard/exception/VCardVersionException;
    .restart local v20       #parser:Lcom/android/vcard/VCardParser;
    :catchall_3
    move-exception v2

    move-object v13, v14

    .end local v14           #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v13       #detector:Lcom/android/vcard/VCardSourceDetector;
    move-object v11, v12

    .end local v12           #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v11       #counter:Lcom/android/vcard/VCardEntryCounter;
    move-object/from16 v19, v20

    .end local v20           #parser:Lcom/android/vcard/VCardParser;
    .restart local v19       #parser:Lcom/android/vcard/VCardParser;
    goto :goto_4

    .end local v13           #detector:Lcom/android/vcard/VCardSourceDetector;
    .end local v19           #parser:Lcom/android/vcard/VCardParser;
    .restart local v14       #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v20       #parser:Lcom/android/vcard/VCardParser;
    :catchall_4
    move-exception v2

    move-object v13, v14

    .end local v14           #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v13       #detector:Lcom/android/vcard/VCardSourceDetector;
    move-object/from16 v19, v20

    .end local v20           #parser:Lcom/android/vcard/VCardParser;
    .restart local v19       #parser:Lcom/android/vcard/VCardParser;
    goto :goto_4

    .end local v19           #parser:Lcom/android/vcard/VCardParser;
    .restart local v20       #parser:Lcom/android/vcard/VCardParser;
    :catchall_5
    move-exception v2

    move-object/from16 v19, v20

    .end local v20           #parser:Lcom/android/vcard/VCardParser;
    .restart local v19       #parser:Lcom/android/vcard/VCardParser;
    goto :goto_4

    .line 112
    .end local v13           #detector:Lcom/android/vcard/VCardSourceDetector;
    .end local v19           #parser:Lcom/android/vcard/VCardParser;
    .restart local v14       #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v20       #parser:Lcom/android/vcard/VCardParser;
    :catch_b
    move-exception v17

    move-object v13, v14

    .end local v14           #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v13       #detector:Lcom/android/vcard/VCardSourceDetector;
    goto :goto_3

    :catch_c
    move-exception v17

    goto :goto_3

    .line 102
    .end local v11           #counter:Lcom/android/vcard/VCardEntryCounter;
    .end local v16           #e1:Lcom/android/vcard/exception/VCardVersionException;
    .end local v20           #parser:Lcom/android/vcard/VCardParser;
    .restart local v12       #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v19       #parser:Lcom/android/vcard/VCardParser;
    :catch_d
    move-exception v16

    move-object v14, v13

    .end local v13           #detector:Lcom/android/vcard/VCardSourceDetector;
    .restart local v14       #detector:Lcom/android/vcard/VCardSourceDetector;
    goto/16 :goto_2

    :catch_e
    move-exception v16

    goto/16 :goto_2
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 193
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 194
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 195
    new-instance v0, Lcom/android/contacts/model/AccountWithDataSet;

    const-string v1, "account_name"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "account_type"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "data_set"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/model/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/contacts/vcard/NfcImportVCardActivity;->mAccount:Lcom/android/contacts/model/AccountWithDataSet;

    .line 199
    invoke-direct {p0}, Lcom/android/contacts/vcard/NfcImportVCardActivity;->startImport()V

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/vcard/NfcImportVCardActivity;->finish()V

    goto :goto_0
.end method

.method public onCancelRequest(Lcom/android/contacts/vcard/CancelRequest;I)V
    .locals 0
    .parameter "request"
    .parameter "type"

    .prologue
    .line 266
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 151
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 153
    invoke-virtual {p0}, Lcom/android/contacts/vcard/NfcImportVCardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 154
    const-string v0, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    const-string v0, "NfcImportVCardActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknowon intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {p0}, Lcom/android/contacts/vcard/NfcImportVCardActivity;->finish()V

    .line 159
    :cond_0
    const-string v0, "android.nfc.extra.NDEF_MESSAGES"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    aget-object v0, v0, v5

    check-cast v0, Landroid/nfc/NdefMessage;

    .line 161
    invoke-virtual {v0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_1

    array-length v2, v0

    if-nez v2, :cond_2

    .line 163
    :cond_1
    const-string v2, "NfcImportVCardActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No records "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {p0}, Lcom/android/contacts/vcard/NfcImportVCardActivity;->finish()V

    .line 167
    :cond_2
    aget-object v0, v0, v5

    .line 168
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v2

    const-string v3, "UTF8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 169
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    const-string v2, "text/x-vcard"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "text/vcard"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 171
    :cond_3
    const-string v0, "NfcImportVCardActivity"

    const-string v1, "Not a vcard"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :goto_0
    return-void

    .line 175
    :cond_4
    iput-object v0, p0, Lcom/android/contacts/vcard/NfcImportVCardActivity;->mRecord:Landroid/nfc/NdefRecord;

    .line 177
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    .line 178
    invoke-virtual {v0, v6}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v0

    .line 179
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_5

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/vcard/NfcImportVCardActivity;->mAccount:Lcom/android/contacts/model/AccountWithDataSet;

    .line 188
    :goto_1
    invoke-direct {p0}, Lcom/android/contacts/vcard/NfcImportVCardActivity;->startImport()V

    goto :goto_0

    .line 181
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v6, :cond_6

    .line 182
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    iput-object v0, p0, Lcom/android/contacts/vcard/NfcImportVCardActivity;->mAccount:Lcom/android/contacts/model/AccountWithDataSet;

    goto :goto_1

    .line 184
    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/vcard/SelectAccountActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v6}, Lcom/android/contacts/vcard/NfcImportVCardActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onExportFailed(Lcom/android/contacts/vcard/ExportRequest;)V
    .locals 0
    .parameter "request"

    .prologue
    .line 261
    return-void
.end method

.method public onExportProcessed(Lcom/android/contacts/vcard/ExportRequest;I)V
    .locals 0
    .parameter "request"
    .parameter "jobId"

    .prologue
    .line 256
    return-void
.end method

.method public onImportCanceled(Lcom/android/contacts/vcard/ImportRequest;I)V
    .locals 0
    .parameter "request"
    .parameter "jobId"

    .prologue
    .line 251
    return-void
.end method

.method public onImportFailed(Lcom/android/contacts/vcard/ImportRequest;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/android/contacts/vcard/NfcImportVCardActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    const-string v0, "NfcImportVCardActivity"

    const-string v1, "Late import failure -- ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_0
    return-void
.end method

.method public onImportFinished(Lcom/android/contacts/vcard/ImportRequest;ILandroid/net/Uri;)V
    .locals 4
    .parameter "request"
    .parameter "jobId"
    .parameter "uri"

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/android/contacts/vcard/NfcImportVCardActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 227
    const-string v2, "NfcImportVCardActivity"

    const-string v3, "Late import -- ignoring"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    if-eqz p3, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/android/contacts/vcard/NfcImportVCardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p3}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 233
    .local v0, contactUri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 234
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/contacts/vcard/NfcImportVCardActivity;->startActivity(Landroid/content/Intent;)V

    .line 235
    invoke-virtual {p0}, Lcom/android/contacts/vcard/NfcImportVCardActivity;->finish()V

    goto :goto_0
.end method

.method public onImportParsed(Lcom/android/contacts/vcard/ImportRequest;ILcom/android/vcard/VCardEntry;II)V
    .locals 0
    .parameter "request"
    .parameter "jobId"
    .parameter "entry"
    .parameter "currentCount"
    .parameter "totalCount"

    .prologue
    .line 222
    return-void
.end method

.method public onImportProcessed(Lcom/android/contacts/vcard/ImportRequest;II)V
    .locals 0
    .parameter "request"
    .parameter "jobId"
    .parameter "sequence"

    .prologue
    .line 216
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "name"
    .parameter "binder"

    .prologue
    .line 140
    check-cast p2, Lcom/android/contacts/vcard/VCardService$MyBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/android/contacts/vcard/VCardService$MyBinder;->getService()Lcom/android/contacts/vcard/VCardService;

    move-result-object v0

    .line 141
    .local v0, service:Lcom/android/contacts/vcard/VCardService;
    new-instance v1, Lcom/android/contacts/vcard/NfcImportVCardActivity$ImportTask;

    invoke-direct {v1, p0}, Lcom/android/contacts/vcard/NfcImportVCardActivity$ImportTask;-><init>(Lcom/android/contacts/vcard/NfcImportVCardActivity;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/contacts/vcard/VCardService;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/contacts/vcard/NfcImportVCardActivity$ImportTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 142
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 147
    return-void
.end method

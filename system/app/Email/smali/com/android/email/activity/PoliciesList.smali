.class public Lcom/android/email/activity/PoliciesList;
.super Landroid/app/Fragment;
.source "PoliciesList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/PoliciesList$1;,
        Lcom/android/email/activity/PoliciesList$PolicyItem;,
        Lcom/android/email/activity/PoliciesList$PolicyAdapter;
    }
.end annotation


# static fields
.field private static final POLICIES_CONTENT_PROJECTION:[Ljava/lang/String;


# instance fields
.field private accountPolicyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/PoliciesList$PolicyItem;",
            ">;"
        }
    .end annotation
.end field

.field private devicePolicyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/PoliciesList$PolicyItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAccountPolicesLayout:Landroid/widget/LinearLayout;

.field private mAccountPoliciesList:Landroid/widget/ListView;

.field private mAccountText:Landroid/widget/TextView;

.field private mDevicePolicesLayout:Landroid/widget/LinearLayout;

.field private mDevicePoliciesList:Landroid/widget/ListView;

.field private mNoPolicesLayout:Landroid/widget/LinearLayout;

.field private mPolicesLayout:Landroid/widget/LinearLayout;

.field private policiesCursor:Landroid/database/Cursor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 84
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "value"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "account_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/PoliciesList;->POLICIES_CONTENT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/PoliciesList;->devicePolicyList:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/PoliciesList;->accountPolicyList:Ljava/util/ArrayList;

    .line 691
    return-void
.end method

.method public static actionShowPolicyList(Landroid/content/Context;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 78
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/PoliciesList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    const-string v1, "account_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 80
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 81
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 82
    return-void
.end method

.method private getPolicyNameValue(Landroid/database/Cursor;)V
    .locals 16
    .parameter "cursor"

    .prologue
    .line 183
    const/4 v2, 0x1

    .line 184
    .local v2, POLICY_TYPE_DEVICE:I
    const/4 v1, 0x2

    .line 185
    .local v1, POLICY_TYPE_ACCOUNT:I
    const/4 v12, 0x0

    .line 186
    .local v12, showsign_algorithm:Z
    const/4 v11, 0x0

    .line 187
    .local v11, showencrypt_algorithm:Z
    const/4 v6, -0x1

    .line 188
    .local v6, getSignCount:I
    const/4 v5, -0x1

    .line 190
    .local v5, getEncryptCount:I
    const/4 v9, 0x1

    .line 192
    .local v9, policyType:I
    if-eqz p1, :cond_2

    .line 193
    const/4 v13, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 195
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 196
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 198
    .local v8, policyName:Ljava/lang/String;
    const-string v13, "RequireSignedSMIMEMessages"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 199
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    .line 200
    goto :goto_0

    .line 202
    :cond_1
    const-string v13, "RequireEncryptedSMIMEMessages"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 203
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    .line 204
    goto :goto_0

    .line 211
    .end local v8           #policyName:Ljava/lang/String;
    :cond_2
    const-string v8, ""

    .line 212
    .restart local v8       #policyName:Ljava/lang/String;
    const-string v10, ""

    .line 214
    .local v10, policyValue:Ljava/lang/String;
    if-eqz p1, :cond_4

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v13

    if-lez v13, :cond_4

    .line 216
    if-lez v6, :cond_3

    .line 218
    :try_start_0
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 219
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 220
    const/4 v13, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 222
    const-string v13, "RequireSignedSMIMEMessages"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 224
    const/4 v9, 0x2

    .line 225
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 226
    const/4 v12, 0x1

    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f08023e

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 229
    const-string v10, ""

    .line 231
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/PoliciesList;->accountPolicyList:Ljava/util/ArrayList;

    new-instance v14, Lcom/android/email/activity/PoliciesList$PolicyItem;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v8, v10}, Lcom/android/email/activity/PoliciesList$PolicyItem;-><init>(Lcom/android/email/activity/PoliciesList;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    :goto_1
    const-string v10, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :cond_3
    :goto_2
    if-lez v5, :cond_4

    .line 246
    :try_start_1
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 248
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 249
    const/4 v13, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 251
    const-string v13, "RequireEncryptedSMIMEMessages"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 253
    const/4 v9, 0x2

    .line 254
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 255
    const/4 v11, 0x1

    .line 256
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f08023f

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 258
    const-string v10, ""

    .line 259
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/PoliciesList;->accountPolicyList:Ljava/util/ArrayList;

    new-instance v14, Lcom/android/email/activity/PoliciesList$PolicyItem;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v8, v10}, Lcom/android/email/activity/PoliciesList$PolicyItem;-><init>(Lcom/android/email/activity/PoliciesList;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    :goto_3
    const-string v10, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 271
    :cond_4
    :goto_4
    if-eqz p1, :cond_44

    .line 272
    const/4 v13, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 274
    :cond_5
    :goto_5
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_44

    .line 276
    const/4 v7, 0x1

    .line 277
    .local v7, itsBoolean:Z
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 278
    const/4 v13, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 279
    const/4 v13, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "Integer"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 280
    const/4 v7, 0x0

    .line 283
    :cond_6
    const-string v13, "PasswordMode"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 284
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f08024a

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 286
    const-string v13, "64"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    const-string v13, "96"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 287
    :cond_7
    const v13, 0x7f080258

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/email/activity/PoliciesList;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 361
    :cond_8
    :goto_6
    const-string v13, "AllowCamera"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 362
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f08022f

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 363
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 366
    const-string v10, ""

    .line 455
    :cond_9
    :goto_7
    const-string v13, "MaxEmailBodyTruncationSize"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_28

    .line 456
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080243

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 458
    const-string v13, "0"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 461
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/PoliciesList;->policiesCursor:Landroid/database/Cursor;

    const/4 v15, 0x3

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const v14, 0x7f08025c

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/PoliciesList;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 616
    :cond_a
    :goto_8
    if-eqz v7, :cond_c

    .line 617
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 618
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080257

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 621
    :cond_b
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "false"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 622
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080256

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 627
    :cond_c
    const/4 v13, 0x1

    if-ne v9, v13, :cond_43

    .line 628
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/PoliciesList;->devicePolicyList:Ljava/util/ArrayList;

    new-instance v14, Lcom/android/email/activity/PoliciesList$PolicyItem;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v8, v10}, Lcom/android/email/activity/PoliciesList$PolicyItem;-><init>(Lcom/android/email/activity/PoliciesList;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 233
    .end local v7           #itsBoolean:Z
    :cond_d
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 237
    :catch_0
    move-exception v4

    .line 238
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 239
    const-string v8, ""

    .line 240
    const-string v10, ""

    goto/16 :goto_2

    .line 261
    .end local v4           #e:Ljava/lang/Exception;
    :cond_e
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 264
    :catch_1
    move-exception v4

    .line 265
    .restart local v4       #e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 266
    const-string v8, ""

    .line 267
    const-string v10, ""

    goto/16 :goto_4

    .line 288
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v7       #itsBoolean:Z
    :cond_f
    const-string v13, "0"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 291
    const v13, 0x7f080259

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/email/activity/PoliciesList;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_6

    .line 293
    :cond_10
    const-string v13, "AllowSimpleDevicePassword"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 294
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f08023d

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 296
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 299
    const-string v10, ""

    goto/16 :goto_6

    .line 300
    :cond_11
    const-string v13, "PasswordRecoveryEnabled"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 302
    const-string v13, "1"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 303
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f08024b

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 306
    const-string v10, ""

    goto/16 :goto_6

    .line 309
    :cond_12
    const-string v13, "DevicePasswordExpiration"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 310
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f08024d

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 312
    const-string v13, "0"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 317
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/PoliciesList;->policiesCursor:Landroid/database/Cursor;

    const/4 v15, 0x3

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const v14, 0x7f08025d

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/PoliciesList;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_6

    .line 318
    :cond_13
    const-string v13, "DevicePasswordHistory"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14

    .line 319
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f08024e

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 321
    const-string v13, "0"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    goto/16 :goto_5

    .line 324
    :cond_14
    const-string v13, "MinPasswordComplexCharacters"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 325
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080251

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 327
    const-string v13, "0"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    goto/16 :goto_5

    .line 330
    :cond_15
    const-string v13, "MaxDevicePasswordFailedAttempts"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16

    .line 332
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f08024c

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 334
    const-string v13, "0"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    goto/16 :goto_5

    .line 337
    :cond_16
    const-string v13, "MinDevicePasswordLength"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    .line 338
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f08024f

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 340
    const-string v13, "0"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    goto/16 :goto_5

    .line 343
    :cond_17
    const-string v13, "RequireDeviceEncryption"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18

    .line 344
    const-string v13, "1"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 345
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080248

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 347
    const v13, 0x7f080257

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/email/activity/PoliciesList;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_6

    .line 350
    :cond_18
    const-string v13, "DeviceEncryptionEnabled"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_19

    .line 352
    const-string v13, "1"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 353
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080249

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 355
    const v13, 0x7f080257

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/email/activity/PoliciesList;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_6

    .line 358
    :cond_19
    const-string v13, "RemoteWipe"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    goto/16 :goto_5

    .line 367
    :cond_1a
    const-string v13, "AllowTextMessaging"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1b

    .line 374
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080233

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 376
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 379
    const-string v10, ""

    goto/16 :goto_7

    .line 380
    :cond_1b
    const-string v13, "AllowWifi"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1c

    .line 381
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080235

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 382
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 385
    const-string v10, ""

    goto/16 :goto_7

    .line 386
    :cond_1c
    const-string v13, "AllowBluetoothMode"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1f

    .line 387
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f08022d

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 389
    const-string v13, "0"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1d

    .line 390
    const v13, 0x7f080256

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/email/activity/PoliciesList;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_7

    .line 391
    :cond_1d
    const-string v13, "1"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1e

    .line 392
    const v13, 0x7f08025b

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/email/activity/PoliciesList;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_7

    .line 393
    :cond_1e
    const-string v13, "2"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    goto/16 :goto_5

    .line 396
    :cond_1f
    const-string v13, "AllowInternetSharing"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_20

    .line 397
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080231

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 399
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 402
    const-string v10, ""

    goto/16 :goto_7

    .line 403
    :cond_20
    const-string v13, "AllowPOPIMAPEmail"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_21

    .line 404
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080232

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 406
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 409
    const-string v10, ""

    goto/16 :goto_7

    .line 410
    :cond_21
    const-string v13, "AllowBrowser"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_22

    .line 411
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f08022e

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 412
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 415
    const-string v10, ""

    goto/16 :goto_7

    .line 416
    :cond_22
    const-string v13, "AllowStorageCard"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_23

    .line 417
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080237

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 418
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 421
    const-string v10, ""

    goto/16 :goto_7

    .line 422
    :cond_23
    const-string v13, "AllowDesktopSync"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_24

    .line 423
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080236

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 424
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 427
    const-string v10, ""

    goto/16 :goto_7

    .line 428
    :cond_24
    const-string v13, "AllowIrDA"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_25

    .line 429
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080234

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 430
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 433
    const-string v10, ""

    goto/16 :goto_7

    .line 434
    :cond_25
    const-string v13, "MaxInactivityTime"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_27

    .line 436
    const-string v13, "0"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_26

    .line 437
    const-string v8, ""

    .line 438
    const-string v10, ""

    .line 439
    goto/16 :goto_5

    .line 441
    :cond_26
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080250

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 443
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/PoliciesList;->policiesCursor:Landroid/database/Cursor;

    const/4 v15, 0x3

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const v14, 0x7f08025a

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/PoliciesList;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_7

    .line 444
    :cond_27
    const-string v13, "RequireEncryptedSMIMEMessages"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string v13, "RequireSignedSMIMEMessages"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 449
    const/4 v9, 0x2

    goto/16 :goto_7

    .line 463
    :cond_28
    const-string v13, "MaxEmailHtmlBodyTruncationSize"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_29

    .line 464
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080244

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 466
    const-string v13, "0"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 469
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/PoliciesList;->policiesCursor:Landroid/database/Cursor;

    const/4 v15, 0x3

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const v14, 0x7f08025c

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/PoliciesList;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_8

    .line 471
    :cond_29
    const-string v13, "MaxEmailAgeFilter"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2e

    .line 472
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080246

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 473
    const-string v13, "0"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 475
    const-string v13, "1"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2a

    .line 476
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0801a2

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_8

    .line 478
    :cond_2a
    const-string v13, "2"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2b

    .line 479
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0801a3

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_8

    .line 481
    :cond_2b
    const-string v13, "3"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2c

    .line 482
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0801a4

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_8

    .line 484
    :cond_2c
    const-string v13, "4"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2d

    .line 485
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0801a5

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_8

    .line 487
    :cond_2d
    const-string v13, "5"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 488
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0801a6

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_8

    .line 491
    :cond_2e
    const-string v13, "MaxCalendarAgeFilter"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_33

    .line 492
    const-string v13, "0"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 494
    const-string v13, "4"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_30

    .line 495
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0801a5

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 507
    :cond_2f
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080245

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_8

    .line 497
    :cond_30
    const-string v13, "5"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_31

    .line 498
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0801a6

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_9

    .line 500
    :cond_31
    const-string v13, "6"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_32

    .line 501
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0803c1

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_9

    .line 503
    :cond_32
    const-string v13, "7"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2f

    .line 504
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0803c2

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_9

    .line 509
    :cond_33
    const-string v13, "RequireManualSyncWhenRoaming"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_34

    .line 515
    const-string v13, "true"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 516
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080247

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 519
    const v13, 0x7f080257

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/email/activity/PoliciesList;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_8

    .line 523
    :cond_34
    const-string v13, "AllowHTMLEmail"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_35

    .line 524
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080230

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 525
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 528
    const-string v10, ""

    goto/16 :goto_8

    .line 529
    :cond_35
    const-string v13, "AttachmentsEnabled"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_36

    .line 530
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f08023c

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 532
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 535
    const-string v10, ""

    goto/16 :goto_8

    .line 536
    :cond_36
    const-string v13, "MaxAttachmentSize"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_37

    .line 537
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080242

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 539
    const-string v13, "0"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 542
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/PoliciesList;->policiesCursor:Landroid/database/Cursor;

    const/4 v15, 0x3

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const v14, 0x7f08025c

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/PoliciesList;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_8

    .line 545
    :cond_37
    const-string v13, "RequireSignedSMIMEAlgorithm"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_39

    .line 547
    const/4 v13, 0x1

    if-ne v12, v13, :cond_5

    .line 548
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080240

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 550
    const-string v13, "0"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_38

    .line 551
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0804ec

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_8

    .line 553
    :cond_38
    const-string v13, "1"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 554
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0804ed

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_8

    .line 560
    :cond_39
    const-string v13, "RequireEncryptionSMIMEAlgorithm"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3e

    .line 563
    const/4 v13, 0x1

    if-ne v11, v13, :cond_5

    .line 564
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080241

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 566
    const-string v13, "0"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3a

    .line 567
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0804ee

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_8

    .line 569
    :cond_3a
    const-string v13, "1"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3b

    .line 570
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0804ef

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_8

    .line 572
    :cond_3b
    const-string v13, "2"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3c

    .line 573
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0804f0

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_8

    .line 576
    :cond_3c
    const-string v13, "3"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3d

    .line 577
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0804f1

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_8

    .line 580
    :cond_3d
    const-string v13, "4"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 581
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0804f2

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_8

    .line 588
    :cond_3e
    const-string v13, "AllowSMIMEEncryptionAlgorithmNegotiation"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_41

    .line 590
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 591
    .local v3, c:I
    const/4 v13, 0x1

    if-ne v11, v13, :cond_5

    .line 592
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f08023b

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 594
    const-string v13, "0"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 596
    const-string v13, "1"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3f

    .line 597
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f08025e

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_8

    .line 598
    :cond_3f
    const-string v13, "2"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_40

    .line 599
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f08025f

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_8

    .line 600
    :cond_40
    const-string v13, "3"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 601
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080260

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_8

    .line 605
    .end local v3           #c:I
    :cond_41
    const-string v13, "AllowSMIMESoftCerts"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_42

    .line 606
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080238

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 608
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 611
    const-string v10, ""

    goto/16 :goto_8

    .line 613
    :cond_42
    const/4 v9, 0x1

    goto/16 :goto_8

    .line 629
    :cond_43
    const/4 v13, 0x2

    if-ne v9, v13, :cond_5

    .line 630
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/PoliciesList;->accountPolicyList:Ljava/util/ArrayList;

    new-instance v14, Lcom/android/email/activity/PoliciesList$PolicyItem;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v8, v10}, Lcom/android/email/activity/PoliciesList$PolicyItem;-><init>(Lcom/android/email/activity/PoliciesList;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 633
    .end local v7           #itsBoolean:Z
    :cond_44
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/PoliciesList;->setHasOptionsMenu(Z)V

    .line 94
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 178
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 179
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 17
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 98
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-super {v0, v1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 100
    const v2, 0x7f040089

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    .line 102
    .local v15, view:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "account_id"

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    .line 104
    .local v9, accountId:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v9, v10}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v8

    .line 106
    .local v8, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Policies;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/email/activity/PoliciesList;->POLICIES_CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v5, "account_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/email/activity/PoliciesList;->policiesCursor:Landroid/database/Cursor;

    .line 111
    const v2, 0x7f100233

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/email/activity/PoliciesList;->mAccountText:Landroid/widget/TextView;

    .line 112
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->mAccountText:Landroid/widget/TextView;

    iget-object v3, v8, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    const v2, 0x7f10022d

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/email/activity/PoliciesList;->mPolicesLayout:Landroid/widget/LinearLayout;

    .line 114
    const v2, 0x7f10022f

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/email/activity/PoliciesList;->mDevicePolicesLayout:Landroid/widget/LinearLayout;

    .line 115
    const v2, 0x7f100232

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/email/activity/PoliciesList;->mAccountPolicesLayout:Landroid/widget/LinearLayout;

    .line 116
    const v2, 0x7f100235

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/email/activity/PoliciesList;->mNoPolicesLayout:Landroid/widget/LinearLayout;

    .line 118
    const v2, 0x7f100231

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/email/activity/PoliciesList;->mDevicePoliciesList:Landroid/widget/ListView;

    .line 119
    const v2, 0x7f100234

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/email/activity/PoliciesList;->mAccountPoliciesList:Landroid/widget/ListView;

    .line 121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->policiesCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/email/activity/PoliciesList;->getPolicyNameValue(Landroid/database/Cursor;)V

    .line 122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->devicePolicyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->accountPolicyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 123
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->mNoPolicesLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->mPolicesLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 165
    :goto_0
    return-object v15

    .line 126
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->mNoPolicesLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->mPolicesLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->devicePolicyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 129
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->mDevicePolicesLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 131
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->accountPolicyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->mAccountPolicesLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 135
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->mDevicePoliciesList:Landroid/widget/ListView;

    new-instance v3, Lcom/android/email/activity/PoliciesList$PolicyAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f04008a

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/PoliciesList;->devicePolicyList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/android/email/activity/PoliciesList$PolicyAdapter;-><init>(Lcom/android/email/activity/PoliciesList;Landroid/content/Context;ILjava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 137
    const/4 v14, 0x0

    .line 138
    .local v14, totalHeight:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->mDevicePoliciesList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v11, v2, :cond_3

    .line 139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->mDevicePoliciesList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/PoliciesList;->mDevicePoliciesList:Landroid/widget/ListView;

    invoke-interface {v2, v11, v3, v4}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 141
    .local v12, listItem:Landroid/view/View;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/view/View;->measure(II)V

    .line 142
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v14, v2

    .line 138
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 144
    .end local v12           #listItem:Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->mDevicePoliciesList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    .line 145
    .local v13, params:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->mDevicePoliciesList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/PoliciesList;->mDevicePoliciesList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v2, v3

    add-int/2addr v2, v14

    iput v2, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->mDevicePoliciesList:Landroid/widget/ListView;

    invoke-virtual {v2, v13}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->mAccountPoliciesList:Landroid/widget/ListView;

    new-instance v3, Lcom/android/email/activity/PoliciesList$PolicyAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f04008a

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/PoliciesList;->accountPolicyList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/android/email/activity/PoliciesList$PolicyAdapter;-><init>(Lcom/android/email/activity/PoliciesList;Landroid/content/Context;ILjava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 151
    const/4 v14, 0x0

    .line 152
    const/4 v11, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->mAccountPoliciesList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v11, v2, :cond_4

    .line 153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->mAccountPoliciesList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/PoliciesList;->mAccountPoliciesList:Landroid/widget/ListView;

    invoke-interface {v2, v11, v3, v4}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 155
    .restart local v12       #listItem:Landroid/view/View;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/view/View;->measure(II)V

    .line 156
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v14, v2

    .line 152
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 158
    .end local v12           #listItem:Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->mAccountPoliciesList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    .line 159
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->mAccountPoliciesList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/PoliciesList;->mAccountPoliciesList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v2, v3

    add-int/2addr v2, v14

    iput v2, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->mAccountPoliciesList:Landroid/widget/ListView;

    invoke-virtual {v2, v13}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/email/activity/PoliciesList;->policiesCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/email/activity/PoliciesList;->policiesCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 173
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 174
    return-void
.end method

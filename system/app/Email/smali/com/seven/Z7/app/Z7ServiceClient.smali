.class public Lcom/seven/Z7/app/Z7ServiceClient;
.super Ljava/lang/Object;
.source "Z7ServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/seven/Z7/app/Z7ServiceClient$1;,
        Lcom/seven/Z7/app/Z7ServiceClient$MyServiceListener;
    }
.end annotation


# static fields
.field static instance:Lcom/seven/Z7/app/Z7ServiceClient;


# instance fields
.field callbackMessages:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Handler;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mApp:Lcom/android/email/Email;

.field protected mListener:Lcom/seven/Z7/app/Z7ServiceClient$MyServiceListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "app"

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/seven/Z7/app/Z7ServiceClient;->callbackMessages:Ljava/util/Hashtable;

    .line 47
    invoke-static {p1}, Lcom/android/email/Email;->getApplication(Landroid/content/Context;)Lcom/android/email/Email;

    move-result-object v0

    iput-object v0, p0, Lcom/seven/Z7/app/Z7ServiceClient;->mApp:Lcom/android/email/Email;

    .line 48
    new-instance v0, Lcom/seven/Z7/app/Z7ServiceClient$MyServiceListener;

    invoke-static {}, Lcom/seven/Z7/app/Z7AppBaseActivity;->getUIActionHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/seven/Z7/app/Z7ServiceClient$MyServiceListener;-><init>(Lcom/seven/Z7/app/Z7ServiceClient;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/seven/Z7/app/Z7ServiceClient;->mListener:Lcom/seven/Z7/app/Z7ServiceClient$MyServiceListener;

    .line 49
    iget-object v0, p0, Lcom/seven/Z7/app/Z7ServiceClient;->mApp:Lcom/android/email/Email;

    iget-object v1, p0, Lcom/seven/Z7/app/Z7ServiceClient;->mListener:Lcom/seven/Z7/app/Z7ServiceClient$MyServiceListener;

    invoke-virtual {v0, v1}, Lcom/android/email/Email;->registerListener(Lcom/android/email/Email$Z7ConnectionListener;)V

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/seven/Z7/app/Z7ServiceClient;ILandroid/os/Bundle;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/seven/Z7/app/Z7ServiceClient;->handExtraCallback(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public static getEmailAccountType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "isp"

    .prologue
    .line 359
    const-string v0, "yahoo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    const-string v0, "com.seven.Z7.yahoo"

    .line 369
    :goto_0
    return-object v0

    .line 361
    :cond_0
    const-string v0, "msn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    const-string v0, "com.seven.Z7.msn"

    goto :goto_0

    .line 363
    :cond_1
    const-string v0, "gmail"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 364
    const-string v0, "com.seven.Z7.gmail"

    goto :goto_0

    .line 365
    :cond_2
    const-string v0, "work"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 366
    const-string v0, "com.seven.Z7.work"

    goto :goto_0

    .line 369
    :cond_3
    const-string v0, "com.seven.Z7"

    goto :goto_0
.end method

.method public static final getInstance(Landroid/app/Activity;)Lcom/seven/Z7/app/Z7ServiceClient;
    .locals 1
    .parameter "activity"

    .prologue
    .line 53
    sget-object v0, Lcom/seven/Z7/app/Z7ServiceClient;->instance:Lcom/seven/Z7/app/Z7ServiceClient;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/seven/Z7/app/Z7ServiceClient;

    invoke-direct {v0, p0}, Lcom/seven/Z7/app/Z7ServiceClient;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/seven/Z7/app/Z7ServiceClient;->instance:Lcom/seven/Z7/app/Z7ServiceClient;

    .line 56
    :cond_0
    sget-object v0, Lcom/seven/Z7/app/Z7ServiceClient;->instance:Lcom/seven/Z7/app/Z7ServiceClient;

    return-object v0
.end method

.method private handExtraCallback(ILandroid/os/Bundle;)Z
    .locals 23
    .parameter "what"
    .parameter "b"

    .prologue
    .line 193
    const/4 v15, 0x0

    .line 195
    .local v15, isConsumed:Z
    invoke-static/range {p1 .. p1}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->fromId(I)Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    move-result-object v9

    .line 197
    .local v9, callbackType:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;
    if-eqz v9, :cond_0

    .line 198
    const-string v20, "Z7ServiceClient"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "handling "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    sget-object v20, Lcom/seven/Z7/app/Z7ServiceClient$1;->$SwitchMap$com$seven$Z7$shared$Z7ServiceConstants$SystemCallbackType:[I

    invoke-virtual {v9}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->ordinal()I

    move-result v21

    aget v20, v20, v21

    packed-switch v20, :pswitch_data_0

    .line 295
    const/4 v15, 0x0

    :cond_0
    :goto_0
    move/from16 v20, v15

    .line 299
    :goto_1
    return v20

    .line 201
    :pswitch_0
    const-string v20, "is_email_scope"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v16

    .line 202
    .local v16, isEmailScope:Z
    if-eqz v16, :cond_1

    .line 203
    const-string v20, "email"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 204
    .local v4, accountName:Ljava/lang/String;
    const-string v20, "account_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 205
    .local v2, accountId:I
    const-string v20, "isp"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 216
    .local v18, isp:Ljava/lang/String;
    new-instance v7, Landroid/accounts/Account;

    invoke-static/range {v18 .. v18}, Lcom/seven/Z7/app/Z7ServiceClient;->getEmailAccountType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v7, v4, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .local v7, amAccount:Landroid/accounts/Account;
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 218
    .local v12, extras:Landroid/os/Bundle;
    const-string v20, "account_internal_id"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v20, "account_isp"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-static {}, Lcom/android/email/Email;->getApplication()Lcom/android/email/Email;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    .line 222
    .local v3, accountManager:Landroid/accounts/AccountManager;
    invoke-virtual {v3}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v6

    .line 223
    .local v6, ads:[Landroid/accounts/AuthenticatorDescription;
    move-object v8, v6

    .local v8, arr$:[Landroid/accounts/AuthenticatorDescription;
    array-length v0, v8

    move/from16 v19, v0

    .local v19, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_2
    move/from16 v0, v19

    if-ge v13, v0, :cond_1

    aget-object v5, v8, v13

    .line 224
    .local v5, ad:Landroid/accounts/AuthenticatorDescription;
    iget-object v0, v5, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v20, v0

    iget-object v0, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 226
    :try_start_0
    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v3, v7, v0, v12}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_3
    const-string v20, "Z7ServiceClient"

    const-string v21, "do not show private informations.!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    .end local v2           #accountId:I
    .end local v3           #accountManager:Landroid/accounts/AccountManager;
    .end local v4           #accountName:Ljava/lang/String;
    .end local v5           #ad:Landroid/accounts/AuthenticatorDescription;
    .end local v6           #ads:[Landroid/accounts/AuthenticatorDescription;
    .end local v7           #amAccount:Landroid/accounts/Account;
    .end local v8           #arr$:[Landroid/accounts/AuthenticatorDescription;
    .end local v12           #extras:Landroid/os/Bundle;
    .end local v13           #i$:I
    .end local v18           #isp:Ljava/lang/String;
    .end local v19           #len$:I
    :cond_1
    const/4 v15, 0x1

    .line 238
    goto/16 :goto_0

    .line 227
    .restart local v2       #accountId:I
    .restart local v3       #accountManager:Landroid/accounts/AccountManager;
    .restart local v4       #accountName:Ljava/lang/String;
    .restart local v5       #ad:Landroid/accounts/AuthenticatorDescription;
    .restart local v6       #ads:[Landroid/accounts/AuthenticatorDescription;
    .restart local v7       #amAccount:Landroid/accounts/Account;
    .restart local v8       #arr$:[Landroid/accounts/AuthenticatorDescription;
    .restart local v12       #extras:Landroid/os/Bundle;
    .restart local v13       #i$:I
    .restart local v18       #isp:Ljava/lang/String;
    .restart local v19       #len$:I
    :catch_0
    move-exception v11

    .line 228
    .local v11, e:Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 223
    .end local v11           #e:Ljava/lang/Exception;
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 241
    .end local v2           #accountId:I
    .end local v3           #accountManager:Landroid/accounts/AccountManager;
    .end local v4           #accountName:Ljava/lang/String;
    .end local v5           #ad:Landroid/accounts/AuthenticatorDescription;
    .end local v6           #ads:[Landroid/accounts/AuthenticatorDescription;
    .end local v7           #amAccount:Landroid/accounts/Account;
    .end local v8           #arr$:[Landroid/accounts/AuthenticatorDescription;
    .end local v12           #extras:Landroid/os/Bundle;
    .end local v13           #i$:I
    .end local v16           #isEmailScope:Z
    .end local v18           #isp:Ljava/lang/String;
    .end local v19           #len$:I
    :pswitch_1
    const-string v20, "email"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 242
    .restart local v4       #accountName:Ljava/lang/String;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v20

    if-gtz v20, :cond_4

    .line 243
    :cond_3
    const/16 v20, 0x1

    goto/16 :goto_1

    .line 246
    :cond_4
    const-string v20, "isp"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 247
    .restart local v18       #isp:Ljava/lang/String;
    const-string v20, "content_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 248
    .local v10, contentId:I
    const-string v20, "is_sync_automatically"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    .line 250
    .local v14, isAutomatically:Z
    const-string v20, "is_syncable"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 260
    .local v17, isSyncable:I
    new-instance v7, Landroid/accounts/Account;

    invoke-static/range {v18 .. v18}, Lcom/seven/Z7/app/Z7ServiceClient;->getEmailAccountType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v7, v4, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    .restart local v7       #amAccount:Landroid/accounts/Account;
    packed-switch v10, :pswitch_data_1

    .line 286
    :goto_4
    const/4 v15, 0x1

    .line 287
    goto/16 :goto_0

    .line 268
    :pswitch_2
    const-string v20, "com.seven.provider.email"

    move-object/from16 v0, v20

    invoke-static {v7, v0, v14}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 270
    const-string v20, "com.seven.provider.email"

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-static {v7, v0, v1}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    goto :goto_4

    .line 274
    :pswitch_3
    const-string v20, "com.android.contacts"

    move-object/from16 v0, v20

    invoke-static {v7, v0, v14}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 276
    const-string v20, "com.android.contacts"

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-static {v7, v0, v1}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    goto :goto_4

    .line 280
    :pswitch_4
    sget-object v20, Lcom/seven/Z7/shared/ANSharedCommon;->CALENDAR_AUTHORITY:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-static {v7, v0, v14}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 282
    sget-object v20, Lcom/seven/Z7/shared/ANSharedCommon;->CALENDAR_AUTHORITY:Ljava/lang/String;

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-static {v7, v0, v1}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    goto :goto_4

    .line 290
    .end local v4           #accountName:Ljava/lang/String;
    .end local v7           #amAccount:Landroid/accounts/Account;
    .end local v10           #contentId:I
    .end local v14           #isAutomatically:Z
    .end local v17           #isSyncable:I
    .end local v18           #isp:Ljava/lang/String;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/seven/Z7/app/Z7ServiceClient;->mApp:Lcom/android/email/Email;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/android/email/Email;->setEngineInitialized(Z)V

    .line 291
    const/4 v15, 0x1

    .line 292
    goto/16 :goto_0

    .line 199
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_5
    .end packed-switch

    .line 261
    :pswitch_data_1
    .packed-switch 0x100
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public registerCallback(ILandroid/os/Handler;)V
    .locals 7
    .parameter "what"
    .parameter "m"

    .prologue
    .line 78
    const-string v4, "Z7ServiceClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "register callback "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for what:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    if-eqz p2, :cond_3

    .line 80
    iget-object v4, p0, Lcom/seven/Z7/app/Z7ServiceClient;->callbackMessages:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 81
    .local v2, handlerArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Handler;>;"
    if-nez v2, :cond_0

    .line 82
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #handlerArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Handler;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .restart local v2       #handlerArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Handler;>;"
    :cond_0
    const/4 v0, 0x0

    .line 85
    .local v0, alreadyExists:Z
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    .line 86
    .local v1, existingHandler:Landroid/os/Handler;
    if-ne v1, p2, :cond_1

    .line 87
    const/4 v0, 0x1

    .line 91
    .end local v1           #existingHandler:Landroid/os/Handler;
    :cond_2
    if-nez v0, :cond_3

    .line 92
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v4, p0, Lcom/seven/Z7/app/Z7ServiceClient;->callbackMessages:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .end local v0           #alreadyExists:Z
    .end local v2           #handlerArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Handler;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method sendMessage(Landroid/os/Bundle;Landroid/os/Handler;)V
    .locals 4
    .parameter "b"
    .parameter "h"

    .prologue
    .line 303
    invoke-static {p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 304
    .local v0, m:Landroid/os/Message;
    if-eqz v0, :cond_3

    .line 305
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 306
    const-string v1, "event-id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    const-string v1, "event-id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 309
    :cond_0
    const-string v1, "result"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 310
    const-string v1, "result"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 312
    :cond_1
    const-string v1, "arg2"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 313
    const-string v1, "arg2"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 315
    :cond_2
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 316
    const-string v1, "Z7ServiceClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " found and sent to target with data "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_3
    return-void
.end method

.method public unRegisterCallback(ILandroid/os/Handler;)V
    .locals 5
    .parameter "what"
    .parameter "m"

    .prologue
    .line 101
    const-string v2, "Z7ServiceClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unRegister callback "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v2, p0, Lcom/seven/Z7/app/Z7ServiceClient;->callbackMessages:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 103
    .local v0, handlerArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Handler;>;"
    if-nez v0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 108
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p2, :cond_3

    .line 109
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 114
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 116
    iget-object v2, p0, Lcom/seven/Z7/app/Z7ServiceClient;->callbackMessages:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 107
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

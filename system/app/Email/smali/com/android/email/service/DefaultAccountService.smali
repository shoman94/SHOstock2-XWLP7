.class public Lcom/android/email/service/DefaultAccountService;
.super Landroid/app/Service;
.source "DefaultAccountService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static actionGetDefaultAccount(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 49
    const-string v0, ">>> DefAccount"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action intent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 51
    const-class v1, Lcom/android/email/service/DefaultAccountService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 52
    const-string v1, "Get"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 54
    return-void
.end method

.method public static actionSetDefaultAccount(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 57
    const-string v0, ">>> DefAccount"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action intent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 59
    const-class v1, Lcom/android/email/service/DefaultAccountService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 60
    const-string v1, "Set"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 62
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 63
    return-void
.end method

.method public static actionSetDefaultAccount_oma(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 40
    const-string v0, ">>> DefAccount"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action intent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 42
    const-class v1, Lcom/android/email/service/DefaultAccountService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 43
    const-string v1, "Set_oma"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 45
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 46
    return-void
.end method

.method public static actionUpdateAccount(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 66
    const-string v0, ">>> DefAccount"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action intent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 68
    const-class v1, Lcom/android/email/service/DefaultAccountService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 69
    const-string v1, "Update"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 71
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 72
    return-void
.end method

.method private createOtherAccount(Landroid/content/Intent;)V
    .locals 38
    .parameter "intent"

    .prologue
    .line 363
    const/16 v24, 0x0

    .line 366
    .local v24, mAccount:Lcom/android/email/Account;
    const-string v4, "provider_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 367
    .local v26, provider_id:Ljava/lang/String;
    const-string v4, "user_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 368
    .local v18, email:Ljava/lang/String;
    const-string v4, "user_passwd"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 371
    .local v25, passwd:Ljava/lang/String;
    const-string v4, "receive_host"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 372
    .local v27, recv_addr:Ljava/lang/String;
    const-string v4, "receive_port"

    const/4 v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 373
    .local v6, recv_port:I
    const-string v4, "receive_security"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 375
    .local v28, recv_security:Ljava/lang/String;
    const-string v4, "user_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 376
    .local v36, user_name:Ljava/lang/String;
    const-string v4, "user_passwd"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 377
    .local v37, user_passwd:Ljava/lang/String;
    const-string v4, "account_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 379
    .local v15, account_name:Ljava/lang/String;
    const-string v4, "send_host"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 380
    .local v29, send_addr:Ljava/lang/String;
    const-string v4, "send_port"

    const/4 v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 381
    .local v11, send_port:I
    const-string v4, "send_from"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 382
    .local v31, send_from:Ljava/lang/String;
    const-string v4, "send_security"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 383
    .local v32, send_security:Ljava/lang/String;
    const-string v4, "send_auth"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 384
    .local v30, send_auth:Ljava/lang/String;
    const-string v4, "sender_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 385
    .local v33, sender_name:Ljava/lang/String;
    const-string v4, "notify"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    .line 386
    .local v21, is_notify:Z
    const-string v4, "service"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 387
    .local v3, type:Ljava/lang/String;
    const-string v4, "signature"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 388
    .local v34, signature:Ljava/lang/String;
    const-string v4, "vibrate"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v22

    .line 389
    .local v22, is_vibrate:Z
    const-string v4, "vibrate_when_silent"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v23

    .line 391
    .local v23, is_vibrate_when_silent:Z
    const-string v4, ">>> DefAccount"

    const-string v5, ">>>>>>>>>>>>> CREATE ACCOUNT START<<<<<<<<<<<<<< "

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    if-eqz v26, :cond_0

    .line 393
    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "provider_id : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    :cond_0
    if-eqz v18, :cond_1

    .line 395
    const-string v4, ">>> DefAccount"

    const-string v5, "user_id : "

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    :cond_1
    if-eqz v25, :cond_2

    .line 397
    const-string v4, ">>> DefAccount"

    const-string v5, "user_passwd : "

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    :cond_2
    if-eqz v3, :cond_3

    .line 399
    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "service : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :cond_3
    if-eqz v27, :cond_4

    .line 401
    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "receive_host : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    :cond_4
    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "receive_port : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    if-eqz v28, :cond_5

    .line 404
    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "recv_security : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    :cond_5
    if-eqz v29, :cond_6

    .line 406
    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "send_host : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :cond_6
    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "send_port : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    if-eqz v31, :cond_7

    .line 409
    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "send_from : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    :cond_7
    if-eqz v32, :cond_8

    .line 411
    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "send_security : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :cond_8
    if-eqz v30, :cond_9

    .line 413
    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "send_auth : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    :cond_9
    if-eqz v33, :cond_a

    .line 415
    const-string v4, ">>> DefAccount"

    const-string v5, "sender_name : "

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    :cond_a
    if-eqz v15, :cond_b

    .line 417
    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "account_name : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :cond_b
    if-eqz v34, :cond_c

    .line 419
    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "signature : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    :cond_c
    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "vibrate : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "vibrate_when_silent : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const-string v4, ">>> DefAccount"

    const-string v5, ">>>>>>>>>>>>> CREATE ACCOUNT END<<<<<<<<<<<<<< "

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-string v4, "is_default"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    .line 425
    .local v20, isDefault:Ljava/lang/Boolean;
    if-nez v24, :cond_d

    .line 426
    new-instance v24, Lcom/android/email/Account;

    .end local v24           #mAccount:Lcom/android/email/Account;
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/Account;-><init>(Landroid/content/Context;)V

    .line 427
    .restart local v24       #mAccount:Lcom/android/email/Account;
    invoke-static/range {p0 .. p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/email/Preferences;->getCarrierAccount()Lcom/android/email/Account;

    move-result-object v4

    if-nez v4, :cond_d

    .line 428
    invoke-static/range {p0 .. p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Lcom/android/email/Account;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/email/Preferences;->setCarrierAccountId(Ljava/lang/String;)V

    .line 432
    :cond_d
    if-eqz v27, :cond_18

    const-string v4, ""

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 433
    const-string v4, ""

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 435
    const-string v35, ""

    .line 436
    .local v35, user:Ljava/lang/String;
    const-string v16, ""

    .line 437
    .local v16, domain:Ljava/lang/String;
    if-eqz v18, :cond_f

    .line 439
    const-string v4, "@"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 441
    .local v19, emailParts:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v19, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v35

    .line 442
    const-string v4, ""

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 443
    move-object/from16 v36, v35

    .line 445
    :cond_e
    move-object/from16 v0, v19

    array-length v4, v0

    const/4 v5, 0x1

    if-le v4, v5, :cond_f

    const-string v4, ""

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 446
    const/4 v4, 0x1

    aget-object v4, v19, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    .line 447
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setEmail(Ljava/lang/String;)V

    .line 450
    .end local v19           #emailParts:[Ljava/lang/String;
    :cond_f
    const-string v4, ""

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 451
    move-object/from16 v37, v25

    .line 452
    :cond_10
    const-string v4, ">>> DefAccount"

    const-string v5, "usr : "

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "domain : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const/16 v4, 0xf

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->setAutomaticCheckIntervalMinutes(I)V

    .line 471
    if-eqz v28, :cond_1e

    .line 472
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/email/service/DefaultAccountService;->GetSecurityTypeNum(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->setSecurityFlags(I)V

    .line 476
    :goto_0
    const/4 v4, -0x1

    if-ne v6, v4, :cond_12

    .line 477
    const-string v4, "pop3"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 478
    invoke-virtual/range {v24 .. v24}, Lcom/android/email/Account;->getSecurityFlags()J

    move-result-wide v4

    const-wide/16 v7, 0x1

    cmp-long v4, v4, v7

    if-eqz v4, :cond_11

    invoke-virtual/range {v24 .. v24}, Lcom/android/email/Account;->getSecurityFlags()J

    move-result-wide v4

    const-wide/16 v7, 0x2

    cmp-long v4, v4, v7

    if-nez v4, :cond_1f

    :cond_11
    const/16 v6, 0x3e3

    .line 485
    :cond_12
    :goto_1
    invoke-virtual/range {v24 .. v24}, Lcom/android/email/Account;->getSecurityFlags()J

    move-result-wide v4

    const-wide/16 v7, 0x0

    cmp-long v4, v4, v7

    if-eqz v4, :cond_13

    .line 486
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Lcom/android/email/Account;->getSecurityFlags()J

    move-result-wide v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/email/service/DefaultAccountService;->GetSecurityTypeString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 490
    :cond_13
    :try_start_0
    new-instance v2, Ljava/net/URI;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    .local v2, uri:Ljava/net/URI;
    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->setStoreUri(Ljava/lang/String;)V

    .line 502
    if-eqz v15, :cond_14

    const-string v4, ""

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    :cond_14
    if-eqz v16, :cond_15

    .line 503
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/email/service/DefaultAccountService;->GetAccountName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 506
    :cond_15
    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Lcom/android/email/Account;->setDescription(Ljava/lang/String;)V

    .line 508
    if-eqz v33, :cond_16

    const-string v4, ""

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 509
    :cond_16
    move-object/from16 v33, v35

    .line 511
    :cond_17
    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setName(Ljava/lang/String;)V

    .line 512
    move-object/from16 v0, v24

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setPasswd(Ljava/lang/String;)V

    .line 513
    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setNotifyNewMail(Z)V

    .line 520
    .end local v2           #uri:Ljava/net/URI;
    .end local v16           #domain:Ljava/lang/String;
    .end local v35           #user:Ljava/lang/String;
    :cond_18
    if-eqz v29, :cond_1d

    const-string v4, ""

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    .line 521
    const-string v4, ""

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 524
    const-string v4, ">>> DefAccount"

    const-string v5, "send : user_name "

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    invoke-virtual/range {v24 .. v24}, Lcom/android/email/Account;->getPasswd()Ljava/lang/String;

    move-result-object v37

    .line 526
    const-string v4, ">>> DefAccount"

    const-string v5, "send : user_passwd "

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setNotifyNewMail(Z)V

    .line 528
    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setSendAddr(Ljava/lang/String;)V

    .line 529
    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setSecurityAuth(Ljava/lang/String;)V

    .line 530
    if-eqz v31, :cond_19

    const-string v4, ""

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 532
    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setEmail(Ljava/lang/String;)V

    .line 535
    :cond_19
    if-eqz v32, :cond_23

    .line 536
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/email/service/DefaultAccountService;->GetSecurityTypeNum(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->setSendSecurityFlags(I)V

    .line 540
    :goto_2
    const/4 v4, -0x1

    if-ne v11, v4, :cond_1b

    .line 541
    invoke-virtual/range {v24 .. v24}, Lcom/android/email/Account;->getSendSecurityFlags()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1a

    invoke-virtual/range {v24 .. v24}, Lcom/android/email/Account;->getSendSecurityFlags()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_24

    :cond_1a
    const/16 v11, 0x1d1

    .line 544
    :cond_1b
    :goto_3
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Lcom/android/email/Account;->setSendPort(I)V

    .line 547
    :cond_1c
    invoke-virtual/range {v24 .. v24}, Lcom/android/email/Account;->getSendSecurityFlags()I

    move-result v4

    if-eqz v4, :cond_25

    .line 548
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "smtp+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Lcom/android/email/Account;->getSendSecurityFlags()I

    move-result v5

    int-to-long v7, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/email/service/DefaultAccountService;->GetSecurityTypeString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 552
    :goto_4
    if-eqz v29, :cond_1d

    const-string v4, ""

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    .line 554
    :try_start_1
    new-instance v2, Ljava/net/URI;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v7, v2

    move-object v8, v3

    invoke-direct/range {v7 .. v14}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    .line 562
    .restart local v2       #uri:Ljava/net/URI;
    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->setSenderUri(Ljava/lang/String;)V

    .line 566
    .end local v2           #uri:Ljava/net/URI;
    :cond_1d
    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setVibrate(Z)V

    .line 567
    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setVibrateWhenSilent(Z)V

    .line 568
    move-object/from16 v0, v24

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setSignature(Ljava/lang/String;)V

    .line 569
    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->setAddSignature(Z)V

    .line 570
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setDefault(Ljava/lang/Boolean;)V

    .line 571
    const-string v4, "false"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->setUpdateAccount(Ljava/lang/String;)V

    .line 572
    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setServerName(Ljava/lang/String;)V

    .line 573
    invoke-static/range {p0 .. p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->save(Lcom/android/email/Preferences;)V

    .line 574
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/android/email/Email;->setNotifyUiAccountsChanged(Z)V

    .line 575
    :goto_5
    return-void

    .line 474
    .restart local v16       #domain:Ljava/lang/String;
    .restart local v35       #user:Ljava/lang/String;
    :cond_1e
    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->setSecurityFlags(I)V

    goto/16 :goto_0

    .line 478
    :cond_1f
    const/16 v6, 0x6e

    goto/16 :goto_1

    .line 481
    :cond_20
    invoke-virtual/range {v24 .. v24}, Lcom/android/email/Account;->getSecurityFlags()J

    move-result-wide v4

    const-wide/16 v7, 0x1

    cmp-long v4, v4, v7

    if-eqz v4, :cond_21

    invoke-virtual/range {v24 .. v24}, Lcom/android/email/Account;->getSecurityFlags()J

    move-result-wide v4

    const-wide/16 v7, 0x2

    cmp-long v4, v4, v7

    if-nez v4, :cond_22

    :cond_21
    const/16 v6, 0x3e1

    :goto_6
    goto/16 :goto_1

    :cond_22
    const/16 v6, 0x8f

    goto :goto_6

    .line 494
    :catch_0
    move-exception v17

    .line 495
    .local v17, e:Ljava/net/URISyntaxException;
    invoke-virtual/range {v17 .. v17}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_5

    .line 538
    .end local v16           #domain:Ljava/lang/String;
    .end local v17           #e:Ljava/net/URISyntaxException;
    .end local v35           #user:Ljava/lang/String;
    :cond_23
    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->setSendSecurityFlags(I)V

    goto/16 :goto_2

    .line 541
    :cond_24
    const/16 v11, 0x24b

    goto/16 :goto_3

    .line 550
    :cond_25
    const-string v3, "smtp"

    goto/16 :goto_4

    .line 556
    :catch_1
    move-exception v17

    .line 557
    .restart local v17       #e:Ljava/net/URISyntaxException;
    invoke-virtual/range {v17 .. v17}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_5
.end method

.method private createOtherAccount_oma(Landroid/content/Intent;)V
    .locals 37
    .parameter "intent"

    .prologue
    .line 579
    invoke-direct/range {p0 .. p0}, Lcom/android/email/service/DefaultAccountService;->getCarrierAccount()Lcom/android/email/Account;

    move-result-object v23

    .line 582
    .local v23, mAccount:Lcom/android/email/Account;
    const-string v4, "provider_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 583
    .local v25, provider_id:Ljava/lang/String;
    const-string v4, "user_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 584
    .local v17, email:Ljava/lang/String;
    const-string v4, "user_passwd"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 586
    .local v24, passwd:Ljava/lang/String;
    const-string v4, "receive_host"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 587
    .local v26, recv_addr:Ljava/lang/String;
    const-string v4, "receive_port"

    const/4 v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 588
    .local v6, recv_port:I
    const-string v4, "receive_security"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 590
    .local v27, recv_security:Ljava/lang/String;
    const-string v4, "user_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 591
    .local v35, user_name:Ljava/lang/String;
    const-string v4, "user_passwd"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 593
    .local v36, user_passwd:Ljava/lang/String;
    const-string v4, "send_host"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 594
    .local v28, send_addr:Ljava/lang/String;
    const-string v4, "send_port"

    const/4 v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 595
    .local v11, send_port:I
    const-string v4, "send_from"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 596
    .local v30, send_from:Ljava/lang/String;
    const-string v4, "send_security"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 597
    .local v31, send_security:Ljava/lang/String;
    const-string v4, "send_auth"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 598
    .local v29, send_auth:Ljava/lang/String;
    const-string v4, "sender_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 599
    .local v32, sender_name:Ljava/lang/String;
    const-string v4, "notify"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    .line 600
    .local v20, is_notify:Z
    const-string v4, "service"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 601
    .local v3, type:Ljava/lang/String;
    const-string v4, "signature"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 602
    .local v33, signature:Ljava/lang/String;
    const-string v4, "vibrate"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    .line 603
    .local v21, is_vibrate:Z
    const-string v4, "vibrate_when_silent"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v22

    .line 605
    .local v22, is_vibrate_when_silent:Z
    const-string v4, ">>> DefAccount"

    const-string v5, ">>>>>>>>>>>>> CREATE OMA ACCOUNT START<<<<<<<<<<<<<< "

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    if-eqz v25, :cond_0

    .line 607
    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "provider_id : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    :cond_0
    if-eqz v17, :cond_1

    .line 609
    const-string v4, ">>> DefAccount"

    const-string v5, "user_id : "

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    :cond_1
    if-eqz v24, :cond_2

    .line 611
    const-string v4, ">>> DefAccount"

    const-string v5, "user_passwd : "

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    :cond_2
    if-eqz v3, :cond_3

    .line 613
    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "service : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    :cond_3
    if-eqz v26, :cond_4

    .line 615
    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "receive_host : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    :cond_4
    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "receive_port : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    if-eqz v27, :cond_5

    .line 618
    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "recv_security : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    :cond_5
    if-eqz v28, :cond_6

    .line 620
    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "send_host : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    :cond_6
    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "send_port : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    if-eqz v30, :cond_7

    .line 623
    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "send_from : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    :cond_7
    if-eqz v31, :cond_8

    .line 625
    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "send_security : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    :cond_8
    if-eqz v29, :cond_9

    .line 627
    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "send_auth : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    :cond_9
    if-eqz v32, :cond_a

    .line 629
    const-string v4, ">>> DefAccount"

    const-string v5, "sender_name : "

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    :cond_a
    if-eqz v33, :cond_b

    .line 631
    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "signature : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    :cond_b
    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "vibrate : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "vibrate_when_silent : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const-string v4, ">>> DefAccount"

    const-string v5, ">>>>>>>>>>>>> CREATE OMA ACCOUNT END<<<<<<<<<<<<<< "

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    const-string v4, "is_default"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    .line 637
    .local v19, isDefault:Ljava/lang/Boolean;
    if-nez v23, :cond_c

    .line 638
    new-instance v23, Lcom/android/email/Account;

    .end local v23           #mAccount:Lcom/android/email/Account;
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/Account;-><init>(Landroid/content/Context;)V

    .line 639
    .restart local v23       #mAccount:Lcom/android/email/Account;
    invoke-static/range {p0 .. p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/email/Preferences;->getCarrierAccount()Lcom/android/email/Account;

    move-result-object v4

    if-nez v4, :cond_c

    .line 640
    invoke-static/range {p0 .. p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v4

    invoke-virtual/range {v23 .. v23}, Lcom/android/email/Account;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/email/Preferences;->setCarrierAccountId(Ljava/lang/String;)V

    .line 644
    :cond_c
    if-eqz v26, :cond_1c

    const-string v4, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 645
    const-string v4, ""

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 647
    const-string v34, ""

    .line 648
    .local v34, user:Ljava/lang/String;
    const-string v15, ""

    .line 649
    .local v15, domain:Ljava/lang/String;
    if-eqz v17, :cond_e

    .line 651
    const-string v4, "@"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 653
    .local v18, emailParts:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v18, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v34

    .line 654
    const-string v4, ""

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 655
    move-object/from16 v35, v34

    .line 657
    :cond_d
    move-object/from16 v0, v18

    array-length v4, v0

    const/4 v5, 0x1

    if-le v4, v5, :cond_e

    const-string v4, ""

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 658
    const/4 v4, 0x1

    aget-object v4, v18, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 659
    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setEmail(Ljava/lang/String;)V

    .line 662
    .end local v18           #emailParts:[Ljava/lang/String;
    :cond_e
    const-string v4, ""

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 663
    move-object/from16 v36, v24

    .line 664
    :cond_f
    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "usr : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "domain : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    const/16 v4, 0xf

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->setAutomaticCheckIntervalMinutes(I)V

    .line 683
    if-eqz v27, :cond_17

    .line 684
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/email/service/DefaultAccountService;->GetSecurityTypeNum(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->setSecurityFlags(I)V

    .line 688
    :goto_0
    const/4 v4, -0x1

    if-ne v6, v4, :cond_11

    .line 689
    const-string v4, "pop3"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 690
    invoke-virtual/range {v23 .. v23}, Lcom/android/email/Account;->getSecurityFlags()J

    move-result-wide v4

    const-wide/16 v7, 0x1

    cmp-long v4, v4, v7

    if-eqz v4, :cond_10

    invoke-virtual/range {v23 .. v23}, Lcom/android/email/Account;->getSecurityFlags()J

    move-result-wide v4

    const-wide/16 v7, 0x2

    cmp-long v4, v4, v7

    if-nez v4, :cond_18

    :cond_10
    const/16 v6, 0x3e3

    .line 697
    :cond_11
    :goto_1
    invoke-virtual/range {v23 .. v23}, Lcom/android/email/Account;->getSecurityFlags()J

    move-result-wide v4

    const-wide/16 v7, 0x0

    cmp-long v4, v4, v7

    if-eqz v4, :cond_12

    .line 698
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v23 .. v23}, Lcom/android/email/Account;->getSecurityFlags()J

    move-result-wide v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/email/service/DefaultAccountService;->GetSecurityTypeString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 702
    :cond_12
    :try_start_0
    new-instance v2, Ljava/net/URI;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 712
    .local v2, uri:Ljava/net/URI;
    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->setStoreUri(Ljava/lang/String;)V

    .line 714
    if-eqz v15, :cond_13

    const-string v4, ""

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 715
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/email/service/DefaultAccountService;->GetAccountName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->setDescription(Ljava/lang/String;)V

    .line 717
    :cond_13
    if-eqz v32, :cond_14

    const-string v4, ""

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 718
    :cond_14
    move-object/from16 v32, v34

    .line 720
    :cond_15
    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setName(Ljava/lang/String;)V

    .line 721
    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setPasswd(Ljava/lang/String;)V

    .line 722
    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setNotifyNewMail(Z)V

    .line 785
    .end local v2           #uri:Ljava/net/URI;
    .end local v15           #domain:Ljava/lang/String;
    .end local v34           #user:Ljava/lang/String;
    :cond_16
    :goto_2
    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setVibrate(Z)V

    .line 786
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setVibrateWhenSilent(Z)V

    .line 787
    move-object/from16 v0, v23

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setSignature(Ljava/lang/String;)V

    .line 788
    const/4 v4, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->setAddSignature(Z)V

    .line 789
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setDefault(Ljava/lang/Boolean;)V

    .line 790
    const-string v4, "false"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->setUpdateAccount(Ljava/lang/String;)V

    .line 791
    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setServerName(Ljava/lang/String;)V

    .line 792
    invoke-static/range {p0 .. p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->save(Lcom/android/email/Preferences;)V

    .line 793
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/android/email/Email;->setNotifyUiAccountsChanged(Z)V

    .line 794
    :goto_3
    return-void

    .line 686
    .restart local v15       #domain:Ljava/lang/String;
    .restart local v34       #user:Ljava/lang/String;
    :cond_17
    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->setSecurityFlags(I)V

    goto/16 :goto_0

    .line 690
    :cond_18
    const/16 v6, 0x6e

    goto/16 :goto_1

    .line 693
    :cond_19
    invoke-virtual/range {v23 .. v23}, Lcom/android/email/Account;->getSecurityFlags()J

    move-result-wide v4

    const-wide/16 v7, 0x1

    cmp-long v4, v4, v7

    if-eqz v4, :cond_1a

    invoke-virtual/range {v23 .. v23}, Lcom/android/email/Account;->getSecurityFlags()J

    move-result-wide v4

    const-wide/16 v7, 0x2

    cmp-long v4, v4, v7

    if-nez v4, :cond_1b

    :cond_1a
    const/16 v6, 0x3e1

    :goto_4
    goto/16 :goto_1

    :cond_1b
    const/16 v6, 0x8f

    goto :goto_4

    .line 706
    :catch_0
    move-exception v16

    .line 707
    .local v16, e:Ljava/net/URISyntaxException;
    invoke-virtual/range {v16 .. v16}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_3

    .line 728
    .end local v15           #domain:Ljava/lang/String;
    .end local v16           #e:Ljava/net/URISyntaxException;
    .end local v34           #user:Ljava/lang/String;
    :cond_1c
    if-eqz v28, :cond_16

    const-string v4, ""

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 729
    const-string v4, ""

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    .line 732
    invoke-virtual/range {v23 .. v23}, Lcom/android/email/Account;->getPasswd()Ljava/lang/String;

    move-result-object v36

    .line 733
    const-string v4, ">>> DefAccount"

    const-string v5, "send : user_passwd "

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setNotifyNewMail(Z)V

    .line 735
    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setSendAddr(Ljava/lang/String;)V

    .line 736
    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setSecurityAuth(Ljava/lang/String;)V

    .line 737
    if-eqz v30, :cond_1f

    const-string v4, ""

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 739
    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setEmail(Ljava/lang/String;)V

    .line 741
    const-string v4, "@"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 742
    .restart local v18       #emailParts:[Ljava/lang/String;
    const-string v15, ""

    .line 744
    .restart local v15       #domain:Ljava/lang/String;
    const-string v4, ""

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    if-nez v35, :cond_1e

    .line 745
    :cond_1d
    move-object/from16 v35, v30

    .line 747
    :cond_1e
    move-object/from16 v0, v18

    array-length v4, v0

    const/4 v5, 0x1

    if-le v4, v5, :cond_1f

    .line 748
    const/4 v4, 0x1

    aget-object v4, v18, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 749
    if-eqz v15, :cond_1f

    const-string v4, ""

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 750
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/email/service/DefaultAccountService;->GetAccountName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->setDescription(Ljava/lang/String;)V

    .line 754
    .end local v15           #domain:Ljava/lang/String;
    .end local v18           #emailParts:[Ljava/lang/String;
    :cond_1f
    if-eqz v31, :cond_23

    .line 755
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/email/service/DefaultAccountService;->GetSecurityTypeNum(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->setSendSecurityFlags(I)V

    .line 759
    :goto_5
    const/4 v4, -0x1

    if-ne v11, v4, :cond_21

    .line 760
    invoke-virtual/range {v23 .. v23}, Lcom/android/email/Account;->getSendSecurityFlags()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_20

    invoke-virtual/range {v23 .. v23}, Lcom/android/email/Account;->getSendSecurityFlags()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_24

    :cond_20
    const/16 v11, 0x1d1

    .line 763
    :cond_21
    :goto_6
    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lcom/android/email/Account;->setSendPort(I)V

    .line 766
    :cond_22
    invoke-virtual/range {v23 .. v23}, Lcom/android/email/Account;->getSendSecurityFlags()I

    move-result v4

    if-eqz v4, :cond_25

    .line 767
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "smtp+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v23 .. v23}, Lcom/android/email/Account;->getSendSecurityFlags()I

    move-result v5

    int-to-long v7, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/email/service/DefaultAccountService;->GetSecurityTypeString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 771
    :goto_7
    if-eqz v28, :cond_16

    const-string v4, ""

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 773
    :try_start_1
    new-instance v2, Ljava/net/URI;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v7, v2

    move-object v8, v3

    invoke-direct/range {v7 .. v14}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    .line 781
    .restart local v2       #uri:Ljava/net/URI;
    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->setSenderUri(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 757
    .end local v2           #uri:Ljava/net/URI;
    :cond_23
    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->setSendSecurityFlags(I)V

    goto/16 :goto_5

    .line 760
    :cond_24
    const/16 v11, 0x24b

    goto :goto_6

    .line 769
    :cond_25
    const-string v3, "smtp"

    goto :goto_7

    .line 775
    :catch_1
    move-exception v16

    .line 776
    .restart local v16       #e:Ljava/net/URISyntaxException;
    invoke-virtual/range {v16 .. v16}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto/16 :goto_3
.end method

.method private getCarrierAccount()Lcom/android/email/Account;
    .locals 1

    .prologue
    .line 154
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/Preferences;->getCarrierAccount()Lcom/android/email/Account;

    move-result-object v0

    return-object v0
.end method

.method private installCertificate(Landroid/content/Context;[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 1254
    .line 1256
    const/4 v2, 0x1

    .line 1258
    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    .line 1260
    :try_start_0
    const-string v0, "temp.p12"

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 1261
    :try_start_1
    invoke-virtual {v4, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 1262
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 1264
    new-instance v0, Lcom/android/email/cba/CertificateMgr;

    invoke-static {p1}, Lcom/android/email/EmailUtility;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5, p1}, Lcom/android/email/cba/CertificateMgr;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 1265
    const-string v5, "temp.p12"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v0, v5, p3}, Lcom/android/email/cba/CertificateMgr;->importCertificate(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v0

    .line 1266
    :try_start_2
    const-string v3, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "installCertificate() : Alias - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    const-string v3, "temp.p12"

    invoke-virtual {p1, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 1280
    if-eqz v4, :cond_0

    .line 1282
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_0
    :goto_0
    move-object v3, v0

    .line 1292
    :goto_1
    if-eqz v3, :cond_3

    .line 1293
    const-string v0, ">>> DefAccount"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "installCertificate() : certificate installed = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 1297
    :goto_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.sec.CBA_INSTALL_STATUS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1298
    const-string v2, "status"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1299
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1300
    return-object v3

    .line 1283
    :catch_0
    move-exception v3

    .line 1284
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1277
    :catch_1
    move-exception v0

    move-object v4, v3

    move-object v7, v3

    move-object v3, v0

    move-object v0, v7

    .line 1278
    :goto_3
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1280
    if-eqz v4, :cond_0

    .line 1282
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 1283
    :catch_2
    move-exception v3

    .line 1284
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1280
    :catchall_0
    move-exception v0

    move-object v4, v3

    :goto_4
    if-eqz v4, :cond_1

    .line 1282
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1285
    :cond_1
    :goto_5
    throw v0

    .line 1283
    :catch_3
    move-exception v1

    .line 1284
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 1289
    :cond_2
    const-string v0, ">>> DefAccount"

    const-string v4, "installCertificate() : null parameters"

    invoke-static {v0, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1280
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 1277
    :catch_4
    move-exception v0

    move-object v7, v0

    move-object v0, v3

    move-object v3, v7

    goto :goto_3

    :catch_5
    move-exception v3

    goto :goto_3

    :cond_3
    move v0, v2

    goto :goto_2
.end method

.method private onGetDefaultAccount()V
    .locals 15

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/email/service/DefaultAccountService;->getCarrierAccount()Lcom/android/email/Account;

    move-result-object v0

    .line 84
    .local v0, ac:Lcom/android/email/Account;
    new-instance v9, Landroid/content/Intent;

    const-string v12, "android.intent.action.RECV_HOST"

    invoke-direct {v9, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    .local v9, sintent:Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 88
    :try_start_0
    const-string v12, "id"

    const-string v13, ""

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const-string v12, "passwd"

    const-string v13, ""

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const-string v12, "service"

    const-string v13, ""

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    const-string v12, "receive_host"

    const-string v13, ""

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-string v12, "receive_port"

    const-string v13, ""

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const-string v12, "send_host"

    const-string v13, ""

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const-string v12, "send_port"

    const-string v13, ""

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const-string v12, "user_id"

    const-string v13, ""

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const-string v12, "user_passwd"

    const-string v13, ""

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    :goto_0
    invoke-virtual {p0, v9}, Lcom/android/email/service/DefaultAccountService;->sendBroadcast(Landroid/content/Intent;)V

    .line 133
    :goto_1
    return-void

    .line 98
    :cond_0
    new-instance v4, Ljava/net/URI;

    invoke-virtual {v0}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v4, v12}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 99
    .local v4, recv_uri:Ljava/net/URI;
    new-instance v8, Ljava/net/URI;

    invoke-virtual {v0}, Lcom/android/email/Account;->getSenderUri()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v12}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 102
    .local v8, send_uri:Ljava/net/URI;
    invoke-virtual {v0}, Lcom/android/email/Account;->getEmail()Ljava/lang/String;

    move-result-object v10

    .line 103
    .local v10, user_id:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v12

    const-string v13, ":"

    const/4 v14, 0x2

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    aget-object v11, v12, v13

    .line 104
    .local v11, user_passwd:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 105
    .local v5, scheme:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, recv_host:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/net/URI;->getPort()I

    move-result v12

    const/16 v13, 0x6e

    if-ne v12, v13, :cond_1

    const-string v3, "pop"

    .line 107
    .local v3, recv_port:Ljava/lang/String;
    :goto_2
    invoke-virtual {v8}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v6

    .line 108
    .local v6, send_host:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/net/URI;->getPort()I

    move-result v12

    const/16 v13, 0x19

    if-ne v12, v13, :cond_2

    const-string v7, "smtp"

    .line 109
    .local v7, send_port:Ljava/lang/String;
    :goto_3
    const-string v12, ">>> DefAccount"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "id : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v12, ">>> DefAccount"

    const-string v13, "passwd : "

    invoke-static {v12, v13}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v12, ">>> DefAccount"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "service : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v12, ">>> DefAccount"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "receive_host : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v12, ">>> DefAccount"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "receive_port : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v12, ">>> DefAccount"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "send_host : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v12, ">>> DefAccount"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "send_port : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v12, "id"

    const-string v13, ""

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string v12, "passwd"

    const-string v13, ""

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const-string v12, "service"

    invoke-virtual {v9, v12, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const-string v12, "receive_host"

    invoke-virtual {v9, v12, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v12, "receive_port"

    invoke-virtual {v9, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string v12, "send_host"

    invoke-virtual {v9, v12, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string v12, "send_port"

    invoke-virtual {v9, v12, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const-string v12, "user_id"

    invoke-virtual {v9, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    const-string v12, "user_passwd"

    invoke-virtual {v9, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 130
    .end local v2           #recv_host:Ljava/lang/String;
    .end local v3           #recv_port:Ljava/lang/String;
    .end local v4           #recv_uri:Ljava/net/URI;
    .end local v5           #scheme:Ljava/lang/String;
    .end local v6           #send_host:Ljava/lang/String;
    .end local v7           #send_port:Ljava/lang/String;
    .end local v8           #send_uri:Ljava/net/URI;
    .end local v10           #user_id:Ljava/lang/String;
    .end local v11           #user_passwd:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 131
    .local v1, e:Ljava/net/URISyntaxException;
    invoke-virtual {v1}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto/16 :goto_1

    .line 106
    .end local v1           #e:Ljava/net/URISyntaxException;
    .restart local v2       #recv_host:Ljava/lang/String;
    .restart local v4       #recv_uri:Ljava/net/URI;
    .restart local v5       #scheme:Ljava/lang/String;
    .restart local v8       #send_uri:Ljava/net/URI;
    .restart local v10       #user_id:Ljava/lang/String;
    .restart local v11       #user_passwd:Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v3, "pop+ssl"

    goto/16 :goto_2

    .line 108
    .restart local v3       #recv_port:Ljava/lang/String;
    .restart local v6       #send_host:Ljava/lang/String;
    :cond_2
    const-string v7, "smtp+ssl"
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method private onSetDefaultAccount(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 164
    const-string v1, "service"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, type:Ljava/lang/String;
    const-string v1, ">>> DefAccount"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSetDefaultAccount() type is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v1, "eas"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    invoke-virtual {p0, p1}, Lcom/android/email/service/DefaultAccountService;->createEasAcount(Landroid/content/Intent;)V

    .line 173
    :goto_0
    return-void

    .line 170
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/email/service/DefaultAccountService;->createOtherAccount(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private onSetDefaultAccount_oma(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 158
    const-string v0, ">>> DefAccount"

    const-string v1, "onSetDefaultAccount_oma()  "

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-direct {p0, p1}, Lcom/android/email/service/DefaultAccountService;->createOtherAccount_oma(Landroid/content/Intent;)V

    .line 160
    return-void
.end method

.method private updateAccount(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 13
    .parameter "intent"
    .parameter "context"

    .prologue
    const-wide/16 v11, -0x1

    .line 804
    const-string v9, ">>> DefAccount"

    const-string v10, "updateAccount(): Entry "

    invoke-static {v9, v10}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    const-string v9, "user_id"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 806
    .local v3, email:Ljava/lang/String;
    const-string v9, "service"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 807
    .local v8, type:Ljava/lang/String;
    const-string v9, "receive_host"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 808
    .local v6, recv_addr:Ljava/lang/String;
    const-string v9, "server_name"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 812
    .local v7, server_name:Ljava/lang/String;
    const/4 v0, 0x0

    .line 816
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    const-string v9, "eas"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 817
    if-eqz v3, :cond_0

    if-eqz v7, :cond_0

    .line 818
    invoke-static {p2, v11, v12, v7, v3}, Lcom/android/emailcommon/utility/Utility;->findExistingAccount(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 842
    :goto_0
    if-nez v0, :cond_4

    .line 843
    const-string v9, ">>> DefAccount"

    const-string v10, "updateAccount(): account is null"

    invoke-static {v9, v10}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    :cond_0
    :goto_1
    return-void

    .line 826
    :cond_1
    if-eqz v8, :cond_2

    if-eqz v8, :cond_3

    const-string v9, ""

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 827
    :cond_2
    const-string v9, ">>> DefAccount"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateAccount(): Intent is wrong. type:["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 830
    :cond_3
    if-eqz v3, :cond_0

    if-eqz v6, :cond_0

    .line 831
    invoke-static {p2, v11, v12, v6, v3}, Lcom/android/emailcommon/utility/Utility;->findExistingAccount(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    goto :goto_0

    .line 847
    :cond_4
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v5

    .line 848
    .local v5, p:Lcom/android/email/Preferences;
    invoke-virtual {v5}, Lcom/android/email/Preferences;->getAccounts()[Lcom/android/email/Account;

    move-result-object v2

    .line 849
    .local v2, acct:[Lcom/android/email/Account;
    if-eqz v0, :cond_6

    array-length v9, v2

    if-lez v9, :cond_6

    .line 850
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    array-length v9, v2

    if-ge v4, v9, :cond_6

    .line 851
    aget-object v9, v2, v4

    invoke-virtual {v9}, Lcom/android/email/Account;->getEmail()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    aget-object v9, v2, v4

    invoke-virtual {v9}, Lcom/android/email/Account;->getEmail()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    aget-object v9, v2, v4

    invoke-virtual {v9}, Lcom/android/email/Account;->getServerName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    aget-object v9, v2, v4

    invoke-virtual {v9}, Lcom/android/email/Account;->getServerName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 854
    aget-object v9, v2, v4

    invoke-virtual {v9}, Lcom/android/email/Account;->getUpdateAccount()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    aget-object v9, v2, v4

    invoke-virtual {v9}, Lcom/android/email/Account;->getUpdateAccount()Ljava/lang/String;

    move-result-object v9

    const-string v10, "true"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 856
    aget-object v9, v2, v4

    invoke-virtual {v9, v5}, Lcom/android/email/Account;->delete(Lcom/android/email/Preferences;)V

    .line 850
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 861
    .end local v4           #i:I
    :cond_6
    iget-wide v9, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 863
    .local v1, accountId:Ljava/lang/Long;
    const-string v9, "eas"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 864
    invoke-direct {p0, p1, v1, p2, v3}, Lcom/android/email/service/DefaultAccountService;->updateEasAcount(Landroid/content/Intent;Ljava/lang/Long;Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 866
    :cond_7
    invoke-direct {p0, p1, v1, p2, v3}, Lcom/android/email/service/DefaultAccountService;->updateOtherAccount(Landroid/content/Intent;Ljava/lang/Long;Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private updateEasAcount(Landroid/content/Intent;Ljava/lang/Long;Landroid/content/Context;Ljava/lang/String;)V
    .locals 33
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1093
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-object/from16 v0, p3

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v7

    .line 1096
    new-instance v13, Lcom/android/email/Account;

    move-object/from16 v0, p3

    invoke-direct {v13, v0}, Lcom/android/email/Account;-><init>(Landroid/content/Context;)V

    .line 1097
    invoke-static/range {p0 .. p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v1

    invoke-virtual {v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/email/Preferences;->setCarrierAccountId(Ljava/lang/String;)V

    .line 1100
    const/4 v6, 0x0

    .line 1102
    const/4 v5, 0x0

    .line 1106
    const/4 v3, 0x0

    .line 1107
    const/4 v2, 0x0

    .line 1108
    const-string v1, "user_passwd"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1114
    invoke-virtual {v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/emailcommon/utility/SyncScheduleData;

    move-result-object v1

    .line 1115
    const-string v8, "peak"

    invoke-virtual {v1}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakSchedule()I

    move-result v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 1116
    const-string v8, "off_peak"

    invoke-virtual {v1}, Lcom/android/emailcommon/utility/SyncScheduleData;->getOffPeakSchedule()I

    move-result v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 1117
    const-string v8, "peak_starttime"

    invoke-virtual {v1}, Lcom/android/emailcommon/utility/SyncScheduleData;->getStartMinute()I

    move-result v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 1118
    const-string v8, "peak_endtime"

    invoke-virtual {v1}, Lcom/android/emailcommon/utility/SyncScheduleData;->getEndMinute()I

    move-result v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 1119
    const-string v8, "peak_days"

    invoke-virtual {v1}, Lcom/android/emailcommon/utility/SyncScheduleData;->getPeakDay()I

    move-result v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 1120
    const-string v8, "roaming_schedule"

    invoke-virtual {v1}, Lcom/android/emailcommon/utility/SyncScheduleData;->getRoamingSchedule()I

    move-result v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 1121
    const-string v1, "period_email"

    invoke-virtual {v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncLookback()I

    move-result v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    .line 1122
    const-string v1, "retrival_size"

    invoke-virtual {v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailRetrieveSize()I

    move-result v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    .line 1123
    const-string v1, "period_calendar"

    invoke-virtual {v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->getCalendarSyncLookback()I

    move-result v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    .line 1125
    new-instance v1, Landroid/accounts/Account;

    iget-object v8, v7, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const-string v9, "com.android.exchange"

    invoke-direct {v1, v8, v9}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    const-string v8, "sync_contacts"

    const-string v9, "com.android.contacts"

    invoke-static {v1, v9}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    .line 1129
    const-string v8, "sync_calendar"

    const-string v9, "com.android.calendar"

    invoke-static {v1, v9}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v24

    .line 1131
    invoke-virtual {v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v1

    .line 1132
    const-string v8, "notify"

    and-int/lit8 v9, v1, 0x1

    const/4 v1, 0x1

    if-ne v9, v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v25

    .line 1136
    const-string v8, "vibrate"

    and-int/lit8 v9, v9, 0x2

    const/4 v1, 0x2

    if-ne v9, v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v26

    .line 1140
    const-string v8, "vibrate_when_silent"

    and-int/lit8 v1, v9, 0x40

    const/16 v9, 0x40

    if-ne v1, v9, :cond_4

    const/4 v1, 0x1

    :goto_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v27

    .line 1144
    const-string v1, "is_default"

    iget-boolean v8, v7, Lcom/android/emailcommon/provider/EmailContent$Account;->mIsDefault:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    .line 1145
    const-string v1, "account_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1146
    const-string v8, "signature"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1147
    const-string v8, "server_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1149
    const-string v8, ""

    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 1150
    if-eqz p4, :cond_d

    .line 1151
    const-string v6, "@"

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1152
    const/4 v8, 0x0

    aget-object v6, v6, v8

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 1153
    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, Lcom/android/email/Account;->setEmail(Ljava/lang/String;)V

    move-object v12, v6

    .line 1157
    :goto_3
    if-eqz v1, :cond_0

    const-string v6, ""

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1158
    :cond_0
    invoke-virtual {v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    .line 1162
    :goto_4
    :try_start_0
    iget-wide v6, v7, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeySend:J

    move-object/from16 v0, p3

    invoke-static {v0, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v6

    .line 1164
    if-eqz v6, :cond_b

    .line 1166
    const-string v1, "eas"

    iget v5, v6, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    invoke-static {v1, v5}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->getSchemeString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1167
    const-string v5, "+ssl+trustallcerts"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1168
    const/4 v3, 0x1

    .line 1169
    const/4 v2, 0x1

    move v1, v2

    move v2, v3

    .line 1174
    :goto_5
    iget-object v5, v6, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mDomain:Ljava/lang/String;

    .line 1175
    if-eqz v4, :cond_1

    const-string v3, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1176
    :cond_1
    iget-object v3, v6, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    move-object v9, v3

    move-object v10, v5

    .line 1179
    :goto_6
    const-string v3, "use_ssl"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v31

    .line 1180
    const-string v2, "trust_all"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v32

    .line 1181
    const/4 v1, 0x1

    move/from16 v0, v31

    if-ne v0, v1, :cond_7

    const/4 v1, 0x1

    move/from16 v0, v32

    if-ne v0, v1, :cond_6

    const-string v1, "eas+ssl+trustallcerts"

    move-object v2, v1

    .line 1185
    :goto_7
    if-eqz v10, :cond_8

    .line 1186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\\"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 1190
    :goto_8
    new-instance v1, Ljava/net/URI;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1196
    const-string v2, ">>> DefAccount"

    const-string v3, ">>>>>>>>>>>>> EAS UPDATE BR INTENT START<<<<<<<<<<<<<< "

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    const-string v2, ">>> DefAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "domain : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    const-string v2, ">>> DefAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "server_name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    const-string v2, ">>> DefAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "use_ssl : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    const-string v2, ">>> DefAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "trust_all : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    const-string v2, ">>> DefAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "peak : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    const-string v2, ">>> DefAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "off_peak : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    const-string v2, ">>> DefAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "peak_starttime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    const-string v2, ">>> DefAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "peak_endtime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    const-string v2, ">>> DefAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "peak_days : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    const-string v2, ">>> DefAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "roaming_schedule : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    const-string v2, ">>> DefAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "period_email : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    const-string v2, ">>> DefAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retrival_size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    const-string v2, ">>> DefAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "period_calendar : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    const-string v2, ">>> DefAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notify : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    const-string v2, ">>> DefAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sync_contacts : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    const-string v2, ">>> DefAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sync_calendar : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    const-string v2, ">>> DefAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vibrate : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    const-string v2, ">>> DefAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vibrate_when_silent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    const-string v2, ">>> DefAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "account_name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    const-string v2, ">>> DefAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "signature : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    const-string v2, ">>> DefAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "is_default : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    const-string v2, ">>> DefAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "server_name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    const-string v2, ">>> DefAccount"

    const-string v3, ">>>>>>>>>>>>> EAS UPDATE BR INTENT END<<<<<<<<<<<<<< "

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/android/email/Account;->setSenderUri(Ljava/lang/String;)V

    .line 1224
    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/android/email/Account;->setStoreUri(Ljava/lang/String;)V

    .line 1225
    invoke-virtual {v13, v11}, Lcom/android/email/Account;->setDescription(Ljava/lang/String;)V

    .line 1226
    invoke-virtual {v13, v12}, Lcom/android/email/Account;->setName(Ljava/lang/String;)V

    .line 1227
    invoke-virtual {v13, v9}, Lcom/android/email/Account;->setPasswd(Ljava/lang/String;)V

    .line 1228
    move/from16 v0, v25

    invoke-virtual {v13, v0}, Lcom/android/email/Account;->setNotifyNewMail(Z)V

    .line 1229
    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Lcom/android/email/Account;->setSignature(Ljava/lang/String;)V

    .line 1230
    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/android/email/Account;->setSyncLookbackData(I)V

    .line 1231
    move/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/android/email/Account;->setCalendarSyncLookbackData(I)V

    .line 1232
    move/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/android/email/Account;->setEmailSize(I)V

    .line 1233
    move/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/android/email/Account;->setFlagSyncContact(I)V

    .line 1234
    move/from16 v0, v24

    invoke-virtual {v13, v0}, Lcom/android/email/Account;->setFlagSyncCalendar(I)V

    .line 1235
    move/from16 v0, v26

    invoke-virtual {v13, v0}, Lcom/android/email/Account;->setVibrate(Z)V

    .line 1236
    move/from16 v0, v27

    invoke-virtual {v13, v0}, Lcom/android/email/Account;->setVibrateWhenSilent(Z)V

    .line 1237
    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Lcom/android/email/Account;->setDefault(Ljava/lang/Boolean;)V

    .line 1238
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1239
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1244
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1245
    invoke-virtual {v13, v1}, Lcom/android/email/Account;->setSyncScheduleData(Ljava/lang/String;)V

    .line 1246
    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Lcom/android/email/Account;->setServerName(Ljava/lang/String;)V

    .line 1247
    const-string v1, "true"

    invoke-virtual {v13, v1}, Lcom/android/email/Account;->setUpdateAccount(Ljava/lang/String;)V

    .line 1248
    invoke-static/range {p0 .. p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/android/email/Account;->save(Lcom/android/email/Preferences;)V

    .line 1249
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/email/Email;->setNotifyUiAccountsChanged(Z)V

    .line 1250
    :goto_9
    return-void

    .line 1132
    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1136
    :cond_3
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 1140
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 1170
    :cond_5
    :try_start_1
    const-string v5, "+ssl+"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1171
    const/4 v3, 0x1

    move v1, v2

    move v2, v3

    goto/16 :goto_5

    .line 1181
    :cond_6
    const-string v1, "eas+ssl+"

    move-object v2, v1

    goto/16 :goto_7

    :cond_7
    const-string v1, "eas"

    move-object v2, v1

    goto/16 :goto_7

    .line 1188
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    move-object v3, v1

    goto/16 :goto_8

    .line 1191
    :catch_0
    move-exception v1

    .line 1192
    invoke-virtual {v1}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_9

    :cond_9
    move-object v9, v4

    move-object v10, v5

    goto/16 :goto_6

    :cond_a
    move v1, v2

    move v2, v3

    goto/16 :goto_5

    :cond_b
    move v1, v2

    move-object v9, v4

    move-object v10, v5

    move v2, v3

    goto/16 :goto_6

    :cond_c
    move-object v11, v1

    goto/16 :goto_4

    :cond_d
    move-object v12, v6

    goto/16 :goto_3
.end method

.method private updateOtherAccount(Landroid/content/Intent;Ljava/lang/Long;Landroid/content/Context;Ljava/lang/String;)V
    .locals 41
    .parameter "intent"
    .parameter "accountId"
    .parameter "context"
    .parameter "email"

    .prologue
    .line 874
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p3

    invoke-static {v0, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v25

    .line 876
    .local v25, mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    new-instance v20, Lcom/android/email/Account;

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/email/Account;-><init>(Landroid/content/Context;)V

    .line 877
    .local v20, fromAccount:Lcom/android/email/Account;
    invoke-static/range {p0 .. p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Lcom/android/emailcommon/provider/EmailContent$Account;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/email/Preferences;->setCarrierAccountId(Ljava/lang/String;)V

    .line 881
    const-string v4, "service"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 882
    .local v3, type:Ljava/lang/String;
    const-string v4, "provider_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 885
    .local v26, provider_id:Ljava/lang/String;
    const/16 v29, 0x0

    .line 888
    .local v29, recv_addr_back:Ljava/lang/String;
    move-object/from16 v0, v25

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    move-object/from16 v0, p3

    invoke-static {v0, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v27

    .line 890
    .local v27, recvAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    if-eqz v27, :cond_0

    .line 892
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    move-object/from16 v29, v0

    .line 895
    :cond_0
    move-object/from16 v0, v25

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeySend:J

    move-object/from16 v0, p3

    invoke-static {v0, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v31

    .line 901
    .local v31, sendAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    const-string v4, "receive_host"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 902
    .local v28, recv_addr:Ljava/lang/String;
    const-string v4, "receive_port"

    const/4 v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 904
    .local v6, recv_port:I
    const-string v4, "receive_security"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 906
    .local v30, recv_security:Ljava/lang/String;
    const-string v4, "user_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 907
    .local v39, user_name:Ljava/lang/String;
    const-string v4, "user_passwd"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 909
    .local v40, user_passwd:Ljava/lang/String;
    const-string v4, "send_host"

    move-object/from16 v0, v31

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v32

    .line 910
    .local v32, send_addr:Ljava/lang/String;
    const-string v4, "send_port"

    const/4 v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 912
    .local v11, send_port:I
    const-string v4, "send_from"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 913
    .local v34, send_from:Ljava/lang/String;
    const-string v4, "send_security"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 914
    .local v35, send_security:Ljava/lang/String;
    const-string v4, "send_auth"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 915
    .local v33, send_auth:Ljava/lang/String;
    const-string v4, "sender_name"

    invoke-virtual/range {v25 .. v25}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSenderName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/String;

    .line 917
    .local v36, sender_name:Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v19

    .line 918
    .local v19, flag:I
    const-string v5, "notify"

    and-int/lit8 v19, v19, 0x1

    const/4 v4, 0x1

    move/from16 v0, v19

    if-ne v0, v4, :cond_19

    const/4 v4, 0x1

    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v22

    .line 922
    .local v22, is_notify:Z
    const-string v5, "vibrate"

    and-int/lit8 v19, v19, 0x2

    const/4 v4, 0x2

    move/from16 v0, v19

    if-ne v0, v4, :cond_1a

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v23

    .line 926
    .local v23, is_vibrate:Z
    const-string v5, "vibrate_when_silent"

    and-int/lit8 v19, v19, 0x40

    const/16 v4, 0x40

    move/from16 v0, v19

    if-ne v0, v4, :cond_1b

    const/4 v4, 0x1

    :goto_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v24

    .line 930
    .local v24, is_vibrate_when_silent:Z
    const-string v4, "is_default"

    move-object/from16 v0, v25

    iget-boolean v5, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mIsDefault:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    .line 931
    .local v21, isDefault:Ljava/lang/Boolean;
    const-string v4, "signature"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 933
    .local v37, signature:Ljava/lang/String;
    const-string v4, "account_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 935
    .local v15, account_name:Ljava/lang/String;
    if-eqz v15, :cond_1

    const-string v4, ""

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 936
    :cond_1
    const-string v38, ""

    .line 937
    .local v38, user:Ljava/lang/String;
    const-string v16, ""

    .line 938
    .local v16, domain:Ljava/lang/String;
    if-eqz p4, :cond_3

    .line 940
    const-string v4, "@"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 941
    .local v18, emailParts:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v18, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v38

    .line 942
    const-string v4, ""

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 943
    move-object/from16 v39, v38

    .line 944
    :cond_2
    move-object/from16 v0, v18

    array-length v4, v0

    const/4 v5, 0x1

    if-le v4, v5, :cond_3

    const-string v4, ""

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 945
    const/4 v4, 0x1

    aget-object v4, v18, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    .line 949
    .end local v18           #emailParts:[Ljava/lang/String;
    :cond_3
    if-eqz v16, :cond_4

    const-string v4, ""

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 950
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/email/service/DefaultAccountService;->GetAccountName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 953
    .end local v16           #domain:Ljava/lang/String;
    .end local v38           #user:Ljava/lang/String;
    :cond_4
    if-eqz v26, :cond_5

    .line 954
    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "provider_id : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    :cond_5
    if-eqz v3, :cond_6

    .line 960
    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "service : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    :cond_6
    if-eqz v28, :cond_7

    .line 962
    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "receive_host : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    :cond_7
    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "receive_port : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    if-eqz v30, :cond_8

    .line 965
    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "recv_security : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    :cond_8
    if-eqz v32, :cond_9

    .line 967
    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "send_host : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    :cond_9
    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "send_port : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    if-eqz v34, :cond_a

    .line 970
    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "send_from : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    :cond_a
    if-eqz v35, :cond_b

    .line 972
    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "send_security : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    :cond_b
    if-eqz v33, :cond_c

    .line 974
    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "send_auth : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    :cond_c
    if-eqz v36, :cond_d

    .line 976
    const-string v4, ">>> DefAccount"

    const-string v5, "sender_name : "

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    :cond_d
    if-eqz v37, :cond_e

    .line 978
    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "signature : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    :cond_e
    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "vibrate : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    const-string v4, ">>> DefAccount"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "vibrate_when_silent : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    if-eqz v28, :cond_13

    const-string v4, ""

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 983
    const-string v4, ""

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 985
    if-eqz p4, :cond_f

    .line 986
    move-object/from16 v0, v20

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setEmail(Ljava/lang/String;)V

    .line 989
    :cond_f
    if-eqz v30, :cond_1c

    .line 990
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/email/service/DefaultAccountService;->GetSecurityTypeNum(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->setSecurityFlags(I)V

    .line 994
    :goto_3
    const/4 v4, -0x1

    if-ne v6, v4, :cond_11

    .line 995
    const-string v4, "pop3"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 996
    invoke-virtual/range {v25 .. v25}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSecurityFlags()J

    move-result-wide v4

    const-wide/16 v7, 0x1

    cmp-long v4, v4, v7

    if-eqz v4, :cond_10

    invoke-virtual/range {v25 .. v25}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSecurityFlags()J

    move-result-wide v4

    const-wide/16 v7, 0x2

    cmp-long v4, v4, v7

    if-nez v4, :cond_1d

    :cond_10
    const/16 v6, 0x3e3

    .line 1003
    :cond_11
    :goto_4
    invoke-virtual/range {v25 .. v25}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSecurityFlags()J

    move-result-wide v4

    const-wide/16 v7, 0x0

    cmp-long v4, v4, v7

    if-eqz v4, :cond_12

    .line 1004
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSecurityFlags()J

    move-result-wide v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/email/service/DefaultAccountService;->GetSecurityTypeString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1008
    :cond_12
    :try_start_0
    new-instance v2, Ljava/net/URI;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1019
    .local v2, uri:Ljava/net/URI;
    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->setStoreUri(Ljava/lang/String;)V

    .line 1023
    .end local v2           #uri:Ljava/net/URI;
    :cond_13
    if-eqz v32, :cond_18

    const-string v4, ""

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 1024
    const-string v4, ""

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 1029
    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setNotifyNewMail(Z)V

    .line 1030
    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->setAddSignature(Z)V

    .line 1031
    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setSendAddr(Ljava/lang/String;)V

    .line 1032
    move-object/from16 v0, v20

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setSecurityAuth(Ljava/lang/String;)V

    .line 1033
    invoke-virtual/range {v20 .. v20}, Lcom/android/email/Account;->getEmail()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_14

    if-eqz v34, :cond_14

    const-string v4, ""

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 1035
    move-object/from16 v0, v20

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setEmail(Ljava/lang/String;)V

    .line 1038
    :cond_14
    if-eqz v35, :cond_21

    .line 1039
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/email/service/DefaultAccountService;->GetSecurityTypeNum(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->setSendSecurityFlags(I)V

    .line 1048
    :goto_5
    const/4 v4, -0x1

    if-ne v11, v4, :cond_16

    .line 1049
    invoke-virtual/range {v20 .. v20}, Lcom/android/email/Account;->getSendSecurityFlags()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_15

    invoke-virtual/range {v20 .. v20}, Lcom/android/email/Account;->getSendSecurityFlags()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_22

    :cond_15
    const/16 v11, 0x1d1

    .line 1052
    :cond_16
    :goto_6
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/android/email/Account;->setSendPort(I)V

    .line 1055
    :cond_17
    invoke-virtual/range {v20 .. v20}, Lcom/android/email/Account;->getSendSecurityFlags()I

    move-result v4

    if-eqz v4, :cond_23

    .line 1056
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "smtp+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Lcom/android/email/Account;->getSendSecurityFlags()I

    move-result v5

    int-to-long v7, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/android/email/service/DefaultAccountService;->GetSecurityTypeString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1061
    :goto_7
    if-eqz v32, :cond_18

    const-string v4, ""

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 1063
    :try_start_1
    new-instance v2, Ljava/net/URI;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v7, v2

    move-object v8, v3

    invoke-direct/range {v7 .. v14}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1072
    .restart local v2       #uri:Ljava/net/URI;
    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->setSenderUri(Ljava/lang/String;)V

    .line 1076
    .end local v2           #uri:Ljava/net/URI;
    :cond_18
    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/android/email/Account;->setDescription(Ljava/lang/String;)V

    .line 1077
    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setName(Ljava/lang/String;)V

    .line 1078
    move-object/from16 v0, v20

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setPasswd(Ljava/lang/String;)V

    .line 1079
    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setNotifyNewMail(Z)V

    .line 1080
    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->setAddSignature(Z)V

    .line 1081
    move-object/from16 v0, v20

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setSignature(Ljava/lang/String;)V

    .line 1082
    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setVibrate(Z)V

    .line 1083
    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setVibrateWhenSilent(Z)V

    .line 1084
    invoke-virtual/range {v20 .. v21}, Lcom/android/email/Account;->setDefault(Ljava/lang/Boolean;)V

    .line 1085
    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setServerName(Ljava/lang/String;)V

    .line 1087
    const-string v4, "true"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->setUpdateAccount(Ljava/lang/String;)V

    .line 1088
    invoke-static/range {p0 .. p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->save(Lcom/android/email/Preferences;)V

    .line 1089
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/android/email/Email;->setNotifyUiAccountsChanged(Z)V

    .line 1090
    :goto_8
    return-void

    .line 918
    .end local v15           #account_name:Ljava/lang/String;
    .end local v21           #isDefault:Ljava/lang/Boolean;
    .end local v22           #is_notify:Z
    .end local v23           #is_vibrate:Z
    .end local v24           #is_vibrate_when_silent:Z
    .end local v37           #signature:Ljava/lang/String;
    :cond_19
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 922
    .restart local v22       #is_notify:Z
    :cond_1a
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 926
    .restart local v23       #is_vibrate:Z
    :cond_1b
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 992
    .restart local v15       #account_name:Ljava/lang/String;
    .restart local v21       #isDefault:Ljava/lang/Boolean;
    .restart local v24       #is_vibrate_when_silent:Z
    .restart local v37       #signature:Ljava/lang/String;
    :cond_1c
    invoke-virtual/range {v25 .. v25}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSecurityFlags()J

    move-result-wide v4

    long-to-int v4, v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->setSecurityFlags(I)V

    goto/16 :goto_3

    .line 996
    :cond_1d
    const/16 v6, 0x6e

    goto/16 :goto_4

    .line 999
    :cond_1e
    invoke-virtual/range {v25 .. v25}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSecurityFlags()J

    move-result-wide v4

    const-wide/16 v7, 0x1

    cmp-long v4, v4, v7

    if-eqz v4, :cond_1f

    invoke-virtual/range {v25 .. v25}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSecurityFlags()J

    move-result-wide v4

    const-wide/16 v7, 0x2

    cmp-long v4, v4, v7

    if-nez v4, :cond_20

    :cond_1f
    const/16 v6, 0x3e1

    :goto_9
    goto/16 :goto_4

    :cond_20
    const/16 v6, 0x8f

    goto :goto_9

    .line 1012
    :catch_0
    move-exception v17

    .line 1013
    .local v17, e:Ljava/net/URISyntaxException;
    invoke-virtual/range {v17 .. v17}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_8

    .line 1041
    .end local v17           #e:Ljava/net/URISyntaxException;
    :cond_21
    invoke-virtual/range {v25 .. v25}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSecurityFlags()J

    move-result-wide v4

    long-to-int v4, v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/email/Account;->setSendSecurityFlags(I)V

    goto/16 :goto_5

    .line 1049
    :cond_22
    const/16 v11, 0x24b

    goto/16 :goto_6

    .line 1059
    :cond_23
    const-string v3, "smtp"

    goto/16 :goto_7

    .line 1065
    :catch_1
    move-exception v17

    .line 1066
    .restart local v17       #e:Ljava/net/URISyntaxException;
    invoke-virtual/range {v17 .. v17}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_8
.end method


# virtual methods
.method public GetAccountName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "domain"

    .prologue
    const/4 v4, 0x0

    .line 179
    const-string v3, "[.]"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, domainWithoutDot:[Ljava/lang/String;
    aget-object v3, v0, v4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, withOutDotDomain:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 183
    .local v1, imsi:[C
    aget-char v3, v1, v4

    invoke-static {v3}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 184
    aget-char v3, v1, v4

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    aput-char v3, v1, v4

    .line 185
    :cond_0
    new-instance v2, Ljava/lang/String;

    .end local v2           #withOutDotDomain:Ljava/lang/String;
    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    .line 186
    .restart local v2       #withOutDotDomain:Ljava/lang/String;
    return-object v2
.end method

.method public GetSecurityTypeNum(Ljava/lang/String;)I
    .locals 1
    .parameter "type"

    .prologue
    .line 202
    const-string v0, "ssl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    const/4 v0, 0x1

    .line 211
    :goto_0
    return v0

    .line 204
    :cond_0
    const-string v0, "ssl+trustallcerts"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    const/4 v0, 0x2

    goto :goto_0

    .line 206
    :cond_1
    const-string v0, "tls"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 207
    const/4 v0, 0x3

    goto :goto_0

    .line 208
    :cond_2
    const-string v0, "tls+trustallcerts"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 209
    const/4 v0, 0x4

    goto :goto_0

    .line 211
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public GetSecurityTypeString(J)Ljava/lang/String;
    .locals 2
    .parameter "type"

    .prologue
    .line 190
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 191
    const-string v0, "ssl"

    .line 198
    :goto_0
    return-object v0

    .line 192
    :cond_0
    const-wide/16 v0, 0x2

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 193
    const-string v0, "ssl+trustallcerts"

    goto :goto_0

    .line 194
    :cond_1
    const-wide/16 v0, 0x3

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 195
    const-string v0, "tls"

    goto :goto_0

    .line 196
    :cond_2
    const-wide/16 v0, 0x4

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    .line 197
    const-string v0, "tls+trustallcerts"

    goto :goto_0

    .line 198
    :cond_3
    const-string v0, ""

    goto :goto_0
.end method

.method public createEasAcount(Landroid/content/Intent;)V
    .locals 45
    .parameter "intent"

    .prologue
    .line 219
    const/16 v22, 0x0

    .line 221
    .local v22, mAccount:Lcom/android/email/Account;
    const/16 v31, 0x0

    .line 222
    .local v31, serverAddr:Ljava/lang/String;
    const/4 v8, 0x0

    .line 224
    .local v8, alias:Ljava/lang/String;
    const-string v3, "user_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 225
    .local v15, email:Ljava/lang/String;
    const-string v3, "user_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 226
    .local v43, user_name:Ljava/lang/String;
    const-string v3, "user_passwd"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 227
    .local v44, user_passwd:Ljava/lang/String;
    const-string v3, "service"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 228
    .local v39, type:Ljava/lang/String;
    const-string v3, "domain"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 229
    .local v42, user_domain:Ljava/lang/String;
    const-string v3, "server_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 230
    .local v32, server_name:Ljava/lang/String;
    const-string v3, "use_ssl"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v40

    .line 231
    .local v40, use_ssl:I
    const-string v3, "trust_all"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v38

    .line 232
    .local v38, trust_all:I
    const-string v3, "peak"

    const/4 v4, -0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    .line 233
    .local v27, peak_schedule:I
    const-string v3, "off_peak"

    const/4 v4, -0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    .line 234
    .local v23, off_peak_schedule:I
    const-string v3, "peak_starttime"

    const/16 v4, 0x1e0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v26

    .line 235
    .local v26, peakStart:I
    const-string v3, "peak_endtime"

    const/16 v4, 0x3fc

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    .line 236
    .local v25, peakEnd:I
    const-string v3, "peak_days"

    const/16 v4, 0x3e

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v24

    .line 237
    .local v24, peakDays:I
    const-string v3, "roaming_schedule"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v29

    .line 238
    .local v29, roaming:I
    const-string v3, "period_email"

    const/4 v4, -0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 239
    .local v17, email_lookback:I
    const-string v3, "retrival_size"

    const/4 v4, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v28

    .line 240
    .local v28, retrival_size:I
    const-string v3, "period_calendar"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 241
    .local v11, calendar_lookback:I
    const-string v3, "notify"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    .line 242
    .local v19, is_notify:Z
    const-string v3, "sync_contacts"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v36

    .line 243
    .local v36, sync_contacts:I
    const-string v3, "sync_calendar"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v35

    .line 244
    .local v35, sync_calendar:I
    const-string v3, "vibrate"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    .line 245
    .local v20, is_vibrate:Z
    const-string v3, "vibrate_when_silent"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    .line 246
    .local v21, is_vibrate_when_silent:Z
    const-string v3, "account_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 247
    .local v10, account_name:Ljava/lang/String;
    const-string v3, "signature"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 248
    .local v33, signature:Ljava/lang/String;
    const-string v3, "is_default"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    .line 250
    .local v18, isDefault:Ljava/lang/Boolean;
    const-string v3, "certificate_data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v12

    .line 251
    .local v12, certificate_data:[B
    const-string v3, "certificate_password"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 254
    .local v13, certificate_password:Ljava/lang/String;
    const-string v3, ">>> DefAccount"

    const-string v4, ">>>>>>>>>>>>> EAS CREATE BR INTENT START<<<<<<<<<<<<<< "

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v3, ">>> DefAccount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "service : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v3, ">>> DefAccount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "domain : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v42

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v3, ">>> DefAccount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "server_name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v3, ">>> DefAccount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "use_ssl : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v3, ">>> DefAccount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "trust_all : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v3, ">>> DefAccount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "peak : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v3, ">>> DefAccount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "off_peak : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v3, ">>> DefAccount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "peak_starttime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v3, ">>> DefAccount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "peak_endtime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v3, ">>> DefAccount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "peak_days : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v3, ">>> DefAccount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "roaming_schedule : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v3, ">>> DefAccount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "period_email : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v3, ">>> DefAccount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "retrival_size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v3, ">>> DefAccount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "period_calendar : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v3, ">>> DefAccount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notify : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v3, ">>> DefAccount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sync_contacts : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v3, ">>> DefAccount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sync_calendar : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v3, ">>> DefAccount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "vibrate : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v3, ">>> DefAccount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "vibrate_when_silent : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v3, ">>> DefAccount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "account_name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v3, ">>> DefAccount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "signature : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v3, ">>> DefAccount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "is_default : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v3, ">>> DefAccount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "server_name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    if-eqz v12, :cond_5

    const-string v3, ">>> DefAccount"

    const-string v4, "certificate_data : not null"

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :goto_0
    const-string v3, ">>> DefAccount"

    const-string v4, ">>>>>>>>>>>>> EAS CREATE BR INTENT END<<<<<<<<<<<<<< "

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    if-eqz v12, :cond_0

    if-eqz v13, :cond_0

    .line 288
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12, v13, v15}, Lcom/android/email/service/DefaultAccountService;->installCertificate(Landroid/content/Context;[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 292
    :cond_0
    if-nez v22, :cond_1

    .line 293
    new-instance v22, Lcom/android/email/Account;

    .end local v22           #mAccount:Lcom/android/email/Account;
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/Account;-><init>(Landroid/content/Context;)V

    .line 294
    .restart local v22       #mAccount:Lcom/android/email/Account;
    invoke-static/range {p0 .. p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/Preferences;->getCarrierAccount()Lcom/android/email/Account;

    move-result-object v3

    if-nez v3, :cond_1

    .line 295
    invoke-static/range {p0 .. p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v3

    invoke-virtual/range {v22 .. v22}, Lcom/android/email/Account;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/email/Preferences;->setCarrierAccountId(Ljava/lang/String;)V

    .line 299
    :cond_1
    const-string v3, ""

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 300
    if-eqz v15, :cond_4

    .line 301
    const-string v3, "@"

    invoke-virtual {v15, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 302
    .local v16, emailParts:[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v16, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v43

    .line 303
    const/4 v3, 0x1

    aget-object v3, v16, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v31

    .line 304
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lcom/android/email/Account;->setEmail(Ljava/lang/String;)V

    .line 305
    if-nez v32, :cond_2

    if-eqz v31, :cond_2

    .line 306
    move-object/from16 v32, v31

    .line 307
    :cond_2
    if-eqz v10, :cond_3

    const-string v3, ""

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    if-eqz v31, :cond_4

    .line 308
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/email/service/DefaultAccountService;->GetAccountName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 313
    .end local v16           #emailParts:[Ljava/lang/String;
    :cond_4
    const/4 v3, 0x1

    move/from16 v0, v40

    if-ne v0, v3, :cond_7

    const/4 v3, 0x1

    move/from16 v0, v38

    if-ne v0, v3, :cond_6

    :try_start_0
    const-string v30, "eas+ssl+trustallcerts"

    .line 315
    .local v30, scheme:Ljava/lang/String;
    :goto_1
    const/16 v41, 0x0

    .line 316
    .local v41, userInfo:Ljava/lang/String;
    if-eqz v42, :cond_8

    .line 317
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\\"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v44

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    .line 322
    :goto_2
    new-instance v2, Ljava/net/URI;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v41 .. v41}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    .local v2, uri:Ljava/net/URI;
    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/android/email/Account;->setSenderUri(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/android/email/Account;->setStoreUri(Ljava/lang/String;)V

    .line 330
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/email/service/DefaultAccountService;->GetAccountName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/android/email/Account;->setDescription(Ljava/lang/String;)V

    .line 331
    move-object/from16 v0, v22

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setName(Ljava/lang/String;)V

    .line 332
    move-object/from16 v0, v22

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setPasswd(Ljava/lang/String;)V

    .line 333
    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setNotifyNewMail(Z)V

    .line 334
    move-object/from16 v0, v22

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setSignature(Ljava/lang/String;)V

    .line 335
    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setSyncLookbackData(I)V

    .line 336
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Lcom/android/email/Account;->setCalendarSyncLookbackData(I)V

    .line 337
    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setEmailSize(I)V

    .line 338
    move-object/from16 v0, v22

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setFlagSyncContact(I)V

    .line 339
    move-object/from16 v0, v22

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setFlagSyncCalendar(I)V

    .line 340
    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setVibrate(Z)V

    .line 341
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setVibrateWhenSilent(Z)V

    .line 343
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setDefault(Ljava/lang/Boolean;)V

    .line 344
    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/android/email/Account;->setAddSignature(Z)V

    .line 346
    new-instance v37, Ljava/lang/StringBuffer;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuffer;-><init>()V

    .line 347
    .local v37, tempDataBuf:Ljava/lang/StringBuffer;
    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 352
    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v34

    .line 353
    .local v34, syncScheduleData:Ljava/lang/String;
    move-object/from16 v0, v22

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setSyncScheduleData(Ljava/lang/String;)V

    .line 354
    const-string v3, "false"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/android/email/Account;->setUpdateAccount(Ljava/lang/String;)V

    .line 355
    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setServerName(Ljava/lang/String;)V

    .line 356
    invoke-static/range {p0 .. p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/android/email/Account;->save(Lcom/android/email/Preferences;)V

    .line 357
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/email/Email;->setNotifyUiAccountsChanged(Z)V

    .line 359
    .end local v2           #uri:Ljava/net/URI;
    .end local v30           #scheme:Ljava/lang/String;
    .end local v34           #syncScheduleData:Ljava/lang/String;
    .end local v37           #tempDataBuf:Ljava/lang/StringBuffer;
    .end local v41           #userInfo:Ljava/lang/String;
    :goto_3
    return-void

    .line 282
    :cond_5
    const-string v3, ">>> DefAccount"

    const-string v4, "certificate_data : null"

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 313
    :cond_6
    :try_start_1
    const-string v30, "eas+ssl+"

    goto/16 :goto_1

    :cond_7
    const-string v30, "eas"

    goto/16 :goto_1

    .line 319
    .restart local v30       #scheme:Ljava/lang/String;
    .restart local v41       #userInfo:Ljava/lang/String;
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v44

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v41

    goto/16 :goto_2

    .line 323
    .end local v30           #scheme:Ljava/lang/String;
    .end local v41           #userInfo:Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 324
    .local v14, e:Ljava/net/URISyntaxException;
    invoke-virtual {v14}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_3
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 800
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 3
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 138
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 139
    if-eqz p1, :cond_0

    .line 140
    const-string v0, ">>> DefAccount"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Get"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    invoke-direct {p0}, Lcom/android/email/service/DefaultAccountService;->onGetDefaultAccount()V

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Set_oma"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    invoke-direct {p0, p1}, Lcom/android/email/service/DefaultAccountService;->onSetDefaultAccount_oma(Landroid/content/Intent;)V

    goto :goto_0

    .line 145
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Set"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 146
    invoke-direct {p0, p1}, Lcom/android/email/service/DefaultAccountService;->onSetDefaultAccount(Landroid/content/Intent;)V

    goto :goto_0

    .line 147
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-direct {p0, p1, p0}, Lcom/android/email/service/DefaultAccountService;->updateAccount(Landroid/content/Intent;Landroid/content/Context;)V

    goto :goto_0
.end method

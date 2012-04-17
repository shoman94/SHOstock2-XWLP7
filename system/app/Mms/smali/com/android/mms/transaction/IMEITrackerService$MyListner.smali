.class Lcom/android/mms/transaction/IMEITrackerService$MyListner;
.super Landroid/telephony/PhoneStateListener;
.source "IMEITrackerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/IMEITrackerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyListner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/IMEITrackerService;


# direct methods
.method private constructor <init>(Lcom/android/mms/transaction/IMEITrackerService;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/android/mms/transaction/IMEITrackerService$MyListner;->this$0:Lcom/android/mms/transaction/IMEITrackerService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/transaction/IMEITrackerService;Lcom/android/mms/transaction/IMEITrackerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 248
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/IMEITrackerService$MyListner;-><init>(Lcom/android/mms/transaction/IMEITrackerService;)V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 13
    .parameter "serviceState"

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x1

    .line 252
    const-string v8, "IMEITrackerService"

    const-string v9, "onServiceStateChanged entered"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v8, p0, Lcom/android/mms/transaction/IMEITrackerService$MyListner;->this$0:Lcom/android/mms/transaction/IMEITrackerService;

    const-string v9, "phone"

    invoke-virtual {v8, v9}, Lcom/android/mms/transaction/IMEITrackerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 257
    .local v7, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v8

    if-eq v8, v11, :cond_4

    .line 258
    const/4 v1, 0x0

    .line 261
    .local v1, i:I
    :cond_0
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v8

    if-eq v8, v12, :cond_1

    .line 263
    const-wide/16 v8, 0x3e8

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 264
    const-string v8, "IMEITrackerService"

    const-string v9, "SIM is not ready"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :goto_0
    add-int/lit8 v1, v1, 0x1

    .line 269
    const/16 v8, 0x64

    if-le v1, v8, :cond_0

    .line 277
    :cond_1
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v8

    if-ne v8, v12, :cond_4

    .line 279
    const-string v8, "IMEITrackerService"

    const-string v9, "SIM is ready"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v8, p0, Lcom/android/mms/transaction/IMEITrackerService$MyListner;->this$0:Lcom/android/mms/transaction/IMEITrackerService;

    invoke-virtual {v8}, Lcom/android/mms/transaction/IMEITrackerService;->createMessage()Ljava/lang/String;

    move-result-object v4

    .line 283
    .local v4, message:Ljava/lang/String;
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    if-nez v8, :cond_4

    .line 287
    iget-object v8, p0, Lcom/android/mms/transaction/IMEITrackerService$MyListner;->this$0:Lcom/android/mms/transaction/IMEITrackerService;

    #calls: Lcom/android/mms/transaction/IMEITrackerService;->getServerNumbFromLocalSharePref()Ljava/lang/String;
    invoke-static {v8}, Lcom/android/mms/transaction/IMEITrackerService;->access$100(Lcom/android/mms/transaction/IMEITrackerService;)Ljava/lang/String;

    move-result-object v5

    .line 288
    .local v5, serverNumber:Ljava/lang/String;
    const-string v8, "NULL"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 289
    const-string v5, "+918527121333"

    .line 290
    iget-object v8, p0, Lcom/android/mms/transaction/IMEITrackerService$MyListner;->this$0:Lcom/android/mms/transaction/IMEITrackerService;

    const-string v9, "+918527121333"

    #calls: Lcom/android/mms/transaction/IMEITrackerService;->updateServerNumbToLocalSharePref(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/mms/transaction/IMEITrackerService;->access$200(Lcom/android/mms/transaction/IMEITrackerService;Ljava/lang/String;)V

    .line 293
    :cond_2
    const-string v8, "IMEITrackerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "serverNumber : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/android/mms/transaction/IMEITrackerService;->IMSI_new:Ljava/lang/String;

    .line 297
    const-string v8, "IMEITrackerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IMSI_new"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/mms/transaction/IMEITrackerService;->IMSI_new:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :try_start_1
    const-string v8, "samsungimeitrack"

    invoke-static {v8, v4}, Lcom/android/mms/transaction/IMEITrackerService;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/android/mms/transaction/IMEITrackerService;->message_encrypted:Ljava/lang/String;

    .line 301
    const-string v8, "IMEITrackerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "message_encrypted : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/mms/transaction/IMEITrackerService;->message_encrypted:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 306
    :goto_1
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 307
    .local v3, isIMSIsaved:Ljava/lang/Boolean;
    const/4 v2, -0x1

    .line 308
    .local v2, index:I
    iget-object v8, p0, Lcom/android/mms/transaction/IMEITrackerService$MyListner;->this$0:Lcom/android/mms/transaction/IMEITrackerService;

    iget-object v8, v8, Lcom/android/mms/transaction/IMEITrackerService;->insertedSimRecordList:Ljava/util/ArrayList;

    if-eqz v8, :cond_3

    .line 309
    const/4 v6, 0x0

    .local v6, simOrder:I
    :goto_2
    iget-object v8, p0, Lcom/android/mms/transaction/IMEITrackerService$MyListner;->this$0:Lcom/android/mms/transaction/IMEITrackerService;

    iget-object v8, v8, Lcom/android/mms/transaction/IMEITrackerService;->insertedSimRecordList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_3

    .line 310
    sget-object v9, Lcom/android/mms/transaction/IMEITrackerService;->IMSI_new:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/mms/transaction/IMEITrackerService$MyListner;->this$0:Lcom/android/mms/transaction/IMEITrackerService;

    iget-object v8, v8, Lcom/android/mms/transaction/IMEITrackerService;->insertedSimRecordList:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 311
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 312
    move v2, v6

    .line 313
    const-string v8, "IMEITrackerService"

    const-string v9, "Current Sim\'s IMSI value is already stored"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    .end local v6           #simOrder:I
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_6

    sget-object v8, Lcom/android/mms/transaction/IMEITrackerService;->messagePass:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_6

    sget v8, Lcom/android/mms/transaction/IMEITrackerService;->msgSendingAttempt:I

    const/4 v9, 0x3

    if-ge v8, v9, :cond_6

    .line 319
    sget v8, Lcom/android/mms/transaction/IMEITrackerService;->msgSendingAttempt:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/android/mms/transaction/IMEITrackerService;->msgSendingAttempt:I

    .line 320
    iget-object v8, p0, Lcom/android/mms/transaction/IMEITrackerService$MyListner;->this$0:Lcom/android/mms/transaction/IMEITrackerService;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IMEI "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/mms/transaction/IMEITrackerService;->message_encrypted:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/android/mms/transaction/IMEITrackerService;->sendSMS(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v8, v5, v9}, Lcom/android/mms/transaction/IMEITrackerService;->access$300(Lcom/android/mms/transaction/IMEITrackerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    sput-object v8, Lcom/android/mms/transaction/IMEITrackerService;->messagePass:Ljava/lang/Boolean;

    .line 333
    .end local v1           #i:I
    .end local v2           #index:I
    .end local v3           #isIMSIsaved:Ljava/lang/Boolean;
    .end local v4           #message:Ljava/lang/String;
    .end local v5           #serverNumber:Ljava/lang/String;
    :cond_4
    :goto_3
    const-string v8, "IMEITrackerService"

    const-string v9, "onServiceStateChanged Exits"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 335
    return-void

    .line 265
    .restart local v1       #i:I
    :catch_0
    move-exception v0

    .line 266
    .local v0, e:Ljava/lang/Exception;
    const-string v8, "IMEITrackerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Thread sleep exception : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 303
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v4       #message:Ljava/lang/String;
    .restart local v5       #serverNumber:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 304
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v8, "IMEITrackerService"

    const-string v9, "Native layer exception found"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 309
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #index:I
    .restart local v3       #isIMSIsaved:Ljava/lang/Boolean;
    .restart local v6       #simOrder:I
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 324
    .end local v6           #simOrder:I
    :cond_6
    const/4 v8, -0x1

    if-eq v2, v8, :cond_4

    .line 325
    iget-object v8, p0, Lcom/android/mms/transaction/IMEITrackerService$MyListner;->this$0:Lcom/android/mms/transaction/IMEITrackerService;

    iget-object v8, v8, Lcom/android/mms/transaction/IMEITrackerService;->insertedSimRecordList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 326
    iget-object v8, p0, Lcom/android/mms/transaction/IMEITrackerService$MyListner;->this$0:Lcom/android/mms/transaction/IMEITrackerService;

    iget-object v8, v8, Lcom/android/mms/transaction/IMEITrackerService;->insertedSimRecordList:Ljava/util/ArrayList;

    sget-object v9, Lcom/android/mms/transaction/IMEITrackerService;->IMSI_new:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    iget-object v8, p0, Lcom/android/mms/transaction/IMEITrackerService$MyListner;->this$0:Lcom/android/mms/transaction/IMEITrackerService;

    iget-object v9, p0, Lcom/android/mms/transaction/IMEITrackerService$MyListner;->this$0:Lcom/android/mms/transaction/IMEITrackerService;

    iget-object v9, v9, Lcom/android/mms/transaction/IMEITrackerService;->insertedSimRecordList:Ljava/util/ArrayList;

    #calls: Lcom/android/mms/transaction/IMEITrackerService;->updateRecord(Ljava/util/ArrayList;)V
    invoke-static {v8, v9}, Lcom/android/mms/transaction/IMEITrackerService;->access$400(Lcom/android/mms/transaction/IMEITrackerService;Ljava/util/ArrayList;)V

    goto :goto_3
.end method

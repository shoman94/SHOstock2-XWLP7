.class final Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;
.super Landroid/os/Handler;
.source "SmsReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/SmsReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/SmsReceiverService;


# direct methods
.method public constructor <init>(Lcom/android/mms/transaction/SmsReceiverService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    .line 210
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 211
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v10, 0x0

    .line 219
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 220
    .local v5, serviceId:I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    .line 222
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 224
    const-string v7, "Mms/SmsReceiverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[SMS]Receiver handleMessage : Action ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, action:Ljava/lang/String;
    const-string v7, "errorCode"

    invoke-virtual {v2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 233
    .local v1, error:I
    iget-object v7, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 237
    .local v6, sharedpref:Landroid/content/SharedPreferences;
    const-string v7, "com.android.mms.transaction.MESSAGE_SENT"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 238
    iget-object v7, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->handleSmsSent(Landroid/content/Intent;I)V
    invoke-static {v7, v2, v1}, Lcom/android/mms/transaction/SmsReceiverService;->access$000(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;I)V

    .line 340
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #error:I
    .end local v6           #sharedpref:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    invoke-static {v7, v5}, Lcom/android/mms/transaction/SmsReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 341
    return-void

    .line 239
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #error:I
    .restart local v6       #sharedpref:Landroid/content/SharedPreferences;
    :cond_1
    const-string v7, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 240
    iget-object v7, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->handleSmsReceived(Landroid/content/Intent;I)V
    invoke-static {v7, v2, v1}, Lcom/android/mms/transaction/SmsReceiverService;->access$100(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;I)V

    goto :goto_0

    .line 241
    :cond_2
    const-string v7, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 242
    iget-object v7, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->handleBootCompleted()V
    invoke-static {v7}, Lcom/android/mms/transaction/SmsReceiverService;->access$200(Lcom/android/mms/transaction/SmsReceiverService;)V

    goto :goto_0

    .line 243
    :cond_3
    const-string v7, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 244
    iget-object v7, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->handleServiceStateChanged(Landroid/content/Intent;)V
    invoke-static {v7, v2}, Lcom/android/mms/transaction/SmsReceiverService;->access$300(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V

    goto :goto_0

    .line 245
    :cond_4
    const-string v7, "com.android.mms.transaction.SEND_MESSAGE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 246
    iget-object v7, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->handleSendMessage()V
    invoke-static {v7}, Lcom/android/mms/transaction/SmsReceiverService;->access$400(Lcom/android/mms/transaction/SmsReceiverService;)V

    goto :goto_0

    .line 249
    :cond_5
    const-string v7, "android.provider.Telephony.CB_RECEIVED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "android.provider.Telephony.SMS_CB_RECEIVED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 251
    :cond_6
    iget-object v7, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->handleSmsCbReceived(Landroid/content/Intent;Landroid/content/SharedPreferences;)V
    invoke-static {v7, v2, v6}, Lcom/android/mms/transaction/SmsReceiverService;->access$500(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 252
    :cond_7
    const-string v7, "android.provider.Telephony.SET_CB_ERR_RECEIVED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 253
    iget-object v7, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->handleErrCodeForSetCbReceived(Landroid/content/Intent;)V
    invoke-static {v7, v2}, Lcom/android/mms/transaction/SmsReceiverService;->access$600(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V

    goto :goto_0

    .line 254
    :cond_8
    const-string v7, "android.provider.Telephony.GET_CB_ERR_RECEIVED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 255
    iget-object v7, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->handleErrCodeForGetCbReceived(Landroid/content/Intent;)V
    invoke-static {v7, v2}, Lcom/android/mms/transaction/SmsReceiverService;->access$700(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V

    goto :goto_0

    .line 256
    :cond_9
    const-string v7, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 257
    iget-object v7, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->handleSIMStatus(Landroid/content/Intent;Landroid/content/SharedPreferences;)V
    invoke-static {v7, v2, v6}, Lcom/android/mms/transaction/SmsReceiverService;->access$800(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 258
    :cond_a
    const-string v7, "android.provider.Telephony.CB_SETTINGS_AVAILABLE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 259
    iget-object v7, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->handleCbSettingsAvailable(Landroid/content/SharedPreferences;)V
    invoke-static {v7, v6}, Lcom/android/mms/transaction/SmsReceiverService;->access$900(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/SharedPreferences;)V

    goto/16 :goto_0

    .line 263
    :cond_b
    const-string v7, "android.provider.Telephony.GET_SMSC"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 264
    iget-object v7, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->handleSmsServiceCenter(Landroid/content/Intent;)V
    invoke-static {v7, v2}, Lcom/android/mms/transaction/SmsReceiverService;->access$1000(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 268
    :cond_c
    const-string v7, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 270
    invoke-static {v2}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v4

    .line 272
    .local v4, msgs:[Landroid/telephony/SmsMessage;
    iget-object v7, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    iget-object v8, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->storeMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)Landroid/net/Uri;
    invoke-static {v7, v8, v4, v1}, Lcom/android/mms/transaction/SmsReceiverService;->access$1100(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Context;[Landroid/telephony/SmsMessage;I)Landroid/net/Uri;

    move-result-object v3

    .line 274
    .local v3, messageUri:Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 275
    iget-object v7, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    const/4 v8, 0x1

    invoke-static {v7, v8, v10}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;ZZ)V

    goto/16 :goto_0

    .line 281
    .end local v3           #messageUri:Landroid/net/Uri;
    .end local v4           #msgs:[Landroid/telephony/SmsMessage;
    :cond_d
    const-string v7, "com.android.internal.policy.impl.Keyguard.PCW_LOCKED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 283
    iget-object v7, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->handlePCWLockMessage(Z)V
    invoke-static {v7, v10}, Lcom/android/mms/transaction/SmsReceiverService;->access$1200(Lcom/android/mms/transaction/SmsReceiverService;Z)V

    goto/16 :goto_0
.end method

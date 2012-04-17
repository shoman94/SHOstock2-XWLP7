.class Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC;
.super Lcom/android/email/Email$Z7ConnectionListener;
.source "AccountSetupAccountTypeForSeven.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyListenerForGAC"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 959
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    .line 960
    invoke-direct {p0, p2}, Lcom/android/email/Email$Z7ConnectionListener;-><init>(Landroid/os/Handler;)V

    .line 961
    return-void
.end method


# virtual methods
.method public onCallback(Lcom/seven/Z7/common/Z7ServiceCallback;)V
    .locals 9
    .parameter "callback"

    .prologue
    .line 966
    invoke-virtual {p1}, Lcom/seven/Z7/common/Z7ServiceCallback;->getSystemCallbackType()Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    move-result-object v0

    .line 967
    .local v0, callbackType:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;
    if-eqz v0, :cond_0

    .line 968
    sget-object v5, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$11;->$SwitchMap$com$seven$Z7$shared$Z7ServiceConstants$SystemCallbackType:[I

    invoke-virtual {v0}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1050
    :cond_0
    :goto_0
    return-void

    .line 970
    :pswitch_0
    new-instance v3, Lcom/seven/util/Z7Result;

    invoke-virtual {p1}, Lcom/seven/Z7/common/Z7ServiceCallback;->getResultCode()I

    move-result v5

    invoke-direct {v3, v5}, Lcom/seven/util/Z7Result;-><init>(I)V

    .line 971
    .local v3, result:Lcom/seven/util/Z7Result;
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    #calls: Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->stopConnectionTimeOut()V
    invoke-static {v5}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->access$1700(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V

    .line 972
    invoke-static {v3}, Lcom/seven/util/Z7Result;->Z7_SUCCEEDED(Lcom/seven/util/Z7Result;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 973
    invoke-virtual {p1}, Lcom/seven/Z7/common/Z7ServiceCallback;->getObject()Ljava/lang/Object;

    move-result-object v4

    .line 974
    .local v4, ser:Ljava/lang/Object;
    new-instance v2, Lcom/seven/Z7/common/provisioning/Z7ProvisioningResponse;

    check-cast v4, Lcom/seven/util/IntArrayMap;

    .end local v4           #ser:Ljava/lang/Object;
    invoke-direct {v2, v4}, Lcom/seven/Z7/common/provisioning/Z7ProvisioningResponse;-><init>(Lcom/seven/util/IntArrayMap;)V

    .line 976
    .local v2, response:Lcom/seven/Z7/common/provisioning/Z7ProvisioningResponse;
    invoke-virtual {v2}, Lcom/seven/Z7/common/provisioning/Z7ProvisioningResponse;->isImScope()Z

    move-result v5

    if-nez v5, :cond_0

    .line 979
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    #calls: Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->addAccountForSeven()Z
    invoke-static {v5}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->access$100(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 981
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    #calls: Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->checkDuplicationAccount()V
    invoke-static {v5}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->access$1800(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V

    .line 982
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    #calls: Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->changePrefToPremiumConnector()V
    invoke-static {v5}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->access$1900(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V

    goto :goto_0

    .line 983
    .end local v2           #response:Lcom/seven/Z7/common/provisioning/Z7ProvisioningResponse;
    :cond_1
    invoke-virtual {p1}, Lcom/seven/Z7/common/Z7ServiceCallback;->getErrorCode()I

    move-result v5

    sget-object v6, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->Z7_ERR_SUBSCRIPTION_EXPIRED:Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;

    invoke-virtual {v6}, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->getValue()I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 985
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    #calls: Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->dismissProgressDialog()V
    invoke-static {v5}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->access$2000(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V

    .line 988
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    const/16 v6, 0x2712

    invoke-virtual {v5, v6}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->showDialog(I)V

    goto :goto_0

    .line 991
    :cond_2
    invoke-virtual {p1}, Lcom/seven/Z7/common/Z7ServiceCallback;->getErrorCode()I

    move-result v5

    sget-object v6, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->Z7_ERR_SERVICE_SUBSCRIPTION_REQUIRED:Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;

    invoke-virtual {v6}, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->getValue()I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 993
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    #calls: Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->dismissProgressDialog()V
    invoke-static {v5}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->access$2100(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V

    .line 996
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    const/16 v6, 0x2713

    invoke-virtual {v5, v6}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->showDialog(I)V

    goto :goto_0

    .line 1000
    :cond_3
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    #calls: Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->dismissProgressDialog()V
    invoke-static {v5}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->access$2200(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V

    .line 1001
    sget-object v5, Lcom/seven/util/Z7Result;->Z7_E_TIMEOUT:Lcom/seven/util/Z7Result;

    invoke-virtual {v3, v5}, Lcom/seven/util/Z7Result;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1002
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    const-string v6, ""

    sget-object v7, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->Z7_ERR_SEND_TIMEDOUT:Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;

    invoke-virtual {v7}, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->getValue()I

    move-result v7

    invoke-static {v7}, Lcom/seven/Z7/shared/ANSharedCommon;->getErrorText(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC$1;

    invoke-direct {v8, p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC$1;-><init>(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC;)V

    #calls: Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->showPopupReport(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    invoke-static {v5, v6, v7, v8}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->access$2300(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 1014
    :cond_4
    invoke-virtual {p1}, Lcom/seven/Z7/common/Z7ServiceCallback;->getErrorCode()I

    move-result v5

    sget-object v6, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->Z7_ERR_NO_AVAILABLE_CONNECTORS:Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;

    invoke-virtual {v6}, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->getValue()I

    move-result v6

    if-ne v5, v6, :cond_5

    .line 1016
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    const v7, 0x7f0804af

    invoke-virtual {v6, v7}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    const v8, 0x7f0804b0

    invoke-virtual {v7, v8}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC$2;

    invoke-direct {v8, p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC$2;-><init>(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC;)V

    #calls: Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->showPopupReport(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    invoke-static {v5, v6, v7, v8}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->access$2400(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 1027
    :cond_5
    const/4 v1, 0x0

    .line 1028
    .local v1, errorText:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/seven/Z7/common/Z7ServiceCallback;->hasErrorText()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1029
    invoke-virtual {p1}, Lcom/seven/Z7/common/Z7ServiceCallback;->getErrorText()Ljava/lang/String;

    move-result-object v1

    .line 1037
    :goto_1
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    const-string v6, ""

    new-instance v7, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC$3;

    invoke-direct {v7, p0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC$3;-><init>(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC;)V

    #calls: Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->showPopupReport(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    invoke-static {v5, v6, v1, v7}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->access$2500(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 1030
    :cond_6
    invoke-virtual {p1}, Lcom/seven/Z7/common/Z7ServiceCallback;->hasErrorCode()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1031
    invoke-virtual {p1}, Lcom/seven/Z7/common/Z7ServiceCallback;->getErrorCode()I

    move-result v5

    invoke-static {v5}, Lcom/seven/Z7/shared/ANSharedCommon;->getErrorText(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1034
    :cond_7
    const v5, 0x7f080438

    invoke-static {v5}, Lcom/seven/Z7/shared/ANSharedCommon;->fetchString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 968
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

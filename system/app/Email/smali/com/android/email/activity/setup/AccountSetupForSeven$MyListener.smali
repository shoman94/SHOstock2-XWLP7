.class Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;
.super Lcom/android/email/Email$Z7ConnectionListener;
.source "AccountSetupForSeven.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSetupForSeven;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/setup/AccountSetupForSeven;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 1040
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    .line 1041
    invoke-direct {p0, p2}, Lcom/android/email/Email$Z7ConnectionListener;-><init>(Landroid/os/Handler;)V

    .line 1042
    return-void
.end method


# virtual methods
.method public onCallback(Landroid/os/Bundle;)V
    .locals 9
    .parameter "callback"

    .prologue
    const v8, 0x7f08049b

    const v7, 0x7f08049a

    .line 1046
    const-string v4, "event-id"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1047
    .local v3, what:I
    invoke-static {v3}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->fromId(I)Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    move-result-object v0

    .line 1049
    .local v0, callbackType:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;
    const-string v4, "AccountSetupForSeven>>MyListener>>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCallback() ---"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " what:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\tresult:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "result"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    const/16 v4, 0x63

    if-ne v3, v4, :cond_1

    .line 1057
    const-string v4, "id"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 1059
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    invoke-virtual {v4}, Lcom/android/email/activity/setup/AccountSetupForSeven;->finish()V

    .line 1060
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    #calls: Lcom/android/email/activity/setup/AccountSetupForSeven;->setISPServer()Z
    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSetupForSeven;->access$700(Lcom/android/email/activity/setup/AccountSetupForSeven;)Z

    .line 1132
    :cond_0
    :goto_0
    return-void

    .line 1062
    :cond_1
    if-eqz v0, :cond_0

    .line 1063
    sget-object v4, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_PROVISIONING_SUCCESS:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    if-ne v0, v4, :cond_3

    .line 1064
    const-string v4, "result"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 1065
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    #calls: Lcom/android/email/activity/setup/AccountSetupForSeven;->registerPremiumAccount()V
    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSetupForSeven;->access$800(Lcom/android/email/activity/setup/AccountSetupForSeven;)V

    goto :goto_0

    .line 1067
    :cond_2
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    #calls: Lcom/android/email/activity/setup/AccountSetupForSeven;->invalidateUrl()V
    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSetupForSeven;->access$900(Lcom/android/email/activity/setup/AccountSetupForSeven;)V

    goto :goto_0

    .line 1069
    :cond_3
    sget-object v4, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_PROVISIONING_FAILED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    if-ne v0, v4, :cond_0

    .line 1070
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    #calls: Lcom/android/email/activity/setup/AccountSetupForSeven;->showingPopupDialog()Z
    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSetupForSeven;->access$1000(Lcom/android/email/activity/setup/AccountSetupForSeven;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1074
    const-string v4, "result"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->Z7_ERR_SUBSCRIPTION_EXPIRED:Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;

    invoke-virtual {v5}, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->getValue()I

    move-result v5

    if-ne v4, v5, :cond_4

    .line 1076
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    const/16 v5, 0x2712

    invoke-virtual {v4, v5}, Lcom/android/email/activity/setup/AccountSetupForSeven;->showDialog(I)V

    goto :goto_0

    .line 1077
    :cond_4
    const-string v4, "result"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->Z7_ERR_LOGIN_FAILED_CE:Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;

    invoke-virtual {v5}, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->getValue()I

    move-result v5

    if-ne v4, v5, :cond_9

    .line 1079
    const-string v4, "result"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/seven/Z7/shared/ANSharedCommon;->getErrorTitle(I)Ljava/lang/String;

    move-result-object v2

    .line 1080
    .local v2, title:Ljava/lang/String;
    const-string v4, "obj"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1082
    .local v1, message:Ljava/lang/String;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_6

    .line 1083
    :cond_5
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    invoke-virtual {v4, v7}, Lcom/android/email/activity/setup/AccountSetupForSeven;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1085
    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_8

    .line 1086
    :cond_7
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    invoke-virtual {v4, v8}, Lcom/android/email/activity/setup/AccountSetupForSeven;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1089
    :cond_8
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    new-instance v5, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener$1;

    invoke-direct {v5, p0}, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener$1;-><init>(Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;)V

    #calls: Lcom/android/email/activity/setup/AccountSetupForSeven;->showPopupReport(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    invoke-static {v4, v2, v1, v5}, Lcom/android/email/activity/setup/AccountSetupForSeven;->access$1100(Lcom/android/email/activity/setup/AccountSetupForSeven;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 1095
    .end local v1           #message:Ljava/lang/String;
    .end local v2           #title:Ljava/lang/String;
    :cond_9
    const-string v4, "result"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->Z7_ERR_SUBSCRIPTION_TRIALS_NOT_ACCEPTED:Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;

    invoke-virtual {v5}, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->getValue()I

    move-result v5

    if-ne v4, v5, :cond_a

    .line 1097
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    const/16 v5, 0x2714

    invoke-virtual {v4, v5}, Lcom/android/email/activity/setup/AccountSetupForSeven;->showDialog(I)V

    goto/16 :goto_0

    .line 1098
    :cond_a
    const-string v4, "result"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->Z7_ERR_SUBSCRIPTION_LIMIT_EXCEEDED:Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;

    invoke-virtual {v5}, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->getValue()I

    move-result v5

    if-ne v4, v5, :cond_b

    .line 1100
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    const/16 v5, 0x2715

    invoke-virtual {v4, v5}, Lcom/android/email/activity/setup/AccountSetupForSeven;->showDialog(I)V

    goto/16 :goto_0

    .line 1101
    :cond_b
    const-string v4, "result"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->Z7_ERR_SERVICE_SUBSCRIPTION_REQUIRED:Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;

    invoke-virtual {v5}, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->getValue()I

    move-result v5

    if-ne v4, v5, :cond_c

    .line 1103
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    const/16 v5, 0x2713

    invoke-virtual {v4, v5}, Lcom/android/email/activity/setup/AccountSetupForSeven;->showDialog(I)V

    goto/16 :goto_0

    .line 1105
    :cond_c
    const-string v4, "result"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/seven/Z7/shared/ANSharedCommon;->getErrorTitle(I)Ljava/lang/String;

    move-result-object v2

    .line 1106
    .restart local v2       #title:Ljava/lang/String;
    const-string v4, "obj"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1108
    .restart local v1       #message:Ljava/lang/String;
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_e

    .line 1109
    :cond_d
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    invoke-virtual {v4, v7}, Lcom/android/email/activity/setup/AccountSetupForSeven;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1111
    :cond_e
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_10

    .line 1112
    :cond_f
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    invoke-virtual {v4, v8}, Lcom/android/email/activity/setup/AccountSetupForSeven;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1115
    :cond_10
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupForSeven;

    new-instance v5, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener$2;

    invoke-direct {v5, p0}, Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener$2;-><init>(Lcom/android/email/activity/setup/AccountSetupForSeven$MyListener;)V

    #calls: Lcom/android/email/activity/setup/AccountSetupForSeven;->showPopupReport(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    invoke-static {v4, v2, v1, v5}, Lcom/android/email/activity/setup/AccountSetupForSeven;->access$1200(Lcom/android/email/activity/setup/AccountSetupForSeven;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0
.end method

.class Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListener;
.super Lcom/android/email/Email$Z7ConnectionListener;
.source "AccountSetupAccountTypeForSeven.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 900
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    .line 901
    invoke-direct {p0, p2}, Lcom/android/email/Email$Z7ConnectionListener;-><init>(Landroid/os/Handler;)V

    .line 902
    return-void
.end method


# virtual methods
.method public onCallback(Landroid/os/Bundle;)V
    .locals 7
    .parameter "callback"

    .prologue
    .line 906
    const-string v4, "event-id"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 907
    .local v3, what:I
    invoke-static {v3}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->fromId(I)Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    move-result-object v0

    .line 909
    .local v0, callbackType:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;
    const-string v4, "###"

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

    .line 911
    if-eqz v0, :cond_0

    .line 912
    sget-object v4, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_PROVISIONING_FAILED:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    if-ne v0, v4, :cond_0

    .line 913
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    #calls: Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->showingPopupDialog()Z
    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->access$1300(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 955
    :cond_0
    :goto_0
    return-void

    .line 915
    :cond_1
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    #calls: Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->dismissProgressDialog()V
    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->access$1400(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V

    .line 916
    const-string v4, "result"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->Z7_ERR_SUBSCRIPTION_EXPIRED:Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;

    invoke-virtual {v5}, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->getValue()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 918
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    const/16 v5, 0x2712

    invoke-virtual {v4, v5}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->showDialog(I)V

    goto :goto_0

    .line 919
    :cond_2
    const-string v4, "result"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->Z7_ERR_LOGIN_FAILED_CE:Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;

    invoke-virtual {v5}, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->getValue()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 921
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    const-string v5, "subject"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "message"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->showPopupReport(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5, v6}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->access$1500(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 923
    :cond_3
    const-string v4, "result"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->Z7_ERR_SUBSCRIPTION_TRIALS_NOT_ACCEPTED:Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;

    invoke-virtual {v5}, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->getValue()I

    move-result v5

    if-ne v4, v5, :cond_4

    .line 925
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    const/16 v5, 0x2714

    invoke-virtual {v4, v5}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->showDialog(I)V

    goto :goto_0

    .line 926
    :cond_4
    const-string v4, "result"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->Z7_ERR_SUBSCRIPTION_LIMIT_EXCEEDED:Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;

    invoke-virtual {v5}, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->getValue()I

    move-result v5

    if-ne v4, v5, :cond_5

    .line 928
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    const/16 v5, 0x2715

    invoke-virtual {v4, v5}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->showDialog(I)V

    goto :goto_0

    .line 929
    :cond_5
    const-string v4, "result"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->Z7_ERR_SERVICE_SUBSCRIPTION_REQUIRED:Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;

    invoke-virtual {v5}, Lcom/seven/Z7/util/Z7ErrorCode2$Z7ErrorCode;->getValue()I

    move-result v5

    if-ne v4, v5, :cond_6

    .line 931
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    const/16 v5, 0x2713

    invoke-virtual {v4, v5}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->showDialog(I)V

    goto :goto_0

    .line 933
    :cond_6
    const-string v4, "result"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/seven/Z7/shared/ANSharedCommon;->getErrorTitle(I)Ljava/lang/String;

    move-result-object v2

    .line 934
    .local v2, title:Ljava/lang/String;
    const-string v4, "obj"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 935
    .local v1, message:Ljava/lang/String;
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_8

    .line 936
    :cond_7
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    const v5, 0x7f08049a

    invoke-virtual {v4, v5}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 938
    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_a

    .line 939
    :cond_9
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    const v5, 0x7f08049b

    invoke-virtual {v4, v5}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 941
    :cond_a
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListener;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    #calls: Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->showPopupReport(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v2, v1}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->access$1600(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.class Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;
.super Lcom/android/email/Controller$Result;
.source "AccountSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerResults"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 911
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-direct {p0}, Lcom/android/email/Controller$Result;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/setup/AccountSettingsFragment;Lcom/android/email/activity/setup/AccountSettingsFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 911
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    return-void
.end method


# virtual methods
.method public OoOCallback(Lcom/android/emailcommon/mail/MessagingException;JILandroid/os/Bundle;)V
    .locals 7
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"
    .parameter "oooResults"

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x7

    .line 952
    if-eqz p1, :cond_7

    .line 953
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v4

    const/16 v5, 0xb

    if-ne v4, v5, :cond_2

    .line 955
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 958
    .local v0, messageErr:I
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 968
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1000
    .end local v0           #messageErr:I
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v3

    .line 955
    goto :goto_0

    .line 960
    .restart local v0       #messageErr:I
    :pswitch_0
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 964
    :pswitch_1
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 971
    .end local v0           #messageErr:I
    :cond_2
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v4

    if-ne v4, v6, :cond_6

    .line 973
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 976
    .local v1, messageErr1:I
    :goto_2
    const/4 v4, -0x3

    if-ne v1, v4, :cond_4

    .line 977
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .end local v1           #messageErr1:I
    :cond_3
    move v1, v3

    .line 973
    goto :goto_2

    .line 978
    .restart local v1       #messageErr1:I
    :cond_4
    const/4 v4, -0x2

    if-ne v1, v4, :cond_5

    .line 979
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 981
    :cond_5
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 984
    .end local v1           #messageErr1:I
    :cond_6
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 986
    :cond_7
    const/16 v3, 0x64

    if-ne p4, v3, :cond_9

    .line 987
    if-eqz p5, :cond_8

    .line 988
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 989
    .local v2, msg:Landroid/os/Message;
    const/4 v3, 0x0

    iput v3, v2, Landroid/os/Message;->what:I

    .line 990
    invoke-virtual {v2, p5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 991
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 993
    .end local v2           #msg:Landroid/os/Message;
    :cond_8
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 996
    :cond_9
    if-nez p4, :cond_0

    .line 997
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 958
    nop

    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public deviceInfoCallback(I)V
    .locals 3
    .parameter "status"

    .prologue
    .line 1069
    sparse-switch p1, :sswitch_data_0

    .line 1077
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1079
    .local v0, msg:Landroid/os/Message;
    :goto_0
    if-eqz v0, :cond_0

    .line 1080
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1081
    :cond_0
    return-void

    .line 1071
    .end local v0           #msg:Landroid/os/Message;
    :sswitch_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1072
    .restart local v0       #msg:Landroid/os/Message;
    goto :goto_0

    .line 1074
    .end local v0           #msg:Landroid/os/Message;
    :sswitch_1
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1075
    .restart local v0       #msg:Landroid/os/Message;
    goto :goto_0

    .line 1069
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0x1388 -> :sswitch_0
    .end sparse-switch
.end method

.method public emptyTrashCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .locals 4
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"

    .prologue
    const/4 v0, 0x1

    .line 1023
    if-nez p1, :cond_1

    .line 1024
    sparse-switch p4, :sswitch_data_0

    .line 1059
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 1028
    :sswitch_1
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mAsHandler:Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1300(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;->emptyTrashStatus(I)V

    goto :goto_0

    .line 1038
    :cond_1
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    .line 1055
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mAsHandler:Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1300(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;->emptyTrashStatus(I)V

    goto :goto_0

    .line 1040
    :sswitch_2
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mAsHandler:Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1300(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v2

    const/4 v3, -0x2

    if-ne v2, v3, :cond_2

    const/4 v0, 0x2

    :cond_2
    invoke-virtual {v1, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;->emptyTrashStatus(I)V

    goto :goto_0

    .line 1046
    :sswitch_3
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mAsHandler:Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1300(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;->emptyTrashStatus(I)V

    goto :goto_0

    .line 1050
    :sswitch_4
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/high16 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 1051
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mAsHandler:Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1300(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment$AccountSettingsHandler;->emptyTrashStatus(I)V

    goto :goto_0

    .line 1024
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x64 -> :sswitch_1
    .end sparse-switch

    .line 1038
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x3c -> :sswitch_4
        0x40001 -> :sswitch_3
    .end sparse-switch
.end method

.method public folderCommandCallback(ILcom/android/emailcommon/mail/MessagingException;J)V
    .locals 0
    .parameter "command"
    .parameter "result"
    .parameter "mailboxId"

    .prologue
    .line 1016
    return-void
.end method

.method public loadMoreCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .locals 0
    .parameter "result"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 1019
    return-void
.end method

.method public modifyUserAccountCallback(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 1087
    const-string v0, "AccountSettingsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "modifyUserAccountCallback - bundle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults$1;

    invoke-direct {v1, p0, p1}, Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults$1;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment$ControllerResults;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1105
    return-void
.end method

.method public moveConvAlwaysCallback(Lcom/android/emailcommon/mail/MessagingException;[BII)V
    .locals 0
    .parameter "result"
    .parameter "convId"
    .parameter "progress"
    .parameter "ignore"

    .prologue
    .line 1064
    return-void
.end method

.method public sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 942
    return-void
.end method

.method public serviceCheckMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJIJ)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "progress"
    .parameter "tag"

    .prologue
    .line 938
    return-void
.end method

.method public updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "progress"
    .parameter "numNewMessages"

    .prologue
    .line 918
    return-void
.end method

.method public updateMailboxListCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"

    .prologue
    .line 914
    return-void
.end method

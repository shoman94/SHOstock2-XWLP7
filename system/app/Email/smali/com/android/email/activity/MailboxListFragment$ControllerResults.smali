.class Lcom/android/email/activity/MailboxListFragment$ControllerResults;
.super Lcom/android/email/Controller$Result;
.source "MailboxListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MailboxListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerResults"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MailboxListFragment;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MailboxListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1848
    iput-object p1, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-direct {p0}, Lcom/android/email/Controller$Result;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MailboxListFragment;Lcom/android/email/activity/MailboxListFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1848
    invoke-direct {p0, p1}, Lcom/android/email/activity/MailboxListFragment$ControllerResults;-><init>(Lcom/android/email/activity/MailboxListFragment;)V

    return-void
.end method


# virtual methods
.method public deactivateSncCallback()V
    .locals 2

    .prologue
    .line 2015
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mHandler:Lcom/android/email/activity/MailboxListFragment$MailboxListHandler;
    invoke-static {v0}, Lcom/android/email/activity/MailboxListFragment;->access$2800(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxListFragment$MailboxListHandler;

    move-result-object v0

    new-instance v1, Lcom/android/email/activity/MailboxListFragment$ControllerResults$2;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MailboxListFragment$ControllerResults$2;-><init>(Lcom/android/email/activity/MailboxListFragment$ControllerResults;)V

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxListFragment$MailboxListHandler;->post(Ljava/lang/Runnable;)Z

    .line 2023
    return-void
.end method

.method public deleteAccountFromWebCallback(JLjava/lang/String;)V
    .locals 2
    .parameter "accounId"
    .parameter "emailId"

    .prologue
    .line 2002
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mHandler:Lcom/android/email/activity/MailboxListFragment$MailboxListHandler;
    invoke-static {v0}, Lcom/android/email/activity/MailboxListFragment;->access$2800(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxListFragment$MailboxListHandler;

    move-result-object v0

    new-instance v1, Lcom/android/email/activity/MailboxListFragment$ControllerResults$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/email/activity/MailboxListFragment$ControllerResults$1;-><init>(Lcom/android/email/activity/MailboxListFragment$ControllerResults;JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxListFragment$MailboxListHandler;->post(Ljava/lang/Runnable;)Z

    .line 2012
    return-void
.end method

.method public folderCommandCallback(ILcom/android/emailcommon/mail/MessagingException;J)V
    .locals 6
    .parameter "command"
    .parameter "result"
    .parameter "mailboxId"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    .line 1914
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    iget-object v2, v2, Lcom/android/email/activity/MailboxListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_0

    .line 1915
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    iget-object v2, v2, Lcom/android/email/activity/MailboxListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1916
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/email/activity/MailboxListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1918
    :cond_0
    if-eqz p2, :cond_5

    .line 1919
    const/4 v0, 0x0

    .line 1921
    .local v0, message:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p2}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1978
    :cond_1
    :goto_0
    :pswitch_0
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mHandler:Lcom/android/email/activity/MailboxListFragment$MailboxListHandler;
    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$2800(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxListFragment$MailboxListHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/email/activity/MailboxListFragment$MailboxListHandler;->showErrorBanner(Ljava/lang/String;)V

    .line 1998
    :goto_1
    return-void

    .line 1923
    :pswitch_1
    packed-switch p1, :pswitch_data_1

    :pswitch_2
    goto :goto_0

    .line 1928
    :pswitch_3
    :try_start_1
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    const v3, 0x7f080328

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1929
    goto :goto_0

    .line 1925
    :pswitch_4
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    const v3, 0x7f080327

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1926
    goto :goto_0

    .line 1931
    :pswitch_5
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    const v3, 0x7f080329

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1936
    :pswitch_6
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    const v3, 0x7f08036e

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1937
    goto :goto_0

    .line 1941
    :pswitch_7
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    const v3, 0x7f080523

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1942
    goto :goto_0

    .line 1944
    :pswitch_8
    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    if-ne p1, v4, :cond_1

    .line 1946
    :cond_2
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    const v3, 0x7f08036f

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1950
    :pswitch_9
    if-eq p1, v5, :cond_3

    if-ne p1, v4, :cond_1

    .line 1954
    :cond_3
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    const v3, 0x7f080523

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1958
    :pswitch_a
    if-eq p1, v5, :cond_4

    if-ne p1, v4, :cond_1

    .line 1960
    :cond_4
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    const v3, 0x7f080370

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1964
    :pswitch_b
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    const v3, 0x7f080109

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1965
    goto :goto_0

    .line 1967
    :pswitch_c
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    const v3, 0x7f080113

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1968
    goto :goto_0

    .line 1971
    :pswitch_d
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    const v3, 0x7f0801f4

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_0

    .line 1975
    :catch_0
    move-exception v1

    .line 1976
    .local v1, nfe:Ljava/lang/NumberFormatException;
    invoke-virtual {p2}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1980
    .end local v0           #message:Ljava/lang/String;
    .end local v1           #nfe:Ljava/lang/NumberFormatException;
    :cond_5
    const/4 v0, 0x0

    .line 1981
    .restart local v0       #message:Ljava/lang/String;
    packed-switch p1, :pswitch_data_2

    .line 1996
    :goto_2
    :pswitch_e
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mHandler:Lcom/android/email/activity/MailboxListFragment$MailboxListHandler;
    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$2800(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxListFragment$MailboxListHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/email/activity/MailboxListFragment$MailboxListHandler;->showMessage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1983
    :pswitch_f
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    const v3, 0x7f080324

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1984
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    iget-object v2, v2, Lcom/android/email/activity/MailboxListFragment;->updateUIHandler:Landroid/os/Handler;

    const/16 v3, 0xfa0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 1987
    :pswitch_10
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    const v3, 0x7f080325

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1988
    goto :goto_2

    .line 1990
    :pswitch_11
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    const v3, 0x7f080326

    invoke-virtual {v2, v3}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1991
    goto :goto_2

    .line 1921
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_d
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 1923
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
    .end packed-switch

    .line 1981
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_11
    .end packed-switch
.end method

.method public updateMailboxListCallback(ILcom/android/emailcommon/mail/MessagingException;JI)V
    .locals 5
    .parameter "cmd"
    .parameter "result"
    .parameter "accountKey"
    .parameter "progress"

    .prologue
    const v4, 0x7f080324

    .line 1853
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateMailboxListCallback cmd :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " progress :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    iget-object v1, v1, Lcom/android/email/activity/MailboxListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 1857
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    iget-object v1, v1, Lcom/android/email/activity/MailboxListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1858
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/email/activity/MailboxListFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1861
    :cond_0
    const/16 v1, 0x64

    if-ne p5, v1, :cond_2

    if-nez p2, :cond_2

    .line 1863
    const/4 v0, 0x0

    .line 1865
    .local v0, message:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1888
    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mHandler:Lcom/android/email/activity/MailboxListFragment$MailboxListHandler;
    invoke-static {v1}, Lcom/android/email/activity/MailboxListFragment;->access$2800(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxListFragment$MailboxListHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/email/activity/MailboxListFragment$MailboxListHandler;->showMessage(Ljava/lang/String;)V

    .line 1910
    .end local v0           #message:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 1867
    .restart local v0       #message:Ljava/lang/String;
    :pswitch_0
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    const v2, 0x7f080326

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1868
    goto :goto_0

    .line 1873
    :pswitch_1
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v1, v4}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1874
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    iget-object v1, v1, Lcom/android/email/activity/MailboxListFragment;->updateUIHandler:Landroid/os/Handler;

    const/16 v2, 0xfa0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1878
    :pswitch_2
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    const v2, 0x7f080325

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1879
    goto :goto_0

    .line 1882
    :pswitch_3
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v1, v4}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1883
    goto :goto_0

    .line 1890
    .end local v0           #message:Ljava/lang/String;
    :cond_2
    if-eqz p2, :cond_1

    .line 1892
    const/4 v0, 0x0

    .line 1895
    .restart local v0       #message:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1904
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    const v2, 0x7f080327

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1908
    :goto_2
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mHandler:Lcom/android/email/activity/MailboxListFragment$MailboxListHandler;
    invoke-static {v1}, Lcom/android/email/activity/MailboxListFragment;->access$2800(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxListFragment$MailboxListHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/email/activity/MailboxListFragment$MailboxListHandler;->showMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 1900
    :sswitch_0
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment$ControllerResults;->this$0:Lcom/android/email/activity/MailboxListFragment;

    const v2, 0x7f080329

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1901
    goto :goto_2

    .line 1865
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch

    .line 1895
    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_0
        0x6a -> :sswitch_0
    .end sparse-switch
.end method

.class Lcom/android/email/activity/setup/AccountSettingsFragment$2;
.super Landroid/os/Handler;
.source "AccountSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1112
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const v4, 0x7f080507

    const/16 v2, 0x800

    const/4 v7, 0x1

    const/16 v3, 0x64

    const/4 v6, 0x0

    .line 1115
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mProgressDlg:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1400(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1116
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mProgressDlg:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1400(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1117
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 1198
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08035b

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1200
    :cond_1
    :goto_0
    return-void

    .line 1120
    :sswitch_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    #calls: Lcom/android/email/activity/setup/AccountSettingsFragment;->onOutOfOfficeComplete(Landroid/os/Bundle;)V
    invoke-static {v1, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1500(Lcom/android/email/activity/setup/AccountSettingsFragment;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1123
    :sswitch_1
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080354

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1126
    :sswitch_2
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08035a

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1130
    :sswitch_3
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    const v5, 0x7f080343

    invoke-virtual {v4, v5}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v7, v7}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    #setter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mProgressDlg:Landroid/app/ProgressDialog;
    invoke-static {v1, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1402(Lcom/android/email/activity/setup/AccountSettingsFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto :goto_0

    .line 1134
    :sswitch_4
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080357

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1137
    :sswitch_5
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080358

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1140
    :sswitch_6
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080359

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1145
    :sswitch_7
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    const v4, 0x7f0803c9

    invoke-virtual {v3, v4}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1151
    :sswitch_8
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    const v4, 0x7f0803ca

    invoke-virtual {v3, v4}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1158
    :sswitch_9
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    const v4, 0x7f0803cb

    invoke-virtual {v3, v4}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1165
    :sswitch_a
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncSMS:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1600(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1166
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$500(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    iget v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit16 v1, v1, 0x800

    if-ne v1, v2, :cond_2

    .line 1167
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncSMS:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1600(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1168
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncSMS:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1600(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 1173
    :goto_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1174
    .local v0, smscv:Landroid/content/ContentValues;
    const-string v1, "flags"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$500(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    iget v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1175
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$500(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 1176
    const-string v1, "Email"

    const-string v2, "SMS settings successfully changed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1170
    .end local v0           #smscv:Landroid/content/ContentValues;
    :cond_2
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncSMS:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1600(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1171
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncSMS:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1600(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    const v2, 0x7f080508

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_1

    .line 1180
    :sswitch_b
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$500(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    iget v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit16 v1, v1, 0x800

    if-ne v1, v2, :cond_3

    .line 1181
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncSMS:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1600(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1182
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncSMS:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1600(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    const v2, 0x7f080508

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 1183
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$500(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    iget v2, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit16 v2, v2, -0x801

    iput v2, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    .line 1189
    :goto_2
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to change the SMS settings : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08050a

    const/16 v3, 0x1f4

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1185
    :cond_3
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncSMS:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1600(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1186
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mSyncSMS:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1600(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 1187
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$500(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    iget v2, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    or-int/lit16 v2, v2, 0x800

    iput v2, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    goto :goto_2

    .line 1193
    :sswitch_c
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    const v5, 0x7f080509

    invoke-virtual {v4, v5}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v7, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    #setter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mProgressDlg:Landroid/app/ProgressDialog;
    invoke-static {v1, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1402(Lcom/android/email/activity/setup/AccountSettingsFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto/16 :goto_0

    .line 1117
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x9 -> :sswitch_c
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0x64 -> :sswitch_7
        0x65 -> :sswitch_8
        0x66 -> :sswitch_9
    .end sparse-switch
.end method

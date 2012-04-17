.class Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$9;
.super Ljava/lang/Object;
.source "AccountSettingsOutOfOfficeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 402
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$9;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 404
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$9;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    #setter for: Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsStartTime:Z
    invoke-static {v1, v5}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->access$502(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;Z)Z

    .line 405
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$9;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->access$1000(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$9;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->access$1500(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/app/TimePickerDialog$OnTimeSetListener;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$9;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDate:Ljava/util/Date;
    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->access$300(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getHours()I

    move-result v3

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$9;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDate:Ljava/util/Date;
    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->access$300(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getMinutes()I

    move-result v4

    const-string v6, "24"

    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$9;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->access$1000(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "time_12_24"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    :cond_0
    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 408
    .local v0, dialog:Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 409
    return-void
.end method

.class Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$6;
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
    .line 351
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$6;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 353
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$6;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    const/4 v2, 0x1

    #setter for: Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsStartDate:Z
    invoke-static {v1, v2}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->access$002(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;Z)Z

    .line 354
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$6;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->access$1000(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$6;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->access$1400(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/app/DatePickerDialog$OnDateSetListener;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$6;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDate:Ljava/util/Date;
    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->access$100(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getYear()I

    move-result v3

    add-int/lit16 v3, v3, 0x76c

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$6;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDate:Ljava/util/Date;
    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->access$100(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getMonth()I

    move-result v4

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$6;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDate:Ljava/util/Date;
    invoke-static {v5}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->access$100(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getDate()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 356
    .local v0, dialog:Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 357
    return-void
.end method

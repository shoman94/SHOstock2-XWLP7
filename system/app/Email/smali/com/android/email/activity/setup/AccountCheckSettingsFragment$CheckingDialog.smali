.class public Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;
.super Landroid/app/DialogFragment;
.source "AccountCheckSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckingDialog"
.end annotation


# instance fields
.field private final EXTRA_PROGRESS_STRING:Ljava/lang/String;

.field private mProgressString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 851
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 855
    const-string v0, "CheckProgressDialog.Progress"

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->EXTRA_PROGRESS_STRING:Ljava/lang/String;

    return-void
.end method

.method private getProgressString(I)Ljava/lang/String;
    .locals 2
    .parameter "progress"

    .prologue
    .line 956
    const/4 v0, 0x0

    .line 957
    .local v0, stringId:I
    packed-switch p1, :pswitch_data_0

    .line 968
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 959
    :pswitch_0
    const v0, 0x7f0800d1

    .line 960
    goto :goto_0

    .line 962
    :pswitch_1
    const v0, 0x7f0800d2

    .line 963
    goto :goto_0

    .line 965
    :pswitch_2
    const v0, 0x7f0800d3

    goto :goto_0

    .line 957
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static newInstance(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;I)Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;
    .locals 1
    .parameter "parentFragment"
    .parameter "progress"

    .prologue
    .line 867
    new-instance v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;

    invoke-direct {v0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;-><init>()V

    .line 868
    .local v0, f:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;
    invoke-virtual {v0, p0, p1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 869
    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 930
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    .line 931
    .local v0, target:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
    #calls: Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->onCheckingDialogCancel()V
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->access$100(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;)V

    .line 932
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 933
    #calls: Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->getCallbackTarget()Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->access$200(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;)Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;

    move-result-object v1

    const/16 v2, 0x9

    invoke-interface {v1, v2}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;->onCheckSettingsComplete(I)V

    .line 944
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 886
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 887
    .local v0, context:Landroid/content/Context;
    if-eqz p1, :cond_0

    .line 888
    const-string v3, "CheckProgressDialog.Progress"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->mProgressString:Ljava/lang/String;

    .line 890
    :cond_0
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->mProgressString:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 891
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->getTargetRequestCode()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->getProgressString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->mProgressString:Ljava/lang/String;

    .line 893
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    .line 895
    .local v2, target:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 896
    .local v1, dialog:Landroid/app/ProgressDialog;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 897
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 898
    const v3, 0x1010355

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setIconAttribute(I)V

    .line 899
    const v3, 0x7f0800d4

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 900
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->mProgressString:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 901
    const/4 v3, -0x2

    const v4, 0x7f080043

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog$1;

    invoke-direct {v5, p0, v2}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog$1;-><init>(Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;Lcom/android/email/activity/setup/AccountCheckSettingsFragment;)V

    invoke-virtual {v1, v3, v4, v5}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 920
    return-object v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 948
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 949
    const-string v0, "CheckProgressDialog.Progress"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->mProgressString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    return-void
.end method

.method public updateProgress(I)V
    .locals 2
    .parameter "progress"

    .prologue
    .line 878
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->getProgressString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->mProgressString:Ljava/lang/String;

    .line 879
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 880
    .local v0, dialog:Landroid/app/AlertDialog;
    if-eqz v0, :cond_0

    .line 881
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$CheckingDialog;->mProgressString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 882
    :cond_0
    return-void
.end method

.class Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment$4$1;
.super Ljava/lang/Object;
.source "AccountSettingsSyncScheduleForSevenFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment$4;

.field final synthetic val$e:Landroid/os/RemoteException;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment$4;Landroid/os/RemoteException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 437
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment$4$1;->this$1:Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment$4;

    iput-object p2, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment$4$1;->val$e:Landroid/os/RemoteException;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment$4$1;->this$1:Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment$4;

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment$4;->this$0:Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->pa:Landroid/preference/PreferenceActivity;
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->access$700(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;)Landroid/preference/PreferenceActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment$4$1;->val$e:Landroid/os/RemoteException;

    invoke-static {v0, v1}, Lcom/android/email/combined/common/ExceptionUtil;->showDialogException(Landroid/app/Activity;Ljava/lang/Exception;)V

    .line 441
    return-void
.end method

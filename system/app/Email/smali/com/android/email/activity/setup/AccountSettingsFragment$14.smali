.class Lcom/android/email/activity/setup/AccountSettingsFragment$14;
.super Ljava/lang/Object;
.source "AccountSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSettingsFragment;->loadSettings()V
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
    .line 1655
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$14;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preference"

    .prologue
    const/4 v3, 0x6

    .line 1658
    const/4 v0, 0x0

    .line 1659
    .local v0, emailAge:I
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$14;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    iget-object v2, v2, Lcom/android/email/activity/setup/AccountSettingsFragment;->policySet:Lcom/android/emailcommon/service/PolicySet;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$14;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    iget-object v2, v2, Lcom/android/email/activity/setup/AccountSettingsFragment;->policySet:Lcom/android/emailcommon/service/PolicySet;

    iget v2, v2, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailAgeFilter:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$14;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    iget-object v2, v2, Lcom/android/email/activity/setup/AccountSettingsFragment;->policySet:Lcom/android/emailcommon/service/PolicySet;

    iget v2, v2, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailAgeFilter:I

    if-ge v2, v3, :cond_0

    .line 1660
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$14;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    iget-object v2, v2, Lcom/android/email/activity/setup/AccountSettingsFragment;->policySet:Lcom/android/emailcommon/service/PolicySet;

    iget v0, v2, Lcom/android/emailcommon/service/PolicySet;->mMaxEmailAgeFilter:I

    .line 1661
    :cond_0
    if-lez v0, :cond_1

    if-ge v0, v3, :cond_1

    .line 1662
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1664
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$14;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #calls: Lcom/android/email/activity/setup/AccountSettingsFragment;->getSyncWindowAllowedEntries(I)[Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$2600(Lcom/android/email/activity/setup/AccountSettingsFragment;I)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1665
    const/16 v2, 0x64

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1666
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$14;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1668
    .end local v1           #msg:Landroid/os/Message;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

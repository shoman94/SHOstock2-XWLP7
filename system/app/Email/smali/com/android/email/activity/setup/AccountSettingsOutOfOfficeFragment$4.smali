.class Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$4;
.super Ljava/lang/Object;
.source "AccountSettingsOutOfOfficeFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 316
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$4;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$4;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    #setter for: Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofState:Z
    invoke-static {v0, p2}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->access$1102(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;Z)Z

    .line 320
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$4;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    iput-boolean p2, v0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    .line 321
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$4;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    #calls: Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->toggleAllUIState()V
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->access$1200(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)V

    .line 322
    return-void
.end method

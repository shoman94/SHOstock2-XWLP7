.class Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$13;
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
    .line 460
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->access$2000(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 464
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->access$1700(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 465
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->access$1600(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 466
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnownLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->access$2100(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 467
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnownLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->access$2200(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 470
    if-nez p2, :cond_0

    .line 471
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$13;->this$0:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->access$2000(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 474
    :cond_0
    return-void
.end method

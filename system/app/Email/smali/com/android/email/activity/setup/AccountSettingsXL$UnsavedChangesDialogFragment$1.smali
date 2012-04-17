.class Lcom/android/email/activity/setup/AccountSettingsXL$UnsavedChangesDialogFragment$1;
.super Ljava/lang/Object;
.source "AccountSettingsXL.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSettingsXL$UnsavedChangesDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettingsXL$UnsavedChangesDialogFragment;

.field final synthetic val$activity:Lcom/android/email/activity/setup/AccountSettingsXL;

.field final synthetic val$isBack:Z

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSettingsXL$UnsavedChangesDialogFragment;ZLcom/android/email/activity/setup/AccountSettingsXL;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1346
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsXL$UnsavedChangesDialogFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL$UnsavedChangesDialogFragment;

    iput-boolean p2, p0, Lcom/android/email/activity/setup/AccountSettingsXL$UnsavedChangesDialogFragment$1;->val$isBack:Z

    iput-object p3, p0, Lcom/android/email/activity/setup/AccountSettingsXL$UnsavedChangesDialogFragment$1;->val$activity:Lcom/android/email/activity/setup/AccountSettingsXL;

    iput p4, p0, Lcom/android/email/activity/setup/AccountSettingsXL$UnsavedChangesDialogFragment$1;->val$position:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1348
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL$UnsavedChangesDialogFragment$1;->val$isBack:Z

    if-eqz v0, :cond_0

    .line 1349
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL$UnsavedChangesDialogFragment$1;->val$activity:Lcom/android/email/activity/setup/AccountSettingsXL;

    #calls: Lcom/android/email/activity/setup/AccountSettingsXL;->forceBack()V
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsXL;->access$1200(Lcom/android/email/activity/setup/AccountSettingsXL;)V

    .line 1353
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL$UnsavedChangesDialogFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL$UnsavedChangesDialogFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSettingsXL$UnsavedChangesDialogFragment;->dismiss()V

    .line 1354
    return-void

    .line 1351
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL$UnsavedChangesDialogFragment$1;->val$activity:Lcom/android/email/activity/setup/AccountSettingsXL;

    iget v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL$UnsavedChangesDialogFragment$1;->val$position:I

    #calls: Lcom/android/email/activity/setup/AccountSettingsXL;->forceSwitchHeader(I)V
    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsXL;->access$1300(Lcom/android/email/activity/setup/AccountSettingsXL;I)V

    goto :goto_0
.end method

.class Lcom/android/email/activity/setup/AccountSettingsXL$3;
.super Ljava/lang/Object;
.source "AccountSettingsXL.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSettingsXL;->onDeleteAccount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettingsXL;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSettingsXL;)V
    .locals 0
    .parameter

    .prologue
    .line 649
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsXL$3;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 651
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL$3;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    const/4 v1, 0x0

    #setter for: Lcom/android/email/activity/setup/AccountSettingsXL;->mDeleteAccountPressed:Z
    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsXL;->access$402(Lcom/android/email/activity/setup/AccountSettingsXL;Z)Z

    .line 652
    return-void
.end method

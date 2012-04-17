.class Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC$1;
.super Ljava/lang/Object;
.source "AccountSetupAccountTypeForSeven.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC;->onCallback(Lcom/seven/Z7/common/Z7ServiceCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC;)V
    .locals 0
    .parameter

    .prologue
    .line 1007
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC$1;->this$1:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1009
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1010
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC$1;->this$1:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC;

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$MyListenerForGAC;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->finish()V

    .line 1011
    return-void
.end method

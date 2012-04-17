.class Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$3$1;
.super Ljava/lang/Object;
.source "AccountSetupOptionsForSeven.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$3;

.field final synthetic val$e:Landroid/os/RemoteException;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$3;Landroid/os/RemoteException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 424
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$3$1;->this$1:Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$3;

    iput-object p2, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$3$1;->val$e:Landroid/os/RemoteException;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$3$1;->this$1:Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$3;

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$3;->this$0:Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$3$1;->val$e:Landroid/os/RemoteException;

    new-instance v2, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$3$1$1;

    invoke-direct {v2, p0}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$3$1$1;-><init>(Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$3$1;)V

    new-instance v3, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$3$1$2;

    invoke-direct {v3, p0}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$3$1$2;-><init>(Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$3$1;)V

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/combined/common/ExceptionUtil;->showDialogException(Landroid/app/Activity;Ljava/lang/Exception;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnKeyListener;)V

    .line 444
    return-void
.end method

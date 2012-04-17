.class Lcom/android/email/activity/setup/snc/AccountSetupSncNames$3;
.super Ljava/lang/Object;
.source "AccountSetupSncNames.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->showHelpDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncNames;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/snc/AccountSetupSncNames;)V
    .locals 0
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames$3;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncNames;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "dialog"
    .parameter "keycode"
    .parameter "keyevent"

    .prologue
    .line 244
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 245
    const-string v0, "AccountSetupSncNames"

    const-string v1, "User Pressed Back button"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 247
    iget-object v0, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames$3;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncNames;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/email/activity/setup/snc/AccountSetupSncNames;->mHelpDialog:Landroid/app/AlertDialog$Builder;

    .line 248
    const/4 v0, 0x1

    .line 250
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

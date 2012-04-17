.class Lcom/android/email/activity/setup/snc/AccountSetupWizard$6;
.super Ljava/lang/Object;
.source "AccountSetupWizard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/snc/AccountSetupWizard;->createProgressDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/snc/AccountSetupWizard;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/snc/AccountSetupWizard;)V
    .locals 0
    .parameter

    .prologue
    .line 875
    iput-object p1, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$6;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupWizard;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "info"
    .parameter "keycode"
    .parameter "keyevent"

    .prologue
    .line 877
    const/16 v0, 0x54

    if-ne p2, v0, :cond_0

    .line 878
    const-string v0, "AccountSetupWizard"

    const-string v1, "Ignore the Search Key request"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

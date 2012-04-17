.class Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb$5;
.super Ljava/lang/Object;
.source "AccountSetupDisclaimerWeb.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;->showWebViewProgressDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;)V
    .locals 0
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb$5;->this$0:Lcom/android/email/activity/setup/AccountSetupDisclaimerWeb;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "arg0"
    .parameter "keycode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 296
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 297
    packed-switch p2, :pswitch_data_0

    .line 305
    :cond_0
    const/4 v0, 0x0

    :pswitch_0
    return v0

    .line 297
    :pswitch_data_0
    .packed-switch 0x54
        :pswitch_0
    .end packed-switch
.end method

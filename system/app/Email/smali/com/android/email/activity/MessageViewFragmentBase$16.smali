.class Lcom/android/email/activity/MessageViewFragmentBase$16;
.super Ljava/lang/Object;
.source "MessageViewFragmentBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageViewFragmentBase;->changeBgColorDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;

.field final synthetic val$settingValue:Lcom/android/email/Preferences;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/Preferences;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 7579
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$16;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iput-object p2, p0, Lcom/android/email/activity/MessageViewFragmentBase$16;->val$settingValue:Lcom/android/email/Preferences;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 7581
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 7582
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7583
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 7584
    const/4 p2, 0x2

    .line 7587
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$16;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->ControlBgColor(IZ)V

    .line 7593
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$16;->val$settingValue:Lcom/android/email/Preferences;

    invoke-virtual {v0, p2}, Lcom/android/email/Preferences;->setBGColor(I)V

    .line 7595
    return-void
.end method

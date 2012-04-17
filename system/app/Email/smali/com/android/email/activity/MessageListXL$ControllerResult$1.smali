.class Lcom/android/email/activity/MessageListXL$ControllerResult$1;
.super Ljava/lang/Object;
.source "MessageListXL.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageListXL$ControllerResult;->handleError(Lcom/android/emailcommon/mail/MessagingException;JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/MessageListXL$ControllerResult;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageListXL$ControllerResult;)V
    .locals 0
    .parameter

    .prologue
    .line 4105
    iput-object p1, p0, Lcom/android/email/activity/MessageListXL$ControllerResult$1;->this$1:Lcom/android/email/activity/MessageListXL$ControllerResult;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 4112
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$ControllerResult$1;->this$1:Lcom/android/email/activity/MessageListXL$ControllerResult;

    iget-object v0, v0, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$ControllerResult$1;->this$1:Lcom/android/email/activity/MessageListXL$ControllerResult;

    iget-object v1, v1, Lcom/android/email/activity/MessageListXL$ControllerResult;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->access$700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->getActualAccountId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSettingsXL;->actionSettings_withdeleteoption(Landroid/app/Activity;J)V

    .line 4116
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 4118
    return-void
.end method

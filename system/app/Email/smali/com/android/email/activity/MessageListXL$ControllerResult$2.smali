.class Lcom/android/email/activity/MessageListXL$ControllerResult$2;
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
    .line 4122
    iput-object p1, p0, Lcom/android/email/activity/MessageListXL$ControllerResult$2;->this$1:Lcom/android/email/activity/MessageListXL$ControllerResult;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 4128
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 4130
    return-void
.end method

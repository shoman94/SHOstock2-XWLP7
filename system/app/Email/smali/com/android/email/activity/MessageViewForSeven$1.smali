.class Lcom/android/email/activity/MessageViewForSeven$1;
.super Ljava/lang/Object;
.source "MessageViewForSeven.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageViewForSeven;->showDialogExceptionOnThread(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageViewForSeven;

.field final synthetic val$e:Ljava/lang/Exception;

.field final synthetic val$messageList:Lcom/android/email/activity/MessageList;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageViewForSeven;Lcom/android/email/activity/MessageList;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 409
    iput-object p1, p0, Lcom/android/email/activity/MessageViewForSeven$1;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    iput-object p2, p0, Lcom/android/email/activity/MessageViewForSeven$1;->val$messageList:Lcom/android/email/activity/MessageList;

    iput-object p3, p0, Lcom/android/email/activity/MessageViewForSeven$1;->val$e:Ljava/lang/Exception;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven$1;->val$messageList:Lcom/android/email/activity/MessageList;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewForSeven$1;->val$e:Ljava/lang/Exception;

    invoke-static {v0, v1}, Lcom/android/email/combined/common/ExceptionUtil;->showDialogException(Landroid/app/Activity;Ljava/lang/Exception;)V

    .line 413
    return-void
.end method

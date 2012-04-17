.class Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver$1;
.super Ljava/lang/Object;
.source "MessageViewForSeven.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 1361
    iput-object p1, p0, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver$1;->this$1:Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1364
    :try_start_0
    iget-object v1, p0, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver$1;->this$1:Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;

    iget-object v1, v1, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    iget-object v1, v1, Lcom/android/email/activity/MessageViewForSeven;->mApp:Lcom/android/email/Email;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver$1;->this$1:Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;

    iget-object v1, v1, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    iget-object v1, v1, Lcom/android/email/activity/MessageViewForSeven;->mApp:Lcom/android/email/Email;

    invoke-virtual {v1}, Lcom/android/email/Email;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1365
    iget-object v1, p0, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver$1;->this$1:Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;

    iget-object v1, v1, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageViewForSeven;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/digc/seven/Z7MailHandler;->getInstance(Landroid/content/Context;)Lcom/digc/seven/Z7MailHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver$1;->this$1:Lcom/android/email/activity/MessageViewForSeven$EmbeddedAttachmentObserver;

    invoke-virtual {v1, v2}, Lcom/digc/seven/Z7MailHandler;->registerListener(Lcom/android/email/Email$Z7ConnectionListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1375
    :cond_0
    :goto_0
    return-void

    .line 1370
    :catch_0
    move-exception v0

    .line 1373
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "MessageViewForSeven >>"

    const-string v2, "EmbeddedAttachmentObserver.start()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

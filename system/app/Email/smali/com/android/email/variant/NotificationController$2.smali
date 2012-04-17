.class Lcom/android/email/variant/NotificationController$2;
.super Ljava/lang/Object;
.source "NotificationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/variant/NotificationController;->showNewMessageNotification(JII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/variant/NotificationController;

.field final synthetic val$accountId:J

.field final synthetic val$unseenMessageCount:I


# direct methods
.method constructor <init>(Lcom/android/email/variant/NotificationController;JI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/email/variant/NotificationController$2;->this$0:Lcom/android/email/variant/NotificationController;

    iput-wide p2, p0, Lcom/android/email/variant/NotificationController$2;->val$accountId:J

    iput p4, p0, Lcom/android/email/variant/NotificationController$2;->val$unseenMessageCount:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 234
    iget-object v1, p0, Lcom/android/email/variant/NotificationController$2;->this$0:Lcom/android/email/variant/NotificationController;

    iget-wide v2, p0, Lcom/android/email/variant/NotificationController$2;->val$accountId:J

    iget v4, p0, Lcom/android/email/variant/NotificationController$2;->val$unseenMessageCount:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/email/variant/NotificationController;->createNewMessageNotification(JI)Landroid/app/Notification;

    move-result-object v0

    .line 235
    .local v0, n:Landroid/app/Notification;
    if-nez v0, :cond_0

    .line 239
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v1, p0, Lcom/android/email/variant/NotificationController$2;->this$0:Lcom/android/email/variant/NotificationController;

    #getter for: Lcom/android/email/variant/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v1}, Lcom/android/email/variant/NotificationController;->access$100(Lcom/android/email/variant/NotificationController;)Landroid/app/NotificationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/variant/NotificationController$2;->this$0:Lcom/android/email/variant/NotificationController;

    iget-wide v3, p0, Lcom/android/email/variant/NotificationController$2;->val$accountId:J

    #calls: Lcom/android/email/variant/NotificationController;->getNewMessageNotificationId(J)I
    invoke-static {v2, v3, v4}, Lcom/android/email/variant/NotificationController;->access$000(Lcom/android/email/variant/NotificationController;J)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

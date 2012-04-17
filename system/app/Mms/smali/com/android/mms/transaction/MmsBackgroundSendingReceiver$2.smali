.class Lcom/android/mms/transaction/MmsBackgroundSendingReceiver$2;
.super Ljava/lang/Object;
.source "MmsBackgroundSendingReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->sendMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;

.field final synthetic val$mmsUri:Landroid/net/Uri;

.field final synthetic val$slideshow:Lcom/android/mms/model/SlideshowModel;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver$2;->this$0:Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;

    iput-object p2, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver$2;->val$mmsUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver$2;->val$slideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver$2;->this$0:Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;

    iget-object v1, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver$2;->val$mmsUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver$2;->val$slideshow:Lcom/android/mms/model/SlideshowModel;

    #calls: Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->sendMmsWorker(Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;)V
    invoke-static {v0, v1, v2}, Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;->access$400(Lcom/android/mms/transaction/MmsBackgroundSendingReceiver;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;)V

    .line 129
    return-void
.end method

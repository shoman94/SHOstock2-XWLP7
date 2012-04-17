.class final Lcom/android/mms/ui/MessageUtils$7;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageUtils;->handleReadReportOne(Landroid/content/Context;JILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$address:Ljava/lang/String;

.field final synthetic val$callback:Ljava/lang/Runnable;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$mmsId:Ljava/lang/String;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1394
    iput-object p1, p0, Lcom/android/mms/ui/MessageUtils$7;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/mms/ui/MessageUtils$7;->val$address:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/mms/ui/MessageUtils$7;->val$mmsId:Ljava/lang/String;

    iput p4, p0, Lcom/android/mms/ui/MessageUtils$7;->val$status:I

    iput-object p5, p0, Lcom/android/mms/ui/MessageUtils$7;->val$callback:Ljava/lang/Runnable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1396
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$7;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageUtils$7;->val$address:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/ui/MessageUtils$7;->val$mmsId:Ljava/lang/String;

    iget v3, p0, Lcom/android/mms/ui/MessageUtils$7;->val$status:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/transaction/MmsMessageSender;->sendReadRec(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1398
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$7;->val$callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1399
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$7;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1402
    :cond_0
    return-void
.end method

.class Lcom/android/mms/ui/SlideView$ErrorReasonDisplayer;
.super Ljava/lang/Object;
.source "SlideView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ErrorReasonDisplayer"
.end annotation


# instance fields
.field private final mErrorReason:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/ui/SlideView;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/SlideView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "errorReason"

    .prologue
    .line 1595
    iput-object p1, p0, Lcom/android/mms/ui/SlideView$ErrorReasonDisplayer;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1596
    iput-object p2, p0, Lcom/android/mms/ui/SlideView$ErrorReasonDisplayer;->mErrorReason:Ljava/lang/String;

    .line 1597
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1600
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$ErrorReasonDisplayer;->mErrorReason:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1601
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$ErrorReasonDisplayer;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/ui/SlideView;->access$4200(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SlideView$ErrorReasonDisplayer;->mErrorReason:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1603
    :cond_0
    return-void
.end method

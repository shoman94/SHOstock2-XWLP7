.class Lcom/android/mms/ui/MmsPlayerController$1;
.super Ljava/lang/Object;
.source "MmsPlayerController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsPlayerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsPlayerController;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsPlayerController;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/mms/ui/MmsPlayerController$1;->this$0:Lcom/android/mms/ui/MmsPlayerController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 138
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController$1;->this$0:Lcom/android/mms/ui/MmsPlayerController;

    #getter for: Lcom/android/mms/ui/MmsPlayerController;->mShowing:Z
    invoke-static {v0}, Lcom/android/mms/ui/MmsPlayerController;->access$000(Lcom/android/mms/ui/MmsPlayerController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/mms/ui/MmsPlayerController$1;->this$0:Lcom/android/mms/ui/MmsPlayerController;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsPlayerController;->hide()V

    .line 143
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

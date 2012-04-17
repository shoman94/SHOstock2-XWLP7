.class Lcom/android/email/activity/ToolBarScrollView$Gesture;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ToolBarScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/ToolBarScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Gesture"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/ToolBarScrollView;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/ToolBarScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 378
    iput-object p1, p0, Lcom/android/email/activity/ToolBarScrollView$Gesture;->this$0:Lcom/android/email/activity/ToolBarScrollView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/ToolBarScrollView;Lcom/android/email/activity/ToolBarScrollView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 378
    invoke-direct {p0, p1}, Lcom/android/email/activity/ToolBarScrollView$Gesture;-><init>(Lcom/android/email/activity/ToolBarScrollView;)V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/email/activity/ToolBarScrollView$Gesture;->this$0:Lcom/android/email/activity/ToolBarScrollView;

    const/4 v1, 0x0

    #setter for: Lcom/android/email/activity/ToolBarScrollView;->mIsInterceptionTrue:Z
    invoke-static {v0, v1}, Lcom/android/email/activity/ToolBarScrollView;->access$802(Lcom/android/email/activity/ToolBarScrollView;Z)Z

    .line 383
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

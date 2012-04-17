.class Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView$1;
.super Ljava/lang/Object;
.source "EllipsisTextView.java"

# interfaces
.implements Landroid/text/TextUtils$EllipsizeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView$1;->this$0:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ellipsized(II)V
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 82
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView$1;->this$0:Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;

    if-ne p1, p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    #setter for: Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->mEllipsized:Z
    invoke-static {v1, v0}, Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;->access$002(Lcom/sec/android/app/dialertab/dialpad/EllipsisTextView;Z)Z

    .line 83
    return-void

    .line 82
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

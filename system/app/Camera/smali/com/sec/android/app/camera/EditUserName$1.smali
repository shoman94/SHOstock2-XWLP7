.class Lcom/sec/android/app/camera/EditUserName$1;
.super Ljava/util/TimerTask;
.source "EditUserName.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/EditUserName;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/EditUserName;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/EditUserName;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/sec/android/app/camera/EditUserName$1;->this$0:Lcom/sec/android/app/camera/EditUserName;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 42
    iget-object v1, p0, Lcom/sec/android/app/camera/EditUserName$1;->this$0:Lcom/sec/android/app/camera/EditUserName;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/EditUserName;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 43
    .local v0, m:Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 44
    return-void
.end method

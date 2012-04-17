.class Lcom/android/mms/ui/ToButton$2;
.super Ljava/lang/Object;
.source "ToButton.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ToButton;->setFocusListen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ToButton;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ToButton;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/mms/ui/ToButton$2;->this$0:Lcom/android/mms/ui/ToButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    const/4 v0, 0x0

    .line 96
    if-eqz p2, :cond_0

    .line 101
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 99
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    goto :goto_0
.end method

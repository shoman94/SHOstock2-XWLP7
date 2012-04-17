.class Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton$3;
.super Ljava/lang/Object;
.source "TwGLItemDataButton.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->refreshButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(FFFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    #getter for: Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->access$800(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)Lcom/sec/android/glview/TwGLView$OnDragListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    #getter for: Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->access$900(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)Lcom/sec/android/glview/TwGLView$OnDragListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sec/android/glview/TwGLView$OnDragListener;->onDrag(FFFF)V

    .line 181
    :cond_0
    return-void
.end method

.method public onDragEnd(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    #getter for: Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)Lcom/sec/android/glview/TwGLView$OnDragListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    #getter for: Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->access$700(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)Lcom/sec/android/glview/TwGLView$OnDragListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/android/glview/TwGLView$OnDragListener;->onDragEnd(FF)V

    .line 175
    :cond_0
    return-void
.end method

.method public onDragStart(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    #getter for: Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)Lcom/sec/android/glview/TwGLView$OnDragListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton$3;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;

    #getter for: Lcom/sec/android/glview/TwGLView;->mOnDragListener:Lcom/sec/android/glview/TwGLView$OnDragListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLItemDataButton;)Lcom/sec/android/glview/TwGLView$OnDragListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/android/glview/TwGLView$OnDragListener;->onDragStart(FF)V

    .line 169
    :cond_0
    return-void
.end method

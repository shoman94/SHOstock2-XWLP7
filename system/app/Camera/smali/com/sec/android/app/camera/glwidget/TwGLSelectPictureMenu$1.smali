.class Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$1;
.super Ljava/lang/Object;
.source "TwGLSelectPictureMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sec/android/glview/TwGLView;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 117
    const/16 v0, 0x38

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;

    #getter for: Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->mGlParentView:Lcom/sec/android/glview/TwGLViewGroup;
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;)Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;

    #getter for: Lcom/sec/android/app/camera/MenuBase;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLSelectPictureMenu;)Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    .line 118
    return-void
.end method

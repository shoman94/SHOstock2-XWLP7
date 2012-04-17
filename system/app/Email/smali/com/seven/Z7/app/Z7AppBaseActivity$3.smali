.class Lcom/seven/Z7/app/Z7AppBaseActivity$3;
.super Ljava/lang/Object;
.source "Z7AppBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seven/Z7/app/Z7AppBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/seven/Z7/app/Z7AppBaseActivity;


# direct methods
.method constructor <init>(Lcom/seven/Z7/app/Z7AppBaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/seven/Z7/app/Z7AppBaseActivity$3;->this$0:Lcom/seven/Z7/app/Z7AppBaseActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/seven/Z7/app/Z7AppBaseActivity$3;->this$0:Lcom/seven/Z7/app/Z7AppBaseActivity;

    #calls: Lcom/seven/Z7/app/Z7AppBaseActivity;->showPopUpForConnectionFail()V
    invoke-static {v0}, Lcom/seven/Z7/app/Z7AppBaseActivity;->access$100(Lcom/seven/Z7/app/Z7AppBaseActivity;)V

    .line 145
    return-void
.end method

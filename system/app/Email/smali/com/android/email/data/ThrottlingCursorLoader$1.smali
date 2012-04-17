.class Lcom/android/email/data/ThrottlingCursorLoader$1;
.super Ljava/lang/Object;
.source "ThrottlingCursorLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/data/ThrottlingCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/data/ThrottlingCursorLoader;


# direct methods
.method constructor <init>(Lcom/android/email/data/ThrottlingCursorLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/email/data/ThrottlingCursorLoader$1;->this$0:Lcom/android/email/data/ThrottlingCursorLoader;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/email/data/ThrottlingCursorLoader$1;->this$0:Lcom/android/email/data/ThrottlingCursorLoader;

    #calls: Lcom/android/email/data/ThrottlingCursorLoader;->callSuperOnContentChanged()V
    invoke-static {v0}, Lcom/android/email/data/ThrottlingCursorLoader;->access$000(Lcom/android/email/data/ThrottlingCursorLoader;)V

    .line 52
    return-void
.end method

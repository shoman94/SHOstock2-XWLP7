.class Lcom/android/mms/ui/SlideView$3;
.super Ljava/lang/Object;
.source "SlideView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideView;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideView;)V
    .locals 0
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/mms/ui/SlideView$3;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const v2, 0x7f09011d

    const/4 v3, 0x0

    .line 281
    const/4 v0, -0x4

    if-ne p2, v0, :cond_0

    .line 282
    const-string v0, "Mms/SlideView"

    const-string v1, ">>MEDIA_ERROR_NOTSUPPORT<<"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$3;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/ui/SlideView;->access$600(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SlideView$3;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/SlideView;->access$700(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 309
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 286
    :cond_0
    const/16 v0, -0xa

    if-ne p2, v0, :cond_1

    .line 287
    const-string v0, "Mms/SlideView"

    const-string v1, ">>MEDIA_ERROR_CURRUPT<<"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$3;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/ui/SlideView;->access$800(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SlideView$3;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/SlideView;->access$900(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 291
    :cond_1
    const-string v0, "Mms/SlideView"

    const-string v1, ">>Unknown error<<"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/android/mms/ui/SlideView$3;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/ui/SlideView;->access$1000(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SlideView$3;->this$0:Lcom/android/mms/ui/SlideView;

    #getter for: Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/SlideView;->access$1100(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090159

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

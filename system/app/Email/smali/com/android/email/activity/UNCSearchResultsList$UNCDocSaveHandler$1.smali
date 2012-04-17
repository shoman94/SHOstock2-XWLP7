.class Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler$1;
.super Landroid/os/Handler;
.source "UNCSearchResultsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;->onLooperPrepared()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;


# direct methods
.method constructor <init>(Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 773
    iput-object p1, p0, Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler$1;->this$1:Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 776
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 777
    .local v0, attachmentId:J
    iget-object v2, p0, Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler$1;->this$1:Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;

    #calls: Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;->doFinishLoadAttachment(J)V
    invoke-static {v2, v0, v1}, Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;->access$1300(Lcom/android/email/activity/UNCSearchResultsList$UNCDocSaveHandler;J)V

    .line 778
    return-void
.end method

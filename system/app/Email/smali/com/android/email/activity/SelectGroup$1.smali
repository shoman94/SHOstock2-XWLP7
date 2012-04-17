.class Lcom/android/email/activity/SelectGroup$1;
.super Landroid/os/Handler;
.source "SelectGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/SelectGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/SelectGroup;


# direct methods
.method constructor <init>(Lcom/android/email/activity/SelectGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Lcom/android/email/activity/SelectGroup$1;->this$0:Lcom/android/email/activity/SelectGroup;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/email/activity/SelectGroup$1;->this$0:Lcom/android/email/activity/SelectGroup;

    invoke-virtual {v0}, Lcom/android/email/activity/SelectGroup;->onBackPressed()V

    .line 351
    return-void
.end method

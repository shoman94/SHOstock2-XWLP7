.class Lcom/android/email/activity/MessageViewForSeven$5;
.super Ljava/lang/Object;
.source "MessageViewForSeven.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageViewForSeven;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageViewForSeven;

.field final synthetic val$attachmentId:I


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageViewForSeven;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 876
    iput-object p1, p0, Lcom/android/email/activity/MessageViewForSeven$5;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    iput p2, p0, Lcom/android/email/activity/MessageViewForSeven$5;->val$attachmentId:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 878
    iget-object v0, p0, Lcom/android/email/activity/MessageViewForSeven$5;->this$0:Lcom/android/email/activity/MessageViewForSeven;

    iget v1, p0, Lcom/android/email/activity/MessageViewForSeven$5;->val$attachmentId:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageViewForSeven;->doFinishLoadAttachment(J)V

    .line 879
    return-void
.end method

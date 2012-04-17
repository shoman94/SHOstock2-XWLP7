.class Lcom/android/email/activity/UNCSearchResultsList$3;
.super Ljava/lang/Object;
.source "UNCSearchResultsList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/UNCSearchResultsList;->runOnUiThread(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/UNCSearchResultsList;

.field final synthetic val$duration:I

.field final synthetic val$resId:I


# direct methods
.method constructor <init>(Lcom/android/email/activity/UNCSearchResultsList;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1089
    iput-object p1, p0, Lcom/android/email/activity/UNCSearchResultsList$3;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    iput p2, p0, Lcom/android/email/activity/UNCSearchResultsList$3;->val$resId:I

    iput p3, p0, Lcom/android/email/activity/UNCSearchResultsList$3;->val$duration:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList$3;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    iget v1, p0, Lcom/android/email/activity/UNCSearchResultsList$3;->val$resId:I

    iget v2, p0, Lcom/android/email/activity/UNCSearchResultsList$3;->val$duration:I

    #calls: Lcom/android/email/activity/UNCSearchResultsList;->showToast(II)V
    invoke-static {v0, v1, v2}, Lcom/android/email/activity/UNCSearchResultsList;->access$1100(Lcom/android/email/activity/UNCSearchResultsList;II)V

    .line 1094
    return-void
.end method

.class Lcom/android/email/activity/UNCSearchResultsList$4;
.super Ljava/lang/Object;
.source "UNCSearchResultsList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/UNCSearchResultsList;->runOnUiThread(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/UNCSearchResultsList;

.field final synthetic val$duration:I

.field final synthetic val$str:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/email/activity/UNCSearchResultsList;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1100
    iput-object p1, p0, Lcom/android/email/activity/UNCSearchResultsList$4;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    iput-object p2, p0, Lcom/android/email/activity/UNCSearchResultsList$4;->val$str:Ljava/lang/String;

    iput p3, p0, Lcom/android/email/activity/UNCSearchResultsList$4;->val$duration:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList$4;->this$0:Lcom/android/email/activity/UNCSearchResultsList;

    iget-object v1, p0, Lcom/android/email/activity/UNCSearchResultsList$4;->val$str:Ljava/lang/String;

    iget v2, p0, Lcom/android/email/activity/UNCSearchResultsList$4;->val$duration:I

    #calls: Lcom/android/email/activity/UNCSearchResultsList;->showToast(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/android/email/activity/UNCSearchResultsList;->access$2100(Lcom/android/email/activity/UNCSearchResultsList;Ljava/lang/String;I)V

    .line 1105
    return-void
.end method

.class Lcom/android/email/MessagingController$22;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/MessagingController;->resetIdling(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/MessagingController;


# direct methods
.method constructor <init>(Lcom/android/email/MessagingController;)V
    .locals 0
    .parameter

    .prologue
    .line 5780
    iput-object p1, p0, Lcom/android/email/MessagingController$22;->this$0:Lcom/android/email/MessagingController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 5782
    iget-object v0, p0, Lcom/android/email/MessagingController$22;->this$0:Lcom/android/email/MessagingController;

    const-string v1, "resetIdling"

    new-instance v2, Lcom/android/email/MessagingController$22$1;

    invoke-direct {v2, p0}, Lcom/android/email/MessagingController$22$1;-><init>(Lcom/android/email/MessagingController$22;)V

    #calls: Lcom/android/email/MessagingController;->put(Ljava/lang/String;Ljava/lang/Runnable;)V
    invoke-static {v0, v1, v2}, Lcom/android/email/MessagingController;->access$1300(Lcom/android/email/MessagingController;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 5788
    return-void
.end method

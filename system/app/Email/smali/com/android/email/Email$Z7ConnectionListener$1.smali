.class Lcom/android/email/Email$Z7ConnectionListener$1;
.super Ljava/lang/Object;
.source "Email.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Email$Z7ConnectionListener;->callback(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Email$Z7ConnectionListener;

.field final synthetic val$b:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/android/email/Email$Z7ConnectionListener;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 795
    iput-object p1, p0, Lcom/android/email/Email$Z7ConnectionListener$1;->this$0:Lcom/android/email/Email$Z7ConnectionListener;

    iput-object p2, p0, Lcom/android/email/Email$Z7ConnectionListener$1;->val$b:Landroid/os/Bundle;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 797
    iget-object v0, p0, Lcom/android/email/Email$Z7ConnectionListener$1;->this$0:Lcom/android/email/Email$Z7ConnectionListener;

    iget-object v1, p0, Lcom/android/email/Email$Z7ConnectionListener$1;->val$b:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/email/Email$Z7ConnectionListener;->onCallback(Landroid/os/Bundle;)V

    .line 798
    return-void
.end method

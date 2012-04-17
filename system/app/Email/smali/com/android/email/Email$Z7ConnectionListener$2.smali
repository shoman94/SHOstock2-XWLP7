.class Lcom/android/email/Email$Z7ConnectionListener$2;
.super Ljava/lang/Object;
.source "Email.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Email$Z7ConnectionListener;->callback2(Lcom/seven/Z7/common/Z7ServiceCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Email$Z7ConnectionListener;

.field final synthetic val$callback:Lcom/seven/Z7/common/Z7ServiceCallback;


# direct methods
.method constructor <init>(Lcom/android/email/Email$Z7ConnectionListener;Lcom/seven/Z7/common/Z7ServiceCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 804
    iput-object p1, p0, Lcom/android/email/Email$Z7ConnectionListener$2;->this$0:Lcom/android/email/Email$Z7ConnectionListener;

    iput-object p2, p0, Lcom/android/email/Email$Z7ConnectionListener$2;->val$callback:Lcom/seven/Z7/common/Z7ServiceCallback;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 806
    iget-object v0, p0, Lcom/android/email/Email$Z7ConnectionListener$2;->this$0:Lcom/android/email/Email$Z7ConnectionListener;

    iget-object v1, p0, Lcom/android/email/Email$Z7ConnectionListener$2;->val$callback:Lcom/seven/Z7/common/Z7ServiceCallback;

    invoke-virtual {v0, v1}, Lcom/android/email/Email$Z7ConnectionListener;->onCallback(Lcom/seven/Z7/common/Z7ServiceCallback;)V

    .line 807
    return-void
.end method

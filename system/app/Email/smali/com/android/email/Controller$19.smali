.class Lcom/android/email/Controller$19;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Controller;->addUserAccount(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;

.field final synthetic val$endpointName:Ljava/lang/String;

.field final synthetic val$mType:I

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$serviceList:Ljava/util/List;

.field final synthetic val$userName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/email/Controller;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6673
    iput-object p1, p0, Lcom/android/email/Controller$19;->this$0:Lcom/android/email/Controller;

    iput p2, p0, Lcom/android/email/Controller$19;->val$mType:I

    iput-object p3, p0, Lcom/android/email/Controller$19;->val$endpointName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/email/Controller$19;->val$userName:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/email/Controller$19;->val$password:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/email/Controller$19;->val$serviceList:Ljava/util/List;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 6675
    iget v0, p0, Lcom/android/email/Controller$19;->val$mType:I

    invoke-static {v0}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(I)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/Controller$19;->val$endpointName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/email/Controller$19;->val$userName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/email/Controller$19;->val$password:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/email/Controller$19;->val$serviceList:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/adapter/ProtocolAdapter;->addUserAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 6677
    return-void
.end method

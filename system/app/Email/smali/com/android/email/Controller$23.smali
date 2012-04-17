.class Lcom/android/email/Controller$23;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Controller;->updateUserProfile(ILcom/android/email/syncnconnect/utils/SncProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;

.field final synthetic val$mType:I

.field final synthetic val$profileInfo:Lcom/android/email/syncnconnect/utils/SncProfile;


# direct methods
.method constructor <init>(Lcom/android/email/Controller;ILcom/android/email/syncnconnect/utils/SncProfile;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6907
    iput-object p1, p0, Lcom/android/email/Controller$23;->this$0:Lcom/android/email/Controller;

    iput p2, p0, Lcom/android/email/Controller$23;->val$mType:I

    iput-object p3, p0, Lcom/android/email/Controller$23;->val$profileInfo:Lcom/android/email/syncnconnect/utils/SncProfile;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 6909
    iget v0, p0, Lcom/android/email/Controller$23;->val$mType:I

    invoke-static {v0}, Lcom/android/email/adapter/ProtocolAdapter;->getProtocolAdapter(I)Lcom/android/email/adapter/ProtocolAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/Controller$23;->val$profileInfo:Lcom/android/email/syncnconnect/utils/SncProfile;

    invoke-virtual {v0, v1}, Lcom/android/email/adapter/ProtocolAdapter;->updateUserProfile(Lcom/android/email/syncnconnect/utils/SncProfile;)V

    .line 6910
    return-void
.end method

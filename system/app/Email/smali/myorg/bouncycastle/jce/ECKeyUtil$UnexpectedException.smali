.class Lmyorg/bouncycastle/jce/ECKeyUtil$UnexpectedException;
.super Ljava/lang/RuntimeException;
.source "ECKeyUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/ECKeyUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnexpectedException"
.end annotation


# instance fields
.field private cause:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .parameter "cause"

    .prologue
    .line 201
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 203
    iput-object p1, p0, Lmyorg/bouncycastle/jce/ECKeyUtil$UnexpectedException;->cause:Ljava/lang/Throwable;

    .line 204
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lmyorg/bouncycastle/jce/ECKeyUtil$UnexpectedException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

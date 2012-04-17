.class public abstract Ljavax/mail/Authenticator;
.super Ljava/lang/Object;
.source "Authenticator.java"


# instance fields
.field private requestingPort:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Ljavax/mail/Authenticator;->requestingPort:I

    return-void
.end method

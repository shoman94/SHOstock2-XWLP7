.class public abstract Ljavax/mail/search/SearchTerm;
.super Ljava/lang/Object;
.source "SearchTerm.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract match(Ljavax/mail/Message;)Z
.end method

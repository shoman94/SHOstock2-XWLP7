.class public abstract Lorg/apache/james/mime4j/message/AbstractBody;
.super Ljava/lang/Object;
.source "AbstractBody.java"

# interfaces
.implements Lorg/apache/james/mime4j/message/Body;


# instance fields
.field private parent:Lorg/apache/james/mime4j/message/Entity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/message/AbstractBody;->parent:Lorg/apache/james/mime4j/message/Entity;

    return-void
.end method


# virtual methods
.method public setParent(Lorg/apache/james/mime4j/message/Entity;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 42
    iput-object p1, p0, Lorg/apache/james/mime4j/message/AbstractBody;->parent:Lorg/apache/james/mime4j/message/Entity;

    .line 43
    return-void
.end method
